/*
 *  provisioning_device.h
 */

#ifndef __PROVISIONING_PROVISIONER_H
#define __PROVISIONING_PROVISIONER_H

#include <stdint.h>

#include "btstack_defines.h"
#include "bt_types.h"

#ifdef __cplusplus
extern "C"
{
#endif

/**
 * @brief Init Provisioning in Provisioner Role 
 */
void provisioning_provisioner_init(void);

/**
 * @brief Register packet handler
 * @param packet_handler
 */
void provisioning_provisioner_register_packet_handler(btstack_packet_handler_t packet_handler);

/**
 * @brief Start Provisioning device with provided device_uuid
 * @param device_uuid
 * @return pb_adv_cid or 0
 */
uint16_t provisioning_provisioner_start_provisioning(const uint8_t * device_uuid);

/**
 * @brief Select Authentication Method
 * @param pv_adv_cid
 * @param algorithm
 * @param public_key_used
 * @param authentication_method
 * @param authentication_action
 * @param authentication_size
 */
uint8_t provisioning_provisioner_select_authentication_method(uint16_t pb_adv_cid, uint8_t algorithm, uint8_t public_key_used, uint8_t authentication_method, uint8_t authentication_action, uint8_t authentication_size);

/**
 * @brief Public Key OOB Available
 * @param pv_adv_cid
 * @param public_key  (64 bytes)
 * @note Requires ability to transmit public key out-of-band
 */
uint8_t provisioning_provisioner_public_key_oob_received(uint16_t pb_adv_cid, const uint8_t * public_key);

/**
 * @brief Set data for Static OOB Authentication
 * @param pv_adv_cid
 * @param static_oob_len
 * @param static_oob_data
 */
void provisioning_provisioner_set_static_oob(uint16_t pb_adv_cid, uint16_t static_oob_len, const uint8_t * static_oob_data);

/**
 * @brief Input OOB Complete Numeric
 * @param pv_adv_cid
 * @Param input_oob number
 */
void provisioning_provisioner_input_oob_complete_numeric(uint16_t pb_adv_cid, uint32_t input_oob);

/**
 * @brief Input OOB Complete Alphanumeric
 * @param pv_adv_cid
 * @Param input_oob_data string
 * @Param input_oob_len 
 */
void provisioning_provisioner_input_oob_complete_alphanumeric(uint16_t pb_adv_cid, const uint8_t * input_oob_data, uint16_t input_oob_len);


#ifdef __cplusplus
} /* end of extern "C" */
#endif

#endif
