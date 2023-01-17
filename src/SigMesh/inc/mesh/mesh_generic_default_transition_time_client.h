#ifndef __MESH_GENERIC_DEFAULT_TRANSITION_TIME_CLIENT_H
#define __MESH_GENERIC_DEFAULT_TRANSITION_TIME_CLIENT_H

#include <stdint.h>

#include "mesh/mesh_access.h"

#ifdef __cplusplus
extern "C"
{
#endif

const mesh_operation_t * mesh_generic_default_transition_time_client_get_operations(void);

/**
 * @brief Register packet handler
 * @param mesh_model
 * @param transition_events_packet_handler
 */
void mesh_generic_default_transition_time_client_register_packet_handler(mesh_model_t *mesh_model, btstack_packet_handler_t transition_events_packet_handler);

/**
 * @brief Set Default Transition Time value acknowledged
 * @param mesh_model
 * @param dest
 * @param netkey_index
 * @param appkey_index
 * @param transition_time_gdtt
 * @return status    0 if successful 
 */
 uint8_t mesh_generic_default_transition_time_client_set(mesh_model_t * mesh_model, uint16_t dest, uint16_t netkey_index, uint16_t appkey_index, 
    uint8_t transition_time_gdtt);

/**
 * @brief Set Default Transition Time value unacknowledged
 * @param mesh_model
 * @param dest
 * @param netkey_index
 * @param appkey_index
 * @param on_off_value
 * @param transition_time_gdtt
 * @param delay_time_gdtt
 * @return status    0 if successful 
 */
uint8_t mesh_generic_default_transition_time_client_set_unacknowledged(mesh_model_t * mesh_model, uint16_t dest, uint16_t netkey_index, uint16_t appkey_index, 
    uint8_t transition_time_gdtt);

/**
 * @brief  Get present Default Transition Time value
 * @param mesh_model
 * @param dest
 * @param netkey_index
 * @param appkey_index
 * @return status    0 if successful 
 */
uint8_t mesh_generic_default_transition_time_client_get(mesh_model_t *mesh_model, uint16_t dest, uint16_t netkey_index, uint16_t appkey_index);


#ifdef __cplusplus
} /* end of extern "C" */
#endif

#endif
