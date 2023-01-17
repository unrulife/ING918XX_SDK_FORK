#ifndef __GATT_BEARER_H
#define __GATT_BEARER_H

#include <stdint.h>

#include "btstack_defines.h"

#if defined __cplusplus
extern "C" {
#endif

/**
 * Initialize GATT Bearer
 */
void gatt_bearer_init(void);

/**
 * Register listener for particular message types: Mesh Message, Mesh Beacon, proxy configuration
 */
void gatt_bearer_register_for_network_pdu(btstack_packet_handler_t packet_handler);
void gatt_bearer_register_for_beacon(btstack_packet_handler_t packet_handler);
void gatt_bearer_register_for_mesh_proxy_configuration(btstack_packet_handler_t _packet_handler);

/**
 * Request can send now event for particular message type: Mesh Message, Mesh Beacon, proxy configuration
 */
void gatt_bearer_request_can_send_now_for_network_pdu(void);
void gatt_bearer_request_can_send_now_for_beacon(void);
void gatt_bearer_request_can_send_now_for_mesh_proxy_configuration(void);

/**
 * Send particular message type: Mesh Message, Mesh Beacon, proxy configuration
 * @param data to send 
 * @param data_len max 29 bytes
 */
void gatt_bearer_send_network_pdu(const uint8_t * network_pdu, uint16_t size); 
void gatt_bearer_send_beacon(const uint8_t * beacon_update, uint16_t size); 
void gatt_bearer_send_mesh_proxy_configuration(const uint8_t * proxy_configuration, uint16_t size); 

#if defined __cplusplus
}
#endif

#endif // __GATT_BEARER_H
