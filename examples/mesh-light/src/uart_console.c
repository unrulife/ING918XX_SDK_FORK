#include "uart_console.h"

#include "ingsoc.h"

#include <stdio.h>
#include <string.h>

#include "platform_api.h"
#include "mesh_storage_low_level.h"
#include "mesh_profile.h"

typedef void (*f_cmd_handler)(const char *param);

typedef struct
{
    const char *cmd;
    f_cmd_handler handler;
} cmd_t;

void print_addr(const uint8_t *addr)
{
    platform_printf("%02X:%02X:%02X:%02X:%02X:%02X\n", addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);
}

static char buffer[30] = {0};

static const char help[] =  "commands:\n"
                            "  h/?                   show this help\n"
                            "  reset                 system reset\n"
                            "  interval ddd          update connection interval to ddd\n"
                            "  scan_start ddd        start scan, interval=ddd, window=ddd\n"
                            "  scan_stop             stop scan\n"
                            "  name sss              set name to sss\n";

void cmd_help(const char *param)
{
    platform_printf(help);
}

/** reference formate.
 * if (sscanf(param, "%s", str) != 1) return;
 * if (sscanf(param, "%s %s", str1, str2) != 2) return;
 * if (sscanf(param, "%s %s %s", str1, str2, str3) != 3) return;
 * if (sscanf(param, "%d", &data) != 1) return;
 * if (sscanf(param, "%d %d", &data1, &data2) != 2) return;
 * if (sscanf(param, "%d %d %d", &data1, &data2, &data3) != 3) return;
 */

static void cmd_reset(const char *param)
{
    platform_reset();
}

static void cmd_name(const char *param)
{
    buffer[0] = '\0';
    if (sscanf(param, "%s", buffer) != 1) return;
    platform_printf("name[%d]:%s\n", strlen(buffer), buffer);
    mesh_storage_name_set((uint8_t *)buffer, strlen(buffer), 1);
}

#define USER_MSG_ID_SCAN_START          (0x50) // 
#define USER_MSG_ID_SCAN_STOP           (0x51) // 
#define USER_MSG_ID_UPDATE_CONN_PARAM   (0x52) // 

// conn update.
#define CPI_VAL_TO_MS(x)    ((uint16_t)(x * 5 / 4))
#define CPI_MS_TO_VAL(x)    ((uint16_t)(x * 4 / 5))
#define CPSTT_VAL_TO_MS(x)  ((uint16_t)(x * 10))
#define CPSTT_MS_TO_VAL(x)  ((uint16_t)(x / 10))

// uart msg handler.
void uart_cmd_msg_handler(btstack_user_msg_t * usrmsg){
    uint32_t cmd_id = usrmsg->msg_id;

    switch(cmd_id){
        case USER_MSG_ID_SCAN_START:
            {
                uint16_t scan_interval_window = usrmsg->len;
                mesh_scan_stop();
                mesh_scan_param_set(scan_interval_window, scan_interval_window);
                mesh_scan_start();
                platform_printf("scan start!\n");
            }
            break;
        case USER_MSG_ID_SCAN_STOP:
            {
                mesh_scan_stop();
                platform_printf("scan stop!\n");
            }
            break;
        case USER_MSG_ID_UPDATE_CONN_PARAM:
            {
                uint16_t interval_ms = usrmsg->len;
                gap_update_connection_parameters(   ble_get_curr_conn_handle(), \
                           CPI_MS_TO_VAL(interval_ms), CPI_MS_TO_VAL(interval_ms), \
                           0, CPSTT_MS_TO_VAL(5000), NULL, NULL);//slave can not change ce_len, use [ll_hint_on_ce_len] to set slave local ce_len

                platform_printf("update connect interval request!\n");
            }
            break;
    }
}


static void cmd_interval(const char *param)
{
    int interval_ms;
    if (sscanf(param, "%d", &interval_ms) != 1) return;
    platform_printf("interval: %dms\n", interval_ms);
    if(0xFFFF == ble_get_curr_conn_handle()){
        platform_printf("not connect.\n");
        return; // not connect.
    } 
    btstack_push_user_msg(USER_MSG_ID_UPDATE_CONN_PARAM, NULL, (uint16_t)interval_ms);
}

static void cmd_scan_start(const char *param)
{
    int scan_interval_window;
    if (sscanf(param, "%d", &scan_interval_window) != 1) return;
    platform_printf("scan_interval: %dms, scan_window: %dms\n", scan_interval_window, scan_interval_window);    
    btstack_push_user_msg(USER_MSG_ID_SCAN_START, NULL, (uint16_t)scan_interval_window);
}

static void cmd_scan_stop(const char *param)
{
    btstack_push_user_msg(USER_MSG_ID_SCAN_STOP, NULL, 0);
}

static cmd_t cmds[] =
{
    {
        .cmd = "h",
        .handler = cmd_help
    },
    {
        .cmd = "?",
        .handler = cmd_help
    },
    {
        .cmd = "reset",
        .handler = cmd_reset
    },
    {
        .cmd = "name",
        .handler = cmd_name
    },
    {
        .cmd = "interval",
        .handler = cmd_interval
    },
    {
        .cmd = "scan_start",
        .handler = cmd_scan_start
    },
    {
        .cmd = "scan_stop",
        .handler = cmd_scan_stop
    },
};

void handle_command(char *cmd_line)
{
    static const char unknow_cmd[] =  "unknown command\n";
    char *param = cmd_line;
    int i;
    while ((*param != ' ') && (*param != '\0')) param++;
    *param = '\0'; param++;
    
    for (i = 0; i < sizeof(cmds) / sizeof(cmds[0]); i++)
    {
        if (strcasecmp(cmds[i].cmd, cmd_line) == 0)
            break;
    }
    if (i >= sizeof(cmds) / sizeof(cmds[0]))
        goto show_help;   
    
    cmds[i].handler(param);
    return;

show_help:
    platform_printf(unknow_cmd);
    cmd_help(NULL);
}

typedef struct
{
    uint16_t size;
    char buf[512];
} str_buf_t;

str_buf_t input = {0};
str_buf_t output = {0};

static void append_data(str_buf_t *buf, const char *d, const uint16_t len)
{
    if (buf->size + len > sizeof(buf->buf))
        buf->size = 0;
    
    if (buf->size + len <= sizeof(buf->buf))
    {
        memcpy(buf->buf + buf->size, d, len);
        buf->size += len;
    }
}

void console_rx_data(const char *d, uint8_t len)
{
    if (0 == input.size)
    {
        while ((len > 0) && ((*d == '\r') || (*d == '\n')))
        {
            d++;
            len--;
        }
    }
    if (len == 0) return;
    
    append_data(&input, d, len);

    if ((input.size > 0) && 
        ((input.buf[input.size - 1] == '\r') || (input.buf[input.size - 1] == '\r')))
    {
        int16_t t = input.size - 2;
        while ((t > 0) && ((input.buf[t] == '\r') || (input.buf[t] == '\n'))) t--;
        input.buf[t + 1] = '\0';
        handle_command(input.buf);
        input.size = 0;
    }
}
