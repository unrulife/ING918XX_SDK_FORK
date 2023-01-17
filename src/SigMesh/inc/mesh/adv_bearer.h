#ifndef __ADV_BEARER_H
#define __ADV_BEARER_H

#include <stdint.h>
#include <stdbool.h>

#include "btstack_defines.h"
#include "bluetooth.h"
#include "bt_types.h"


#if defined __cplusplus
extern "C" {
#endif

typedef struct {
	void * next;
	uint8_t adv_length;
	uint8_t adv_data[31];
} adv_bearer_connectable_advertisement_data_item_t;

/**
 * Initialize Advertising Bearer
 */
void adv_bearer_init(void);

//
// Mirror gap.h advertisement API for use with ADV Bearer
//
// Advertisements are interleaved with ADV Bearer Messages

/**
 * Add Connectable Advertisement Data Item
 * @param item
 * @note item is not copied, pointer has to stay valid
 * @note '00:00:00:00:00:00' in advertising_data will be replaced with actual bd addr
 */
void adv_bearer_advertisements_add_item(adv_bearer_connectable_advertisement_data_item_t * item);

/**
 * Remove Connectable Advertisement Data Item
 * @param item
 * @note item is not copied, pointer has to stay valid
 * @note '00:00:00:00:00:00' in advertising_data will be replaced with actual bd addr
 */
void adv_bearer_advertisements_remove_item(adv_bearer_connectable_advertisement_data_item_t * item);

/**
 * @brief Set Advertisement Paramters
 * @param adv_int_min
 * @param adv_int_max
 * @param adv_type
 * @param direct_address_type
 * @param direct_address
 * @param channel_map
 * @param filter_policy
 * @note own_address_type is used from gap_random_address_set_mode
 */
void adv_bearer_advertisements_set_params(uint16_t adv_int_min, uint16_t adv_int_max, uint8_t adv_type,
	uint8_t direct_address_typ, bd_addr_t direct_address, uint8_t channel_map, uint8_t filter_policy);

/** 
 * @brief Enable/Disable Advertisements. OFF by default.
 * @param enabled
 */
void adv_bearer_advertisements_enable(int enabled);

/**
 * Register listener for particular message types: Mesh Message, Mesh Beacon, PB-ADV
 */
void adv_bearer_register_for_network_pdu(btstack_packet_handler_t packet_handler);
void adv_bearer_register_for_beacon(btstack_packet_handler_t packet_handler);
void adv_bearer_register_for_provisioning_pdu(btstack_packet_handler_t packet_handler);

/**
 * Request can send now event for particular message type: Mesh Message, Mesh Beacon, PB-ADV
 */
void adv_bearer_request_can_send_now_for_network_pdu(void);
void adv_bearer_request_can_send_now_for_beacon(void);
void adv_bearer_request_can_send_now_for_provisioning_pdu(void);

/**
 * Send Mesh Message
 * @param data to send
 * @param data_len max 29 bytes
 * @param count number of transmissions
 * @param interval between transmission
 */
void adv_bearer_send_network_pdu(const uint8_t * network_pdu, uint16_t size, uint8_t count, uint16_t interval);

/**
 * Send particular message type:Mesh Beacon, PB-ADV
 * @param data to send
 * @param data_len max 29 bytes
 */
void adv_bearer_send_beacon(const uint8_t * beacon_update, uint16_t size);
void adv_bearer_send_provisioning_pdu(const uint8_t * pb_adv_pdu, uint16_t size); 
void adv_bearer_adv_set_scan_rsp_data(uint8_t *data, uint8_t len);

#if defined __cplusplus
}
#endif

#endif // __ADV_BEARER_H
