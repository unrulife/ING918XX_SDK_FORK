#include "uart_console.h"

#include "ingsoc.h"

#include <stdio.h>
#include <string.h>

#include "platform_api.h"
#include "mesh_storage_low_level.h"
#include "mesh_profile.h"
#include "app_config.h"
#include "adv_bearer.h"
#include "mesh.h"
#include "mesh_port_run_loop.h"

typedef void (*f_cmd_handler)(const char *param);

typedef struct
{
    const char *cmd;
    f_cmd_handler handler;
} cmd_t;

typedef struct
{
    uint32_t cnt;
    uint16_t interval_ms;
    uint16_t window_ms;
    uint16_t duration_ms;
} mesh_scan_control_t;
static mesh_scan_control_t scanParam;

void print_addr(const uint8_t *addr)
{
    platform_printf("%02X:%02X:%02X:%02X:%02X:%02X\n", addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);
}

static char buffer[30] = {0};

static const char help[] =  "commands:\n"
                            "  h/?                   show this help\n"
                            "  reset                 system reset\n"
                            "  rf_start              start rf tx rx test\n"
                            "  toggle_led x          toggle led x, x= a or b, a is gpio11, b is gpio10\n"
                            "  interval ddd          update connection interval to ddd\n"
                            "  scan_start ddd                           1. start scan, interval=ddd, window=ddd\n"
                            "  scan_stop                                2. stop scan\n"
                            "  scan_en [cnt,interval,window,duration]   3. scan enable once.\n"
                            "  adv_send               1. send non-conn adv data\n"
                            "  adv_auto [duty_ms]     2. auto send non-conn adv data, duty_ms is interval.\n"
                            "  adv_end                3. stop auto send non-conn adv data\n"
                            "  adv_set_role [master/slave]      1. set this mesh node to master node or slave node\n"
                            "  adv_test_stop                    2. stop master node send adv message to slave node\n"
                            "  adv_test_start [interval]        3. master node starts sending adv mesh message to slave node, the slave will send back. It will auto stop when master can't receive the response data.\n"
                            "  gatt_adv_start          1. gatt advertising start.\n"
                            "  gatt_adv_stop           2. gatt advertising stop.\n"
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
#define USER_MSG_ID_NON_ADV_SEND        (0x53) // 
#define USER_MSG_ID_GATT_ADV_START      (0x54) // 
#define USER_MSG_ID_GATT_ADV_STOP       (0x55) // 
#define USER_MSG_ID_SCAN_ENABLE         (0x56) // 

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
                mesh_scan_control_t *scan = (mesh_scan_control_t *)usrmsg->data;
                // mesh_scan_stop();
                mesh_scan_param_set(scan->interval_ms, scan->window_ms);
                mesh_duty_scan_start();
                platform_printf("scan start!\n");
            }
            break;
        case USER_MSG_ID_SCAN_STOP:
            {
                platform_printf("scan stop!\n");
                mesh_scan_stop();
            }
            break;
        case USER_MSG_ID_UPDATE_CONN_PARAM:
            {
                uint16_t interval_ms = usrmsg->len;
                ble_set_conn_interval_ms(interval_ms);
                platform_printf("update connect interval request!\n");
            }
            break;
        case USER_MSG_ID_NON_ADV_SEND:
            {
                platform_printf("non adv send!\n");
                static char tmpBuf[] = "1224354565454";
                adv_bearer_send_network_pdu((const uint8_t *)tmpBuf, strlen(tmpBuf), 3, 100);
            }
            break;
        case USER_MSG_ID_GATT_ADV_START:
            {
                platform_printf("gatt adv start!\n");
                mesh_proxy_start_gatt_advertising();
            }
            break;
        case USER_MSG_ID_GATT_ADV_STOP:
            {
                platform_printf("gatt adv stop!\n");
                mesh_proxy_stop_gatt_advertising();
            }
            break;
        case USER_MSG_ID_SCAN_ENABLE:
            {
                mesh_scan_control_t *scan = (mesh_scan_control_t *)usrmsg->data;
                platform_printf("SCAN ENABLE ONCE!\n");
                mesh_scan_stop();
                mesh_proxy_stop_gatt_advertising();
                mesh_scan_manual_control_start(scan->cnt, scan->interval_ms, scan->window_ms, scan->duration_ms);
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
    int param_len = sscanf(param, "%d %d", (int *)&scanParam.interval_ms, (int *)&scanParam.window_ms);
    if (param_len == 1){
        scanParam.window_ms = scanParam.interval_ms;
    } else if (param_len == 2){
    } else {
        cmd_help(NULL);
        return;
    }
    platform_printf("scan_interval: %dms, scan_window: %dms\n", scanParam.interval_ms, scanParam.window_ms); 
    btstack_push_user_msg(USER_MSG_ID_SCAN_START, &scanParam, 0);
}

static void cmd_scan_stop(const char *param)
{
    btstack_push_user_msg(USER_MSG_ID_SCAN_STOP, NULL, 0);
}

static void cmd_rf_start(const char *param)
{
#ifdef ENABLE_RF_TX_RX_TEST
    #include "RF_TEST.H"
    IngRfTest_btstack_ready();
    platform_printf("rf_start.\n");
    return;
#else
    platform_printf("not define ENABLE_RF_TX_RX_TEST \n");
#endif
}

static void cmd_adv_send(const char *param)
{
    btstack_push_user_msg(USER_MSG_ID_NON_ADV_SEND, NULL, 0);
}

extern void toggle_indicate_led_a(void);
extern void toggle_indicate_led_b(void);
static void cmd_toggle_led(const char *param)
{
    platform_printf("Toggle led.\n");
    memset(buffer, 0, sizeof(buffer));
    if (sscanf(param, "%s", buffer) != 1) return;    
    platform_printf("Toggle led %s.\n", buffer);
    if(buffer[0] == 'a'){
        toggle_indicate_led_a();
    } else {
        toggle_indicate_led_b();
    }
}


static void cmd_gatt_adv_start(const char *param)
{
    btstack_push_user_msg(USER_MSG_ID_GATT_ADV_START, NULL, 0);
}

static void cmd_gatt_adv_stop(const char *param)
{
    btstack_push_user_msg(USER_MSG_ID_GATT_ADV_STOP, NULL, 0);
}


static void cmd_scan_enable(const char *param){    
    if (sscanf(param, "%d %d %d %d", (int *)&scanParam.cnt, (int *)&scanParam.interval_ms, (int *)&scanParam.window_ms, (int *)&scanParam.duration_ms) != 4){
        scanParam.cnt = 3;
        scanParam.interval_ms = 20;
        scanParam.window_ms = 20;
        scanParam.duration_ms = 20;
    }
    platform_printf("cnt:%d, interval_ms:%d, window_ms:%d, duration_ms:%d\n", scanParam.cnt, scanParam.interval_ms, scanParam.window_ms, scanParam.duration_ms);
    btstack_push_user_msg(USER_MSG_ID_SCAN_ENABLE, &scanParam, 0);
}

#if 1
static uint8_t adv_auto_en_flag = 0;
static uint16_t adv_auto_duty_ms = 1000;
static mesh_timer_source_t adv_duty_timer;
static void adv_bearer_scan_adv_delay_timer_start(uint32_t time_ms);
static void adv_duty_timer_handler(void *context){
    btstack_push_user_msg(USER_MSG_ID_NON_ADV_SEND, NULL, 0);
    if(adv_auto_en_flag){
        adv_bearer_scan_adv_delay_timer_start(adv_auto_duty_ms);
    }
}
static void adv_bearer_scan_adv_delay_timer_start(uint32_t time_ms){
    mesh_run_loop_set_timer_handler(&adv_duty_timer, (mesh_func_timer_process)&adv_duty_timer_handler);
    mesh_run_loop_set_timer(&adv_duty_timer, time_ms);
    mesh_run_loop_add_timer(&adv_duty_timer);
}

static void adv_auto_callback(void *data, uint16_t len){
    adv_bearer_scan_adv_delay_timer_start(adv_auto_duty_ms);
}

static void cmd_adv_auto(const char *param)
{
    if(sscanf(param, "%d", (int *)&adv_auto_duty_ms) != 1){
        adv_auto_duty_ms = 1000;
    }
    platform_printf("auto send duty: %dms\n", adv_auto_duty_ms);
    adv_auto_en_flag = 1;
    btstack_push_user_runnable(&adv_auto_callback, NULL, 0);
}

static void cmd_adv_end(const char *param)
{
    adv_auto_en_flag = 0;
}
#endif


#if 1
// role.
enum{
    ADV_TEST_ROLE_UNDEFINE,
    ADV_TEST_ROLE_MASTER,
    ADV_TEST_ROLE_SLAVE,
};

// state.
enum{
    ADV_TEST_STATE_IDLE,
    ADV_TEST_STATE_SEND_REQ,
    ADV_TEST_STATE_SEND_OK,
    ADV_TEST_STATE_WAIT_STARTED,
    ADV_TEST_STATE_WAIT_STOPPED,
    ADV_TEST_STATE_CALC_RESULT,
};

typedef struct{
    uint8_t state;
    uint8_t role;
    uint8_t en_flag;
    uint16_t wait_ms;
    mesh_timer_source_t wait_timer;
    uint8_t send[32];
    uint8_t send_len;
    uint8_t send_cnt;
    uint8_t recv_cnt;
    uint8_t recv_ok;
    uint32_t test_cnt;
} adv_test_t;

adv_test_t adv_test;

static void adv_test_send_data(void);
static void adv_test_wait_timer_handler(void *context);
static void adv_test_wait_timer_start(uint32_t time_ms);
static void adv_test_init(void);


static int adv_test_check_recv(void){
    if (adv_test.recv_ok != 1){
        return -1;
    }
    return 0;
}

static void adv_test_wait_timer_handler(void *context){
    // check recv.
    if (-1 == adv_test_check_recv()){
        platform_printf("recv error, stopped!!!\n");
        return;
    }

    // calc count.
    adv_test.test_cnt++;
    platform_printf("test_cnt:%d\n", adv_test.test_cnt);

    // send next.
    adv_test_send_data();
}

static void adv_test_wait_timer_start(uint32_t time_ms){
    mesh_run_loop_set_timer_handler(&adv_test.wait_timer, (mesh_func_timer_process)&adv_test_wait_timer_handler);
    mesh_run_loop_set_timer(&adv_test.wait_timer, time_ms);
    mesh_run_loop_add_timer(&adv_test.wait_timer);
}

static void cmd_adv_set_role(const char *param)
{
    if (sscanf(param, "%s", buffer) != 1) return;
    if (memcmp(buffer, "master", 6) == 0){
        adv_test.role = ADV_TEST_ROLE_MASTER;
        platform_printf("role: master\n");
        adv_test_init();
    } else if (memcmp(buffer, "slave", 5) == 0){
        adv_test.role = ADV_TEST_ROLE_SLAVE;
        platform_printf("role: slave\n");
        adv_test_init();
    } else {
        adv_test.role = ADV_TEST_ROLE_UNDEFINE;
        platform_printf("role: undefine\n");
    }
}

static void adv_test_callback(void *data, uint16_t len){
    adv_test_send_data();
}

static void cmd_adv_test_start(const char *param)
{
    if (adv_test.role != ADV_TEST_ROLE_MASTER){
        platform_printf("not master, return!!!\n");
        return;
    }

    if(sscanf(param, "%d", (int *)&adv_test.wait_ms) != 1){
        adv_test.wait_ms = 2000; //default 1s interval.
    }
    platform_printf("wait: %dms\n", adv_test.wait_ms);

    adv_test.en_flag = 1;
    adv_test.test_cnt = 0; //clear.
    btstack_push_user_runnable(&adv_test_callback, NULL, 0);
}
static void cmd_adv_test_stop(const char *param)
{
    adv_test.en_flag = 0;
}

#define HEAD_0  0x19 //can't be (adv_test.send_len-1 = 25), or meshlib will care it.
#define HEAD_1  0x32 //can't be 0x29,0x2A,0x2B
extern void adv_bearer_send_test_pdu(uint8_t adv_len, uint8_t adv_type, const uint8_t * data, uint16_t data_len, uint8_t count, uint16_t interval);

static void adv_test_init(void){
    char tmpBuf[] = "123456789012345678901234";
    adv_test.send[0] = HEAD_0;
    adv_test.send[1] = HEAD_1;
    memcpy(&adv_test.send[2], (char *)tmpBuf, strlen(tmpBuf));
    adv_test.send_len = strlen(tmpBuf) + 2;
    adv_test.send_cnt = 3;
}

static void adv_test_send_data(void){
    if(adv_test.en_flag && adv_test.role == ADV_TEST_ROLE_MASTER){

        adv_test.recv_ok = 0;  // clear
        adv_test.recv_cnt = 0; // clear.
        adv_test.send[3]++;    // different data.

        printf("send_data(cnt=%d)[%d]: ", adv_test.send_cnt, adv_test.send_len);
        printf_hexdump(adv_test.send, adv_test.send_len);

        adv_bearer_send_test_pdu(HEAD_0, HEAD_1, (const uint8_t *)&adv_test.send[2], adv_test.send_len-2, adv_test.send_cnt, 100);
        adv_test_wait_timer_start(adv_test.wait_ms);
    }
}

void adv_test_recv_non_conn_report(const le_ext_adv_report_t * report){
    // master recv.
    if (adv_test.role == ADV_TEST_ROLE_MASTER){
        if(report->data_len != adv_test.send_len) return;
        if(report->data[1] != HEAD_1) return;

        if(memcmp(adv_test.send, report->data, adv_test.send_len) == 0){
            adv_test.recv_cnt ++;
        }

        // filter same.
        static uint8_t cache = 0;
        if(cache == report->data[3]) return;
        cache = report->data[3];

        printf("master recv(cnt=%d)[%d]: ", adv_test.recv_cnt, report->data_len);
        printf_hexdump(report->data, report->data_len);

        if(report->data[3] == adv_test.send[3]){
            adv_test.recv_ok = 1;
        }
    }

    // slave recv.
    if (adv_test.role == ADV_TEST_ROLE_SLAVE){
        if(report->data_len != adv_test.send_len) return;
        if(report->data[1] != HEAD_1) return;

        adv_test.recv_cnt ++;

        // filter same.
        static uint8_t cache = 0;
        if(cache == report->data[3]) return;
        cache = report->data[3];

        // print
        printf("slave recv(cnt=%d)[%d]: ", adv_test.recv_cnt, report->data_len);
        printf_hexdump(report->data, report->data_len);

        // send rsp.
        adv_bearer_send_test_pdu(HEAD_0, HEAD_1, (const uint8_t *)&report->data[2], report->data_len-2, adv_test.send_cnt, 100);
        adv_test.recv_cnt = 0;
    }
}
#endif

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
    {
        .cmd = "rf_start",
        .handler = cmd_rf_start
    },
    {
        .cmd = "adv_send",
        .handler = cmd_adv_send
    },
    {
        .cmd = "toggle_led",
        .handler = cmd_toggle_led
    },
    {
        .cmd = "gatt_adv_start",
        .handler = cmd_gatt_adv_start
    },
    {
        .cmd = "gatt_adv_stop",
        .handler = cmd_gatt_adv_stop
    },
    {
        .cmd = "scan_en",
        .handler = cmd_scan_enable
    },
    {
        .cmd = "adv_auto",
        .handler = cmd_adv_auto
    },
    {
        .cmd = "adv_end",
        .handler = cmd_adv_end
    },
    {
        .cmd = "adv_set_role",
        .handler = cmd_adv_set_role
    },
    {
        .cmd = "adv_test_start",
        .handler = cmd_adv_test_start
    },
    {
        .cmd = "adv_test_stop",
        .handler = cmd_adv_test_stop
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
