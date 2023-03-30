
/*
** COPYRIGHT (c) 2022 by INGCHIPS
*/

#include <stdio.h>
#include <string.h>

#include "ingsoc.h"
#include "platform_api.h"
#include "main.h"
#include "lin_phy.h"
#include "lin_driver.h"

#if defined __cplusplus
    extern "C" {
#endif

#define LIN_BAUD_RATE 19200
#define LIN_BREAK_FIELD_LEN 13

#define USER_UART1_IO_TX GIO_GPIO_16
#define USER_UART1_IO_RX GIO_GPIO_19
#define USER_UART1_IO_RTS GIO_GPIO_15
#define USER_UART1_IO_CTS GIO_GPIO_7

static uint8_t lin_phy_rx_data_buf[1 + 8 + 1] = {0};
static uint8_t lin_phy_tx_data_buf[1 + 8 + 1] = {0};

static uint32_t lpuart_status = 0;
static uint32_t lpuart_interrupt = 0;
static uint8_t lpuart_rx_data;

static void set_reg_bits(volatile uint32_t *reg, uint32_t v, uint8_t bit_width, uint8_t bit_offset)
{
    uint32_t mask = ((1 << bit_width) - 1) << bit_offset;
    *reg = (*reg & ~mask) | (v << bit_offset);
}

static void set_reg_bit(volatile uint32_t *reg, uint8_t v, uint8_t bit_offset)
{
    uint32_t mask = 1 << bit_offset;
    *reg = (*reg & ~mask) | (v << bit_offset);
}

void sdk_config_uart(UART_TypeDef* port, uint32_t freq, uint32_t baud, uint32_t int_en)
{
    UART_sStateStruct config;

    config.word_length       = UART_WLEN_8_BITS;
    config.parity            = UART_PARITY_NOT_CHECK;
    config.fifo_enable       = 1;
    config.two_stop_bits     = 0;
    config.receive_en        = 1;
    config.transmit_en       = 1;
    config.UART_en           = 1;
    config.cts_en            = 0;
    config.rts_en            = 0;
    config.rxfifo_waterlevel = 1;
    config.txfifo_waterlevel = 0;
    config.ClockFrequency    = freq;
    config.BaudRate          = baud;

    apUART_Initialize(port, &config, int_en);

    return;
}

typedef enum {
    LIN_PHY_FRAME_STATE_IDLE = 0,
    LIN_PHY_FRAME_STATE_RX_BREAK,
    LIN_PHY_FRAME_STATE_RX_SYNC,
    LIN_PHY_FRAME_STATE_RX_PID,
    LIN_PHY_FRAME_STATE_RX_END
} lin_phy_frame_state_t;

static void uart1_recv_data(void)
{
    uint32_t reg_data;
    static lin_phy_frame_state_t state_mechane = LIN_PHY_FRAME_STATE_IDLE;
    while (apUART_Check_RXFIFO_EMPTY(APB_UART1) != 1) {
        reg_data = APB_UART1->DataRead;
        //reg_data = 0x500;
        lpuart_rx_data = reg_data & 0xFF;
        //temp_printf("%02x,%02x\r\n",reg_data,lpuart_rx_data);

        set_reg_bit(&lpuart_status, 1, LPUART_RX_DATA_REG_FULL);
        if (reg_data == 0x500) {
            state_mechane = LIN_PHY_FRAME_STATE_RX_BREAK;
            set_reg_bit(&lpuart_status, 1, LPUART_LIN_BREAK_DETECT);
            //temp_printf("break1\r\n");
            continue;
        }
        switch (state_mechane) {
        case LIN_PHY_FRAME_STATE_IDLE: {
            if (reg_data == 0x500) {
                state_mechane = LIN_PHY_FRAME_STATE_RX_BREAK;
                //temp_printf("break2\r\n");
            } else {
                state_mechane = LIN_PHY_FRAME_STATE_IDLE;
            }
            break;
        }
        case LIN_PHY_FRAME_STATE_RX_BREAK: {
            if (lpuart_rx_data == 0x55) {
                state_mechane = LIN_PHY_FRAME_STATE_RX_SYNC;
                //temp_printf("sync\r\n");
            } else {
                state_mechane = LIN_PHY_FRAME_STATE_IDLE;
            }
            break;
        }
        case LIN_PHY_FRAME_STATE_RX_SYNC: {
            uint8_t id = lpuart_rx_data & 0x3F;
            uint8_t pid = lpuart_rx_data & 0xFF;
            uint8_t p0 = (lpuart_rx_data >> 6) & 0x1;
            uint8_t p1 = (lpuart_rx_data >> 7) & 0x1;
            uint8_t cp0 = (id & 0x1) ^ ((id >> 1) & 0x1) ^ ((id >> 2) & 0x1) ^ ((id >> 4) & 0x1);
            uint8_t cp1 = ! (((id >> 1) & 0x1) ^ ((id >> 3) & 0x1) ^ ((id >> 4) & 0x1) ^ ((id >> 5) & 0x1));
            if ((p0 == cp0) && (p1 == cp1)) {
                state_mechane = LIN_PHY_FRAME_STATE_RX_PID;
                //temp_printf("id %02x(%02x)\r\n", id, pid);
            } else {
                state_mechane = LIN_PHY_FRAME_STATE_IDLE;
            }
            break;
        }
        case LIN_PHY_FRAME_STATE_RX_PID: {
            //temp_printf("data %02x\r\n", lpuart_rx_data);
            set_reg_bit(&lpuart_status, 1, LPUART_TX_DATA_REG_EMPTY);//boson
            set_reg_bit(&lpuart_status, 1, LPUART_RX_DATA_REG_FULL);
            break;
        }
        default:
            break;
        }
    }
    return;
}

static uint32_t uart1_isr(void *user_data)
{
    uint32_t status;

    while(1)
    {
        status = apUART_Get_all_raw_int_stat(APB_UART1);
        if (status == 0) {
            break;
        }

        APB_UART1->IntClear = status;

        // rx int
        if (status & (1 << bsUART_RECEIVE_INTENAB))
        {
            uart1_recv_data();
            LIN_DRV_IRQHandler(LIN_UART_PORT);
        }

        //if(status & (1 << bsUART_TRANSMIT_INTENAB))
        //    set_reg_bit(&lpuart_status, 1, LPUART_TX_DATA_REG_EMPTY);
    }
    return 0;
}

void uart1_send_data(uint8_t c)
{
    while (apUART_Check_TXFIFO_FULL(APB_UART1) == 1);
    UART_SendData(APB_UART1, c);
    return;
}

static uint32_t timer2_isr(void *user_data)
{
    TMR_IntClr(APB_TMR2);
    uart1_send_data(0x00);
   // printf("delay.........\r\n");
    //GIO_WriteValue(USER_UART1_IO_TX, 1);
    PINCTRL_SetPadMux(USER_UART1_IO_TX, IO_SOURCE_UART1_TXD);
    //printf("timer2\r\n");
    return 0;
}

static void timer2_init(void)
{
    SYSCTRL_ClearClkGateMulti((1 << SYSCTRL_ClkGate_APB_TMR2));
    TMR_SetCMP(APB_TMR2, TMR_CLK_FREQ * (LIN_BREAK_FIELD_LEN -8 ) / LIN_BAUD_RATE);
    TMR_SetOpMode(APB_TMR2, TMR_CTL_OP_MODE_ONESHOT);
    TMR_IntEnable(APB_TMR2);
    TMR_Reload(APB_TMR2);
    //TMR_Enable(APB_TMR2);
    platform_set_irq_callback(PLATFORM_CB_IRQ_TIMER2, timer2_isr, NULL);
    return;
}

void LPUART_QueueBreakField(LPUART_Type * base)
{
   // static uint8_t flag = 0;
   // if(flag > 0)
   //     return;
   // flag++;
    //temp_printf("LPUART_QueueBreakField\r\n");
    
    PINCTRL_SetPadMux(USER_UART1_IO_TX, IO_SOURCE_GENERAL);
    GIO_SetDirection(USER_UART1_IO_TX, GIO_DIR_OUTPUT);
    GIO_WriteValue(USER_UART1_IO_TX, 0);
    TMR_Enable(APB_TMR2);
    return;
}

void lin_phy_init(void)
{
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_PinCtrl);
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_UART1);

    PINCTRL_SetPadMux(USER_UART1_IO_RX, IO_SOURCE_GENERAL);
    PINCTRL_SetPadPwmSel(USER_UART1_IO_RX, 0);
    PINCTRL_SetPadMux(USER_UART1_IO_TX, IO_SOURCE_UART1_TXD);
    PINCTRL_Pull(USER_UART1_IO_RX, PINCTRL_PULL_UP);
    PINCTRL_SelUartRxdIn(UART_PORT_1, USER_UART1_IO_RX);
    //PINCTRL_SetPadMux(USER_UART1_IO_RTS, IO_SOURCE_UART1_RTS);
    //PINCTRL_Pull(USER_UART1_IO_CTS, PINCTRL_PULL_DOWN);
    //PINCTRL_SelUartCtsIn(UART_PORT_1, USER_UART1_IO_CTS);

    timer2_init();

    sdk_config_uart(APB_UART1, OSC_CLK_FREQ, LIN_BAUD_RATE, 1 << bsUART_RECEIVE_INTENAB);

    platform_set_irq_callback(PLATFORM_CB_IRQ_UART1, uart1_isr, NULL);
    //TMR_Enable(APB_TMR1);

    return;
}

bool LPUART_GetIntMode( const LPUART_Type * base, lpuart_interrupt_t intSrc)
{
    return 0;
}

bool LPUART_GetStatusFlag(const LPUART_Type * base, lpuart_status_flag_t statusFlag)
{
    return ((lpuart_status & (0x1 << statusFlag)) != 0);
}

void LPUART_ClearStatusFlag(LPUART_Type * base, lpuart_status_flag_t statusFlag)
{
    set_reg_bit(&lpuart_status, 0, statusFlag);
}

void LPUART_Getchar(const LPUART_Type * base, uint8_t *readData)
{
    set_reg_bit(&lpuart_status, 0, LPUART_RX_DATA_REG_FULL);
    *readData = lpuart_rx_data;
    return;
}

void LPUART_SetBreakCharDetectLength(LPUART_Type * base, lpuart_break_char_length_t length)
{
}

void LPUART_SetIntMode(LPUART_Type * base, lpuart_interrupt_t intSrc, bool enable)
{
}

void LPUART_Putchar(LPUART_Type * base, uint8_t data)
{
    while (apUART_Check_TXFIFO_FULL(base) == 1);
    UART_SendData(base, data);
}

bool LPUART_GetRxDataPolarity(const LPUART_Type * base)
{
    return 0;
}

void LPUART_SetRxDataPolarity(LPUART_Type * base, bool polarity)
{
}

void LPUART_SetBreakCharTransmitLength(LPUART_Type * base, lpuart_break_char_length_t length)
{
}

void LPUART_SetReceiverCmd(LPUART_Type * base, bool enable)
{
}

void LPUART_SetTransmitterCmd(LPUART_Type * base, bool enable)
{
}

status_t OSIF_SemaDestroy(const semaphore_t * const pSem)
{
    return 0;
}

status_t OSIF_SemaCreate(semaphore_t * const pSem, const uint8_t initValue)
{
    return 0;
}

status_t OSIF_SemaWait(semaphore_t * const pSem, const uint32_t timeout)
{
    return 0;
}

status_t OSIF_SemaPost(semaphore_t * const pSem)
{
    return 0;
}

status_t CLOCK_SYS_GetFreq(clock_names_t clockName, uint32_t *frequency)
{
    return 0;
}

void LPUART_Init(LPUART_Type * base)
{
    return;
}

status_t LPUART_DRV_SetBaudRate(uint32_t instance, uint32_t desiredBaudRate)
{
    return 0;
}

void LPUART_SetBitCountPerChar(LPUART_Type * base, lpuart_bit_count_per_char_t bitCountPerChar, bool parity)
{
    return;
}

void LPUART_SetParityMode(LPUART_Type * base, lpuart_parity_mode_t parityModeType)
{
    return;
}

void LPUART_SetStopBitCount(LPUART_Type * base, lpuart_stop_bit_count_t stopBitCount)
{
    return;
}

void INT_SYS_EnableIRQ(IRQn_Type irqNumber)
{
    return;
}

void INT_SYS_DisableIRQ(IRQn_Type irqNumber)
{
    return;
}

isr_t g_linLpuartIsrs[LPUART_INSTANCE_COUNT] =
{
};

void INT_SYS_InstallHandler(IRQn_Type irqNumber,
                            const isr_t newHandler,
                            isr_t* const oldHandler)
{
    return;
}

#if defined __cplusplus
    }
#endif

