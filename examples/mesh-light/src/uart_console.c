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
#include "ble_status.h"

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
                            "  toggle_led x          toggle led x, x= a or b, a is gpio11, b is gpio10, c is gpio12\n"
                            "  interval ddd          update connection interval to ddd\n"
                            "  scan_start ddd                           1. start scan, interval=ddd, window=ddd\n"
                            "  scan_stop                                2. stop scan\n"
                            "  scan_en [cnt,interval,window,duration]   3. scan enable once.\n"
                            "  adv_send                          1. send non-conn adv data\n"
                            "  adv_auto [duty_ms] [total_cnt]    2. auto send non-conn adv data, duty_ms is interval. total_cnt is the total count before stop.(0=always)\n"
                            "  adv_end                           3. stop auto send non-conn adv data\n"
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

static void name_set_callback(void *data, uint16_t len){
    mesh_storage_name_set((uint8_t *)buffer, strlen(buffer), 1);
}
static void cmd_name(const char *param)
{
    buffer[0] = '\0';
    if (sscanf(param, "%s", buffer) != 1) return;
    platform_printf("name[%d]:%s\n", strlen(buffer), buffer);
    btstack_push_user_runnable(&name_set_callback, NULL, 0);
}

// conn update.
#define CPI_VAL_TO_MS(x)    ((uint16_t)(x * 5 / 4))
#define CPI_MS_TO_VAL(x)    ((uint16_t)(x * 4 / 5))
#define CPSTT_VAL_TO_MS(x)  ((uint16_t)(x * 10))
#define CPSTT_MS_TO_VAL(x)  ((uint16_t)(x / 10))

static void conn_interval_callback(void *data, uint16_t len){
    uint16_t interval_ms = len;
    mesh_profile_conn_interval_update_ms(interval_ms);
    platform_printf("update connect interval request!\n");
}

static void cmd_interval(const char *param)
{
    int interval_ms;
    if (sscanf(param, "%d", &interval_ms) != 1) return;
    platform_printf("interval: %dms\n", interval_ms);
    if(BLE_CONN_HANDLE_INVALID == ble_status_connection_handle_get()){
        platform_printf("not connect.\n");
        return; // not connect.
    } 
    btstack_push_user_runnable(&conn_interval_callback, NULL, (uint16_t)interval_ms);
}

static void scan_start_callback(void *data, uint16_t len){
    mesh_scan_control_t *scan = (mesh_scan_control_t *)data;
    mesh_profile_scan_param_set(scan->interval_ms, scan->window_ms);
    mesh_profile_scan_duty_start();
    platform_printf("scan start!\n");
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
    btstack_push_user_runnable(&scan_start_callback, &scanParam, 0);
}

static void scan_stop_callback(void *data, uint16_t len){
    platform_printf("scan stop!\n");
    mesh_profile_scan_stop();
}

static void cmd_scan_stop(const char *param)
{
    btstack_push_user_runnable(&scan_stop_callback, NULL, 0);
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

static void non_conn_adv_send_callback(void *data, uint16_t len){
    platform_printf("non adv send!\n");
    static char tmpBuf[] = "123456789123456789123456789";
    adv_bearer_send_network_pdu((const uint8_t *)tmpBuf, strlen(tmpBuf), 3, 100);
}

static void cmd_adv_send(const char *param)
{
    btstack_push_user_runnable(&non_conn_adv_send_callback, NULL, 0);
}

extern void toggle_TEST_GPO_12(void);
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
    } else if(buffer[0] == 'b'){
        toggle_indicate_led_b();
    } else if(buffer[0] == 'c'){
        toggle_TEST_GPO_12();
    } else {
        platform_printf("not find.\n");
    }
}

static void gatt_adv_start_callback(void *data, uint16_t len){
    platform_printf("gatt adv start!\n");
    mesh_proxy_start_gatt_advertising();
}

static void cmd_gatt_adv_start(const char *param)
{
    btstack_push_user_runnable(&gatt_adv_start_callback, NULL, 0);
}

static void gatt_adv_stop_callback(void *data, uint16_t len){
    platform_printf("gatt adv stop!\n");
    mesh_proxy_stop_gatt_advertising();
}

static void cmd_gatt_adv_stop(const char *param)
{
    btstack_push_user_runnable(&gatt_adv_stop_callback, NULL, 0);
}


#if 1
static uint8_t adv_auto_en_flag = 0;
static uint16_t adv_auto_duty_ms = 1000;
// static uint32_t adv_auto_total_cnt = 10;
// static uint32_t adv_auto_curr_cnt = 0;
static mesh_timer_source_t adv_duty_timer;
static void adv_bearer_scan_adv_delay_timer_start(uint32_t time_ms);

void adv_bearer_send_complete_callback(uint8_t error){
    if(error){
        // error:stop.
        adv_auto_en_flag = 0;
    } else {
        // success:continue.
        if(adv_auto_en_flag)
            adv_bearer_scan_adv_delay_timer_start(adv_auto_duty_ms);
    }
}

static uint8_t flag = 0;
extern void set_rgb_led_color(uint8_t r, uint8_t g, uint8_t b);
static void adv_duty_timer_handler(void *context){
    btstack_push_user_runnable(&non_conn_adv_send_callback, NULL, 0);
    
    if(flag){
        flag = 0;
    } else {
        flag = 1;
    }
    set_rgb_led_color(flag, flag, flag);
    
    // // calc.
    // if (adv_auto_total_cnt != 0){
    //     adv_auto_curr_cnt++;
    //     platform_printf("auto send cnt:%d\n", adv_auto_curr_cnt);
    //     if (adv_auto_curr_cnt >= adv_auto_total_cnt){
    //         adv_auto_en_flag = 0; //stop
    //         platform_printf("auto send complete:%d\n", adv_auto_total_cnt);
    //     }
    // }
    
    // if(adv_auto_en_flag){
    //     adv_bearer_scan_adv_delay_timer_start(adv_auto_duty_ms);
    // }
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
    // int ret = sscanf(param, "%d %d", (int *)&adv_auto_duty_ms, (int *)&adv_auto_total_cnt);
    
    // if(ret == 1){
    //     adv_auto_total_cnt = 0; //always. 
    // } else if(ret ==2){
    //     //do nothing.
    // } else {
    //     adv_auto_duty_ms = 1000;
    //     adv_auto_total_cnt = 0; //always.
    // }
    // adv_auto_curr_cnt = 0;
    // platform_printf("auto send duty: %dms, total_cnt:%d(0=always)\n", adv_auto_duty_ms, adv_auto_total_cnt);
    adv_auto_duty_ms = 500;
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
    uint16_t send_interval;
    uint8_t recv_cnt;
    uint8_t recv_ok;
    uint32_t test_cnt;
} adv_test_t;

adv_test_t adv_test;

static void adv_test_send_data(void);
static void adv_test_wait_timer_handler(void *context);
static void adv_test_wait_timer_start(uint32_t time_ms);
static void adv_test_init(uint8_t role);


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
        adv_test_init(adv_test.role);
    } else if (memcmp(buffer, "slave", 5) == 0){
        adv_test.role = ADV_TEST_ROLE_SLAVE;
        platform_printf("role: slave\n");
        adv_test_init(adv_test.role);
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


static void setup_adv_callback(void *data, uint16_t len){
    if (memcmp(buffer, "param", 5) == 0){
        platform_printf("adv set params.\n");
        bd_addr_t null_addr;
        memset(null_addr, 0, 6);
        mesh_profile_adv_proxy_set_params(  0x30, 
                                    0x30, 
                                    CONNECTABLE_ADV_BIT | SCANNABLE_ADV_BIT | LEGACY_PDU_BIT, 
                                    BD_ADDR_TYPE_LE_PUBLIC, 
                                    null_addr, 
                                    PRIMARY_ADV_ALL_CHANNELS, 
                                    ADV_FILTER_ALLOW_ALL);
    } else if (memcmp(buffer, "data", 4) == 0){
        platform_printf("adv set data.\n");
        uint8_t data[] = {0x02 ,0x01 ,0x06 ,0x03 ,0x03 ,0x27 ,0x18 ,0x15 ,0x16 ,0x27 ,0x18 ,0x3D ,0x4C ,0x1A ,0xBD \
        ,0x15 ,0x9E ,0x37 ,0xCC ,0x5D ,0x26 ,0x01 ,0xF8 ,0x5C ,0x7B ,0xA5 ,0xEB ,0x00 ,0x00};
        mesh_profile_adv_proxy_set_data(sizeof(data), data);

    } else if (memcmp(buffer, "rsp", 3) == 0){
        platform_printf("adv set scan_rsp.\n");
        uint8_t data[] = {0x07 ,0x09 ,0x62 ,0x6F ,0x61 ,0x72 ,0x64 ,0x31};
        mesh_profile_adv_proxy_set_scan_rsp_data(sizeof(data), data);

    } else if (memcmp(buffer, "en", 2) == 0){
        platform_printf("adv enable.\n");
        mesh_profile_adv_proxy_enable(1);

    } else if (memcmp(buffer, "dis", 3) == 0){
        platform_printf("adv disable.\n");
        mesh_profile_adv_proxy_enable(0);

    } else if (memcmp(buffer, "bearer_param", 12) == 0){
        platform_printf("bearer_param.\n");
        bd_addr_t null_addr;
        memset(null_addr, 0, 6);
        mesh_profile_adv_pb_set_params( 0x30, 
                                0x30, 
                                LEGACY_PDU_BIT, 
                                BD_ADDR_TYPE_LE_PUBLIC, 
                                null_addr, 
                                PRIMARY_ADV_ALL_CHANNELS, 
                                ADV_FILTER_ALLOW_ALL);

    } else {
        platform_printf("unknow.\n");
    }
}

static void cmd_setup_adv(const char *param){
    if (sscanf(param, "%s", buffer) != 1) return;
    btstack_push_user_runnable(&setup_adv_callback, NULL, 0);
}

#define ADV_MASTER_SEND_COUNT   3
#define ADV_MASTER_SEND_INTERVAL_MS     100

#define ADV_SLAVE_SEND_COUNT    5
#define ADV_SLAVE_SEND_INTERVAL_MS      50

#define HEAD_0  0x19 //can't be (adv_test.send_len-1 = 25), or meshlib will care it.
#define HEAD_1  0x32 //can't be 0x29,0x2A,0x2B
extern void adv_bearer_send_test_pdu(uint8_t adv_len, uint8_t adv_type, const uint8_t * data, uint16_t data_len, uint8_t count, uint16_t interval);
extern void meshlib_adv_report_set(uint8_t en);
static void adv_test_init(uint8_t role){
    char tmpBuf[] = "123456789012345678901234";
    adv_test.send[0] = HEAD_0;
    adv_test.send[1] = HEAD_1;
    memcpy(&adv_test.send[2], (char *)tmpBuf, strlen(tmpBuf));
    adv_test.send_len = strlen(tmpBuf) + 2;
    if(role == ADV_TEST_ROLE_MASTER){
        adv_test.send_cnt = ADV_MASTER_SEND_COUNT;
    } else {
        adv_test.send_cnt = ADV_SLAVE_SEND_COUNT;
    }
#ifdef ENABLE_ADV_SEND_RECV_DEBUG
    meshlib_adv_report_set(0); //close processing of HCI_SUBEVENT_LE_EXTENDED_ADVERTISING_REPORT in meshlib.
#endif
}

static void adv_test_send_data(void){
    if(adv_test.en_flag && adv_test.role == ADV_TEST_ROLE_MASTER){

        adv_test.recv_ok = 0;  // clear
        adv_test.recv_cnt = 0; // clear.
        adv_test.send[3]++;    // different data.

        printf("master send_data(cnt=%d)[%d]: ", adv_test.send_cnt, adv_test.send_len);
        printf_hexdump(adv_test.send, 4);//adv_test.send_len);

        adv_bearer_send_test_pdu(HEAD_0, HEAD_1, (const uint8_t *)&adv_test.send[2], adv_test.send_len-2, adv_test.send_cnt, ADV_MASTER_SEND_INTERVAL_MS);
        adv_test_wait_timer_start(adv_test.wait_ms);
    }
}

uint8_t adv_test_recv_non_conn_report(const le_ext_adv_report_t * report){
    // master recv.
    if (adv_test.role == ADV_TEST_ROLE_MASTER){
        if(report->data_len != adv_test.send_len) return 1;
        if(report->data[1] != HEAD_1) return 1;

        if(memcmp(adv_test.send, report->data, adv_test.send_len) == 0){
            adv_test.recv_cnt ++;
        }

        // filter same.
        static uint8_t cache = 0;
        if(cache == report->data[3]) return 1;
        cache = report->data[3];

        printf("##master recv(cnt=%d)[%d]: ", adv_test.recv_cnt, report->data_len);
        printf_hexdump(report->data, 4);//report->data_len);

        if(report->data[3] == adv_test.send[3]){
            adv_test.recv_ok = 1;
        }
    }

    // slave recv.
    if (adv_test.role == ADV_TEST_ROLE_SLAVE){
        if(report->data_len != adv_test.send_len) return 1;
        if(report->data[1] != HEAD_1) return 1;

        adv_test.recv_cnt ++;

        // filter same.
        static uint8_t cache = 0;
        if(cache == report->data[3]) return 1;
        cache = report->data[3];

        // print
        printf("slave recv(cnt=%d)[%d]: ", adv_test.recv_cnt, report->data_len);
        printf_hexdump(report->data, 4);//report->data_len);

        // send rsp.
        adv_bearer_send_test_pdu(HEAD_0, HEAD_1, (const uint8_t *)&report->data[2], report->data_len-2, adv_test.send_cnt, ADV_SLAVE_SEND_INTERVAL_MS);
        adv_test.recv_cnt = 0;
    }
    
    return 1;
}
#endif


// extern void mesh_flash_test_init(void);;
// extern void mesh_flash_test_storage(void);
// extern void mesh_flash_test_migrate(void);

static void flash_test_callback(void *data, uint16_t len){
    if (memcmp(buffer, "s", 1) == 0){
        platform_printf("storage.\n");
        // mesh_flash_test_storage();
    } else if (memcmp(buffer, "m", 1) == 0){
        platform_printf("migrate.\n");
        // mesh_flash_test_migrate();
    } else {
        platform_printf("unknow.\n");
        // mesh_flash_test_init();
    }
}

static void cmd_flash_test(const char *param){
    if (sscanf(param, "%s", buffer) != 1) return;
    btstack_push_user_runnable(&flash_test_callback, NULL, 0);
}

extern int adv_bearer_test_tick_get(uint32_t *tick);
extern uint8_t mesh_adv_bearer_each_cnt_get(void);
static void cmd_ble_status(const char *param){
    platform_printf("ble status:\n");
    platform_printf("provisioned? : %s\n", mesh_is_provisioned()? "yes":"no");
    platform_printf("conn_state= %s\n", ble_status_connection_state_get()? "connected!":"disconnected!");
    platform_printf("scan_state= %s\n", ble_status_scan_state_get()? "scanning": "stopped");
    platform_printf("adv_bearer_each_cnt= %d\n", mesh_adv_bearer_each_cnt_get());
    if (ble_status_connection_state_get()){
        platform_printf("conn_handle= 0x%x\n", ble_status_connection_handle_get());
        platform_printf("conn_interval= %dms\n", ble_status_connection_interval_get());
    }
    int size = adv_bearer_test_tick_get(NULL);
    uint32_t tick[6];
    if(size > sizeof(tick)){
        platform_printf("size error.\n");
    } else {
        adv_bearer_test_tick_get(tick);
        platform_printf("tick: %dms, %dms, %dms\n", tick[0], tick[1], tick[2]);
        platform_printf("duration: (2-0)%dms\n", (tick[2]-tick[0]));
    }
}

uint32_t mesh_on_off_test_cnt = 0;
void mesh_on_off_led_callback(uint8_t on_off){
    if(mesh_on_off_test_cnt == 0xffffffff){
        platform_printf("Already max, return.\n");
        return;
    }
    mesh_on_off_test_cnt++;
    platform_printf("on_off:%d, cnt: %d\n", on_off, mesh_on_off_test_cnt);
}
static void cmd_mesh_cnt(const char *param){
    if ((sscanf(param, "%s", buffer) == 1) && (memcmp(buffer, "c", 1) == 0)){
        // clear cnt.
        mesh_on_off_test_cnt = 0;
        platform_printf("Clear, mesh_on_off_test_cnt = %d\n", mesh_on_off_test_cnt);
    } else {
        platform_printf("Read, mesh_on_off_test_cnt = %d\n", mesh_on_off_test_cnt);
    }
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
    {
        .cmd = "setup_adv",
        .handler = cmd_setup_adv
    },
    {
        .cmd = "flash_test",
        .handler = cmd_flash_test
    },
    {
        .cmd = "ble_status",
        .handler = cmd_ble_status
    },
    {
        .cmd = "mesh_cnt",
        .handler = cmd_mesh_cnt
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
        memset(input.buf, 0, sizeof(input.buf));
    }
}
