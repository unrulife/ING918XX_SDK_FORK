
/*
** COPYRIGHT (c) 2022 by INGCHIPS
*/

#ifndef __LIN_PHY_H__
#define __LIN_PHY_H__

#include <stdbool.h>
#include "stdint.h"
#include "ING91870CQ.h"
#include "osif.h"

#if defined __cplusplus
    extern "C" {
#endif

#define LIN_UART_PORT 1u

void lin_phy_init(void);
void uart1_send_data(uint8_t c);
void LPUART_QueueBreakField(LPUART_Type * base);
bool LPUART_GetIntMode(const LPUART_Type * base, lpuart_interrupt_t intSrc);
bool LPUART_GetStatusFlag(const LPUART_Type * base, lpuart_status_flag_t statusFlag);
void LPUART_ClearStatusFlag(LPUART_Type * base, lpuart_status_flag_t statusFlag);
void LPUART_Getchar(const LPUART_Type * base, uint8_t *readData);
void LPUART_SetBreakCharDetectLength(LPUART_Type * base, lpuart_break_char_length_t length);
void LPUART_SetIntMode(LPUART_Type * base, lpuart_interrupt_t intSrc, bool enable);
void LPUART_Putchar(LPUART_Type * base, uint8_t data);
bool LPUART_GetRxDataPolarity(const LPUART_Type * base);
void LPUART_SetRxDataPolarity(LPUART_Type * base, bool polarity);
void LPUART_SetBreakCharTransmitLength(LPUART_Type * base, lpuart_break_char_length_t length);
void LPUART_SetReceiverCmd(LPUART_Type * base, bool enable);
void LPUART_SetTransmitterCmd(LPUART_Type * base, bool enable);
status_t CLOCK_SYS_GetFreq(clock_names_t clockName, uint32_t *frequency);
void LPUART_Init(LPUART_Type * base);
status_t LPUART_DRV_SetBaudRate(uint32_t instance, uint32_t desiredBaudRate);
void LPUART_SetBitCountPerChar(LPUART_Type * base, lpuart_bit_count_per_char_t bitCountPerChar, bool parity);
void LPUART_SetParityMode(LPUART_Type * base, lpuart_parity_mode_t parityModeType);
void LPUART_SetStopBitCount(LPUART_Type * base, lpuart_stop_bit_count_t stopBitCount);

#if defined __cplusplus
    }
#endif

#endif

