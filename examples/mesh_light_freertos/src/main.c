#include "ingsoc.h"
#include "platform_api.h"
#include "peripheral_pwm.h"
#include <stdio.h>
#include "trace.h"
#include "btstack_event.h"
#include "mesh_profile.h"
#include "rgb_led.h"
#include "BUTTON_TEST.h"

// #define ENABLE_RF_TX_RX //used to enable rf tx and rx.

#ifdef ENABLE_RF_TX_RX
#define PRINT_UART_BAUD     921600
#else
#define PRINT_UART_BAUD     115200
#endif
#define PRINT_UART          APB_UART0

// GPIO SELECT ----------------------------------------
#ifdef ENABLE_RF_TX_RX

#define RF_IO_TX_IND        GIO_GPIO_2 //RF tx
#define RF_IO_RX_IND        GIO_GPIO_6 //RF rx

#define USER_UART0_IO_TX    GIO_GPIO_0 //uart0 tx
#define USER_UART0_IO_RX    GIO_GPIO_9 //uart0 rx

#else

#define USER_UART0_IO_TX    GIO_GPIO_2 //uart0 tx
#define USER_UART0_IO_RX    GIO_GPIO_3 //uart0 rx

#endif


//-----------------------------------------------------


uint32_t cb_hard_fault(hard_fault_info_t *info, void *_)
{
    platform_printf("HARDFAULT:\nPC : 0x%08X\nLR : 0x%08X\nPSR: 0x%08X\n"
                    "R0 : 0x%08X\nR1 : 0x%08X\nR2 : 0x%08X\nP3 : 0x%08X\n"
                    "R12: 0x%08X\n",
                    info->pc, info->lr, info->psr,
                    info->r0, info->r1, info->r2, info->r3, info->r12);
    for (;;);
}

uint32_t cb_assertion(assertion_info_t *info, void *_)
{
    platform_printf("[ASSERTION] @ %s:%d\n",
                    info->file_name,
                    info->line_no);
    for (;;);
}

uint32_t cb_putc(char *c, void *dummy)
{
    while (apUART_Check_TXFIFO_FULL(PRINT_UART) == 1);
    UART_SendData(PRINT_UART, (uint8_t)*c);
    return 0;
}

int fputc(int ch, FILE *f)
{
   cb_putc((char *)&ch, NULL);
   return ch;
}

void __aeabi_assert(const char *a ,const char* b, int c)
{
    platform_printf("assert:%s,%s,%d\n", a, b, c);
    for (;;);
}


#ifdef ENABLE_RF_TX_RX

static void rf_tx_rx_gpio_init(void){

    PINCTRL_SetPadMux(RF_IO_TX_IND, IO_SOURCE_GENERAL);
    PINCTRL_SetPadPwmSel(RF_IO_TX_IND, 0);
    GIO_SetDirection(RF_IO_TX_IND, GIO_DIR_OUTPUT);
    GIO_WriteValue(RF_IO_TX_IND, 0);

    PINCTRL_SetPadMux(RF_IO_RX_IND, IO_SOURCE_GENERAL);
    PINCTRL_SetPadPwmSel(RF_IO_RX_IND, 0);
    GIO_SetDirection(RF_IO_RX_IND, GIO_DIR_OUTPUT);
    GIO_WriteValue(RF_IO_RX_IND, 0);

}

#define w32(a,b) *(volatile uint32_t*)(a) = (uint32_t)(b);
#define r32(a)   *(volatile uint32_t*)(a)

void set_gpio_2_6_for_rf_tx_rx(void)
{
    w32(0x4007005c, 0x82);
    w32(0x40070044, ((r32(0x40070044)) | (0xf<<8) | (0xf<<24)));
    w32(0x40090064, 0x400);
}

#else 

void set_gpio_2_6_for_rf_tx_rx(void)
{

}

#endif


static void uart_gpio_init(void){
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_UART0);
    SYSCTRL_ClearClkGateMulti(  (1 << SYSCTRL_ClkGate_APB_GPIO) | 
                                (1 << SYSCTRL_ClkGate_APB_PWM)  | 
                                (1 << SYSCTRL_ClkGate_APB_PinCtrl));
    
    PINCTRL_SetPadMux(USER_UART0_IO_RX, IO_SOURCE_GENERAL);
    PINCTRL_SetPadPwmSel(USER_UART0_IO_RX, 0);
    PINCTRL_SetPadMux(USER_UART0_IO_TX, IO_SOURCE_UART0_TXD);
    PINCTRL_Pull(USER_UART0_IO_RX, PINCTRL_PULL_UP);
    PINCTRL_SelUartRxdIn(UART_PORT_0, USER_UART0_IO_RX);
}

void config_uart(uint32_t freq, uint32_t baud)
{
    UART_sStateStruct UART_0;

    UART_0.word_length       = UART_WLEN_8_BITS;
    UART_0.parity            = UART_PARITY_NOT_CHECK;
    UART_0.fifo_enable       = 1;
    UART_0.two_stop_bits     = 0;   //used 2 stop bit ,    0
    UART_0.receive_en        = 1;
    UART_0.transmit_en       = 1;
    UART_0.UART_en           = 1;
    UART_0.cts_en            = 0;
    UART_0.rts_en            = 0;
    UART_0.rxfifo_waterlevel = 1;   //UART_FIFO_ONE_SECOND;
    UART_0.txfifo_waterlevel = 1;   //UART_FIFO_ONE_SECOND;
    UART_0.ClockFrequency    = freq;
    UART_0.BaudRate          = baud;

    apUART_Initialize(PRINT_UART, &UART_0, 0);
}




void setup_peripherals(void)
{
    uart_gpio_init();
    config_uart(OSC_CLK_FREQ, PRINT_UART_BAUD);
    
    setup_rgb_led();

    button_test_init();

#ifdef ENABLE_RF_TX_RX
    rf_tx_rx_gpio_init();
    set_gpio_2_6_for_rf_tx_rx(); // may fail.
#endif
}

trace_rtt_t trace_ctx = {0};
extern const gen_os_driver_t *os_impl_get_driver(void);
int app_main()
{
    // If there are *three* crystals on board, *uncomment* below line.
    // Otherwise, below line should be kept commented out.
    // platform_set_rf_clk_source(0);
    
    setup_peripherals();

    // setup putc handle
    platform_set_evt_callback(PLATFORM_CB_EVT_HARD_FAULT, (f_platform_evt_cb)cb_hard_fault, NULL);
    platform_set_evt_callback(PLATFORM_CB_EVT_ASSERTION, (f_platform_evt_cb)cb_assertion, NULL);
    platform_set_evt_callback(PLATFORM_CB_EVT_PUTC, (f_platform_evt_cb)cb_putc, NULL);

    platform_set_evt_callback(PLATFORM_CB_EVT_PROFILE_INIT, setup_profile, NULL);

    trace_rtt_init(&trace_ctx);
    platform_set_evt_callback(PLATFORM_CB_EVT_TRACE, (f_platform_evt_cb)cb_trace_rtt, &trace_ctx);
    platform_config(PLATFORM_CFG_TRACE_MASK, 0xfff);
    // platform_config(PLATFORM_CFG_LOG_HCI, PLATFORM_CFG_ENABLE);//enable hci log

    return (int)os_impl_get_driver();
}

