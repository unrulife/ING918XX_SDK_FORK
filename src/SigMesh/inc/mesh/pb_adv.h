#ifndef __PB_ADV_H
#define __PB_ADV_H

#include <stdint.h>

#include "btstack_defines.h"
#include "mesh_config.h"
#include "bt_types.h"

#if defined __cplusplus
extern "C" {
#endif

/**
 * Initialize Provisioning Bearer using Advertisement Bearer
 */
void pb_adv_init(void);

/**
 * Register provisioning device listener for Provisioning PDUs and MESH_PBV_ADV_SEND_COMPLETE
 */
void pb_adv_register_device_packet_handler(btstack_packet_handler_t packet_handler);

/**
 * Register provisioning provisioner listener for Provisioning PDUs and MESH_PBV_ADV_SEND_COMPLETE
 */
void pb_adv_register_provisioner_packet_handler(btstack_packet_handler_t packet_handler);

/**
 * Send Provisioning PDU
 * @param pb_adv_cid
 * @param pdu
 * @param pb_adv_cid
 */
void pb_adv_send_pdu(uint16_t pb_adv_cid, const uint8_t * pdu, uint16_t pdu_size);
 
/**
 * Close Link
 * @param pb_adv_cid
 * @param reason 0 = success, 1 = timeout, 2 = fail
 */
void pb_adv_close_link(uint16_t pb_adv_cid, uint8_t reason); 

#ifdef ENABLE_MESH_PROVISIONER
/**
 * Setup Link with unprovisioned device
 * @param DeviceUUID - data not copied
 * @return pb_adv_cid or 0
 */
uint16_t pb_adv_create_link(const uint8_t * device_uuid);
#endif

#if defined __cplusplus
}
#endif

#endif // __PB_ADV_H
