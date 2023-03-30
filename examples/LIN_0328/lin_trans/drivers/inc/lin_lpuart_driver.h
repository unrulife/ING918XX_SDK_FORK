

#include <stdint.h>
#include "status.h"
#include "lin_driver.h"
#include "lin_phy.h"

#ifndef __LIN_LPUART_H__
#define __LIN_LPUART_H__

uint8_t LIN_DRV_ProcessParity(uint8_t PID, uint8_t typeAction);
status_t LIN_LPUART_DRV_AbortTransferData(uint32_t instance);
status_t LIN_LPUART_DRV_AutoBaudCapture(uint32_t instance);
void LIN_LPUART_DRV_Deinit(uint32_t instance);
status_t LIN_LPUART_DRV_DisableIRQ(uint32_t instance);
status_t LIN_LPUART_DRV_EnableIRQ(uint32_t instance);
lin_node_state_t LIN_LPUART_DRV_GetCurrentNodeState(uint32_t instance);
void LIN_LPUART_DRV_GetDefaultConfig(bool isMaster, lin_user_config_t * linUserConfig);
status_t LIN_LPUART_DRV_GetReceiveStatus(uint32_t instance, uint8_t * bytesRemaining);
status_t LIN_LPUART_DRV_GetTransmitStatus(uint32_t instance, uint8_t * bytesRemaining);
status_t LIN_LPUART_DRV_GoToSleepMode(uint32_t instance);
status_t LIN_LPUART_DRV_GotoIdleState(uint32_t instance);
void LIN_LPUART_DRV_IRQHandler(uint32_t instance);
status_t LIN_LPUART_DRV_Init(uint32_t instance, lin_user_config_t * linUserConfig, lin_state_t * linCurrentState);
lin_callback_t LIN_LPUART_DRV_InstallCallback(uint32_t instance, lin_callback_t function);
status_t LIN_LPUART_DRV_MasterSendHeader(uint32_t instance, uint8_t id);
status_t LIN_LPUART_DRV_RecvFrmData(uint32_t instance, uint8_t * rxBuff, uint8_t rxSize);
status_t LIN_LPUART_DRV_RecvFrmDataBlocking(uint32_t instance, uint8_t * rxBuff, uint8_t rxSize, uint32_t timeoutMSec);
status_t LIN_LPUART_DRV_SendFrameData(uint32_t instance, const uint8_t * txBuff, uint8_t txSize);
status_t LIN_LPUART_DRV_SendFrameDataBlocking(uint32_t instance, const uint8_t * txBuff, uint8_t txSize, uint32_t timeoutMSec);
status_t LIN_LPUART_DRV_SendWakeupSignal(uint32_t instance);
void LIN_LPUART_DRV_SetTimeoutCounter(uint32_t instance, uint32_t timeoutValue);
void LIN_LPUART_DRV_TimeoutService(uint32_t instance);

#endif