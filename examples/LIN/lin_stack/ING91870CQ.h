
#ifndef __ING91870CQ_H__
#define __ING91870CQ_H__

#include <stdint.h>
#include "peripheral_uart.h"

typedef enum {

    /* Main clocks */
    CORE_CLK                     = 0u,       /*!< Core clock                     */
    BUS_CLK                      = 1u,       /*!< Bus clock                      */
    SLOW_CLK                     = 2u,       /*!< Slow clock                     */
    CLKOUT_CLK                   = 3u,       /*!< CLKOUT clock                   */

    /* Other internal clocks used by peripherals. */
    SIRC_CLK                     = 4u,       /*!< SIRC clock                     */
    FIRC_CLK                     = 5u,       /*!< FIRC clock                     */
    SOSC_CLK                     = 6u,       /*!< SOSC clock                     */
    SPLL_CLK                     = 7u,       /*!< SPLL clock                     */
    RTC_CLKIN_CLK                = 8u,       /*!< RTC_CLKIN clock                */
    SCG_CLKOUT_CLK               = 9u,       /*!< SCG CLK_OUT clock              */

    SIRCDIV1_CLK                 = 10u,      /*!< SIRCDIV1 functional clock      */
    SIRCDIV2_CLK                 = 11u,      /*!< SIRCDIV2 functional clock      */
    FIRCDIV1_CLK                 = 12u,      /*!< FIRCDIV1 functional clock      */
    FIRCDIV2_CLK                 = 13u,      /*!< FIRCDIV2 functional clock      */
    SOSCDIV1_CLK                 = 14u,      /*!< SOSCDIV1 functional clock      */
    SOSCDIV2_CLK                 = 15u,      /*!< SOSCDIV2 functional clock      */
    SPLLDIV1_CLK                 = 16u,      /*!< SPLLDIV1 functional clock      */
    SPLLDIV2_CLK                 = 17u,      /*!< SPLLDIV2 functional clock      */

    SCG_END_OF_CLOCKS            = 18u,      /*!< End of SCG clocks              */

    /* SIM clocks */
    SIM_FTM0_CLOCKSEL            = 21u,      /*!< FTM0 External Clock Pin Select */
    SIM_FTM1_CLOCKSEL            = 22u,      /*!< FTM1 External Clock Pin Select */
    SIM_FTM2_CLOCKSEL            = 23u,      /*!< FTM2 External Clock Pin Select */
    SIM_FTM3_CLOCKSEL            = 24u,      /*!< FTM3 External Clock Pin Select */
    SIM_CLKOUTSELL               = 25u,      /*!< CLKOUT Select                  */
    SIM_RTCCLK_CLK               = 26u,      /*!< RTCCLK clock                   */
    SIM_LPO_CLK                  = 27u,      /*!< LPO clock                      */
    SIM_LPO_1K_CLK               = 28u,      /*!< LPO 1KHz clock                 */
    SIM_LPO_32K_CLK              = 29u,      /*!< LPO 32KHz clock                */
    SIM_LPO_128K_CLK             = 30u,      /*!< LPO 128KHz clock               */
    SIM_EIM_CLK                  = 31u,      /*!< EIM clock source               */
    SIM_ERM_CLK                  = 32u,      /*!< ERM clock source               */
    SIM_DMA_CLK                  = 33u,      /*!< DMA clock source               */
    SIM_MPU_CLK                  = 34u,      /*!< MPU clock source               */
    SIM_MSCM_CLK                 = 35u,      /*!< MSCM clock source              */
    SIM_END_OF_CLOCKS            = 36u,      /*!< End of SIM clocks              */

    /* PCC clocks */
    CMP0_CLK                     = 41u,      /*!< CMP0 clock source              */
    CRC0_CLK                     = 42u,      /*!< CRC0 clock source              */
    DMAMUX0_CLK                  = 43u,      /*!< DMAMUX0 clock source           */
    EWM0_CLK                     = 44u,      /*!< EWM0 clock source              */
    PORTA_CLK                    = 45u,      /*!< PORTA clock source             */
    PORTB_CLK                    = 46u,      /*!< PORTB clock source             */
    PORTC_CLK                    = 47u,      /*!< PORTC clock source             */
    PORTD_CLK                    = 48u,      /*!< PORTD clock source             */
    PORTE_CLK                    = 49u,      /*!< PORTE clock source             */
    RTC0_CLK                     = 50u,      /*!< RTC0 clock source              */
    PCC_END_OF_BUS_CLOCKS        = 51u,      /*!< End of BUS clocks              */
    FlexCAN0_CLK                 = 52u,      /*!< FlexCAN0 clock source          */
    FlexCAN1_CLK                 = 53u,      /*!< FlexCAN1 clock source          */
    PDB0_CLK                     = 54u,      /*!< PDB0 clock source              */
    PDB1_CLK                     = 55u,      /*!< PDB1 clock source              */
    PCC_END_OF_SYS_CLOCKS        = 56u,      /*!< End of SYS clocks              */
    FTFM0_CLK                    = 57u,      /*!< FTFM0 clock source             */
    PCC_END_OF_SLOW_CLOCKS       = 58u,      /*!< End of SLOW clocks             */
    FTM0_CLK                     = 59u,      /*!< FTM0 clock source              */
    FTM1_CLK                     = 60u,      /*!< FTM1 clock source              */
    FTM2_CLK                     = 61u,      /*!< FTM2 clock source              */
    FTM3_CLK                     = 62u,      /*!< FTM3 clock source              */
    PCC_END_OF_ASYNCH_DIV1_CLOCKS= 63u,      /*!< End of ASYNCH DIV1 clocks      */
    ADC0_CLK                     = 64u,      /*!< ADC0 clock source              */
    ADC1_CLK                     = 65u,      /*!< ADC1 clock source              */
    FLEXIO0_CLK                  = 66u,      /*!< FLEXIO0 clock source           */
    LPI2C0_CLK                   = 67u,      /*!< LPI2C0 clock source            */
    LPIT0_CLK                    = 68u,      /*!< LPIT0 clock source             */
    LPSPI0_CLK                   = 69u,      /*!< LPSPI0 clock source            */
    LPSPI1_CLK                   = 70u,      /*!< LPSPI1 clock source            */
    LPSPI2_CLK                   = 71u,      /*!< LPSPI2 clock source            */
    LPTMR0_CLK                   = 72u,      /*!< LPTMR0 clock source            */
    LPUART0_CLK                  = 73u,      /*!< LPUART0 clock source           */
    LPUART1_CLK                  = 74u,      /*!< LPUART1 clock source           */
    LPUART2_CLK                  = 75u,      /*!< LPUART2 clock source           */
    PCC_END_OF_ASYNCH_DIV2_CLOCKS= 76u,      /*!< End of ASYNCH DIV2 clocks      */
    PCC_END_OF_CLOCKS            = 77u,      /*!< End of PCC clocks              */
    CLOCK_NAME_COUNT             = 78u,      /*!< The total number of entries    */
} clock_names_t;

typedef enum
{
    LPUART_INT_LIN_BREAK_DETECT  , /*!< LIN break detect. */
    LPUART_INT_RX_ACTIVE_EDGE    , /*!< RX Active Edge. */
    LPUART_INT_TX_DATA_REG_EMPTY , /*!< Transmit data register empty. */
    LPUART_INT_TX_COMPLETE       , /*!< Transmission complete. */
    LPUART_INT_RX_DATA_REG_FULL  , /*!< Receiver data register full. */
    LPUART_INT_IDLE_LINE         , /*!< Idle line. */
    LPUART_INT_RX_OVERRUN        , /*!< Receiver Overrun. */
    LPUART_INT_NOISE_ERR_FLAG    , /*!< Noise error flag. */
    LPUART_INT_FRAME_ERR_FLAG    , /*!< Framing error flag. */
    LPUART_INT_PARITY_ERR_FLAG   , /*!< Parity error flag. */
    LPUART_INT_MATCH_ADDR_ONE    , /*!< Match address one flag. */
    LPUART_INT_MATCH_ADDR_TWO    , /*!< Match address two flag. */
    LPUART_INT_FIFO_TXOF         , /*!< Transmitter FIFO buffer interrupt */
    LPUART_INT_FIFO_RXUF         , /*!< Receiver FIFO buffer interrupt */
} lpuart_interrupt_t;

typedef enum
{
    LPUART_TX_DATA_REG_EMPTY          , /*!< Tx data register empty flag, sets when Tx buffer is empty */
    LPUART_TX_COMPLETE                , /*!< Transmission complete flag, sets when transmission activity complete */
    LPUART_RX_DATA_REG_FULL           , /*!< Rx data register full flag, sets when the receive data buffer is full */
    LPUART_IDLE_LINE_DETECT           , /*!< Idle line detect flag, sets when idle line detected */
    LPUART_RX_OVERRUN                 , /*!< Rx Overrun sets if new data is received before data is read */
    LPUART_NOISE_DETECT               , /*!< Rx takes 3 samples of each received bit. If these differ, the flag sets */
    LPUART_FRAME_ERR                  , /*!< Frame error flag, sets if logic 0 was detected where stop bit expected */
    LPUART_PARITY_ERR                 , /*!< If parity enabled, sets upon parity error detection */
    LPUART_LIN_BREAK_DETECT           , /*!< LIN break detect interrupt flag, sets when LIN break char detected */
    LPUART_RX_ACTIVE_EDGE_DETECT      , /*!< Rx pin active edge interrupt flag, sets when active edge detected */
    LPUART_RX_ACTIVE                  , /*!< Receiver Active Flag (RAF), sets at beginning of valid start bit */
    LPUART_NOISE_IN_CURRENT_WORD      , /*!< NOISY bit, sets if noise detected in current data word */
    LPUART_PARITY_ERR_IN_CURRENT_WORD , /*!< PARITYE bit, sets if noise detected in current data word */
    LPUART_MATCH_ADDR_ONE             , /*!< Address one match flag */
    LPUART_MATCH_ADDR_TWO             , /*!< Address two match flag */
    LPUART_FIFO_TX_OF                 , /*!< Transmitter FIFO buffer overflow */
    LPUART_FIFO_RX_UF                 , /*!< Receiver FIFO buffer underflow */
} lpuart_status_flag_t;

typedef enum
{
    LPUART_BREAK_CHAR_10_BIT_MINIMUM = 0x0U,
    LPUART_BREAK_CHAR_13_BIT_MINIMUM = 0x1U,
} lpuart_break_char_length_t;

typedef enum
{
    LPUART_8_BITS_PER_CHAR  = 0x0U, /*!< 8-bit data characters */
    LPUART_9_BITS_PER_CHAR  = 0x1U, /*!< 9-bit data characters */
    LPUART_10_BITS_PER_CHAR = 0x2U  /*!< 10-bit data characters */
} lpuart_bit_count_per_char_t;

typedef enum
{
    LPUART_PARITY_DISABLED = 0x0U, /*!< parity disabled */
    LPUART_PARITY_EVEN     = 0x2U, /*!< parity enabled, type even, bit setting: PE|PT = 10 */
    LPUART_PARITY_ODD      = 0x3U  /*!< parity enabled, type odd,  bit setting: PE|PT = 11 */
} lpuart_parity_mode_t;

typedef enum
{
    LPUART_ONE_STOP_BIT = 0x0U, /*!< one stop bit */
    LPUART_TWO_STOP_BIT = 0x1U  /*!< two stop bits */
} lpuart_stop_bit_count_t;

typedef UART_TypeDef LPUART_Type;

#define LPUART_INSTANCE_COUNT                    (2u)

#define LPUART0                                  APB_UART0

#define LPUART1                                  APB_UART1

#define LPUART_BASE_PTRS                         { LPUART0, LPUART1 }
#define LPUART_CLOCK_NAMES                       {LPUART0_CLK, LPUART1_CLK}
#define LPUART_RX_TX_IRQS                        {  }

/* Accept Master baudrate deviation from the slave baudrate to be 2% */
#define AUTOBAUD_BAUDRATE_TOLERANCE (uint32_t)2U
#define BIT_RATE_TOLERANCE_UNSYNC   (uint32_t)14U
/* calculate range of one bit time with baudrate 19200 by formula {1000000/19200*(100 + AUTOBAUD_BAUDRATE_TOLERANCE))/100} */
#define BIT_DURATION_MAX_19200      (uint32_t)(100000U * (100U + AUTOBAUD_BAUDRATE_TOLERANCE) / 192U)
#define BIT_DURATION_MIN_19200      (uint32_t)(100000U * (100U - AUTOBAUD_BAUDRATE_TOLERANCE) / 192U)
/* calculate range of one bit time with baudrate 14400 by formula {1000000/14400*(100 + AUTOBAUD_BAUDRATE_TOLERANCE))/100} */
#define BIT_DURATION_MAX_14400      (uint32_t)(100000U * (100U + AUTOBAUD_BAUDRATE_TOLERANCE) / 144U)
#define BIT_DURATION_MIN_14400      (uint32_t)(100000U * (100U - AUTOBAUD_BAUDRATE_TOLERANCE) / 144U)
/* calculate range of one bit time with baudrate 9600 by formula {1000000/9600*(100 + AUTOBAUD_BAUDRATE_TOLERANCE))/100} */
#define BIT_DURATION_MAX_9600       (uint32_t)(100000U * (100U + AUTOBAUD_BAUDRATE_TOLERANCE) / 96U)
#define BIT_DURATION_MIN_9600       (uint32_t)(100000U * (100U - AUTOBAUD_BAUDRATE_TOLERANCE) / 96U)
/* calculate range of one bit time with baudrate 4800 by formula {1000000/4800*(100 + AUTOBAUD_BAUDRATE_TOLERANCE))/100} */
#define BIT_DURATION_MAX_4800       (uint32_t)(100000U * (100U + AUTOBAUD_BAUDRATE_TOLERANCE) / 48U)
#define BIT_DURATION_MIN_4800       (uint32_t)(100000U * (100U - AUTOBAUD_BAUDRATE_TOLERANCE) / 48U)
/* calculate range of one bit time with baudrate 2400 by formula {1000000/2400*(100 + AUTOBAUD_BAUDRATE_TOLERANCE))/100} */
#define BIT_DURATION_MAX_2400       (uint32_t)(100000U * (100U + AUTOBAUD_BAUDRATE_TOLERANCE) / 24U)
#define BIT_DURATION_MIN_2400       (uint32_t)(100000U * (100U - AUTOBAUD_BAUDRATE_TOLERANCE) / 24U)

/* calculate range of two bit time with baudrate 19200 */
#define TWO_BIT_DURATION_MAX_19200 (2U * BIT_DURATION_MAX_19200)
#define TWO_BIT_DURATION_MIN_19200 (2U * BIT_DURATION_MIN_19200)
/* calculate range of two bit time with baudrate 14400 */
#define TWO_BIT_DURATION_MAX_14400 (2U * BIT_DURATION_MAX_14400)
#define TWO_BIT_DURATION_MIN_14400 (2U * BIT_DURATION_MIN_14400)
/* calculate range of two bit time with baudrate 9600 */
#define TWO_BIT_DURATION_MAX_9600  (2U * BIT_DURATION_MAX_9600)
#define TWO_BIT_DURATION_MIN_9600  (2U * BIT_DURATION_MIN_9600)
/* calculate range of two bit time with baudrate 4800 */
#define TWO_BIT_DURATION_MAX_4800  (2U * BIT_DURATION_MAX_4800)
#define TWO_BIT_DURATION_MIN_4800  (2U * BIT_DURATION_MIN_4800)
/* calculate range of two bit time with baudrate 2400 */
#define TWO_BIT_DURATION_MAX_2400  (2U * BIT_DURATION_MAX_2400)
#define TWO_BIT_DURATION_MIN_2400  (2U * BIT_DURATION_MIN_2400)

/* calculate range of 13 bit time minimum with baudrate 19200 for autobaud feature */
#define AUTOBAUD_BREAK_TIME_MIN    (13U * BIT_DURATION_MIN_19200)

#endif
