#ifndef __PB_GATT_H
#define __PB_GATT_H

#include <stdint.h>

#include "btstack_defines.h"
#include "mesh_config.h"
#include "bluetooth.h"
#include "bt_types.h"

#if defined __cplusplus
extern "C" {
#endif

/**
 * Setup mesh provisioning service
 */
void pb_gatt_init(void);

/**
 * Register listener for Provisioning PDUs and events: MESH_PB_TRANSPORT_LINK_OPEN, MESH_PB_TRANSPORT_LINK_CLOSED, MESH_SUBEVENT_CAN_SEND_NOW
 * @param packet_handler
 */
void pb_gatt_register_packet_handler(btstack_packet_handler_t packet_handler);

/**
 * Send PDU
 * @param con_handle
 * @param pdu
 * @param pdu_size
 */
void pb_gatt_send_pdu(uint16_t con_handle, const uint8_t * pdu, uint16_t pdu_size);

/**
 * Setup Link with unprovisioned device
 * @param   device_uuid
 * @return  con_handle or HCI_CON_HANDLE_INVALID
 */
hci_con_handle_t pb_gatt_create_link(const uint8_t * device_uuid);

/**
 * Close Link
 * @param con_handle
 * @param reason 0 = success, 1 = timeout, 2 = fail
 */
void pb_gatt_close_link(hci_con_handle_t con_handle, uint8_t reason);


#if defined __cplusplus
}
#endif

#endif // __PB_GATT_H
