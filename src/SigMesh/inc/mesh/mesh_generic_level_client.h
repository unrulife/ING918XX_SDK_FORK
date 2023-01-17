#ifndef __MESH_GENERIC_LEVEL_CLIENT_H
#define __MESH_GENERIC_LEVEL_CLIENT_H

#include <stdint.h>

#include "mesh/mesh_access.h"

#ifdef __cplusplus
extern "C"
{
#endif

const mesh_operation_t * mesh_generic_level_client_get_operations(void);
/**
 * @brief Register packet handler
 * @param generic_level_client_model
 * @param events_packet_handler
 */
void mesh_generic_level_client_register_packet_handler(mesh_model_t *mesh_model, btstack_packet_handler_t events_packet_handler);

/**
 * @brief Set Level value
 * @param  mesh_model
 * @param  dest
 * @param  netkey_index
 * @param  appkey_index
 * @param  level_value
 * @param  transition_time_gdtt
 * @param  delay_time_gdtt
 * @param  transaction_id
 * @return status    0 if successful 
 */
uint8_t mesh_generic_level_client_level_set(mesh_model_t * mesh_model, uint16_t dest, uint16_t netkey_index, uint16_t appkey_index, 
    int16_t level_value, uint8_t transition_time_gdtt, uint8_t delay_time_gdtt, uint8_t transaction_id);

/**
 * @brief  Get present Level value
 * @param  mesh_model
 * @param  dest
 * @param  netkey_index
 * @param  appkey_index
 * @param  level_value
 * @param  transition_time_gdtt
 * @param  delay_time_gdtt
 * @param  transaction_id
 * @return transaction_id    if transaction_id == 0, it is invalid
 */
uint8_t mesh_generic_level_client_level_set_unacknowledged(mesh_model_t * mesh_model, uint16_t dest, uint16_t netkey_index, uint16_t appkey_index, 
    int16_t level_value, uint8_t transition_time_gdtt, uint8_t delay_time_gdtt, uint8_t transaction_id);

/**
 * @brief  Get present Level value
 * @param  mesh_model
 * @param  dest
 * @param  netkey_index
 * @param  appkey_index
 * @return status    0 if successful 
 */
uint8_t mesh_generic_level_client_level_get(mesh_model_t *mesh_model, uint16_t dest, uint16_t netkey_index, uint16_t appkey_index);

/**
 * @brief Publish level value by sending an unacknowledged set message to the publish destination
 * @param  mesh_model
 * @param  level_value
 * @param  transaction_id
 * @return status    0 if successful 
 */
uint8_t mesh_generic_level_client_publish_level(mesh_model_t * mesh_model, int16_t level_value, uint8_t transaction_id);

/**
 * @brief Set Level value
 * @param  mesh_model
 * @param  dest
 * @param  netkey_index
 * @param  appkey_index
 * @param  delta_value
 * @param  transition_time_gdtt
 * @param  delay_time_gdtt
 * @param  transaction_id
 * @return status    0 if successful 
 */
uint8_t mesh_generic_level_client_delta_set(mesh_model_t * mesh_model, uint16_t dest, uint16_t netkey_index, uint16_t appkey_index, 
    int16_t delta_value, uint8_t transition_time_gdtt, uint8_t delay_time_gdtt, uint8_t transaction_id);

/**
 * @brief  Get present Level value
 * @param  mesh_model
 * @param  dest
 * @param  netkey_index
 * @param  appkey_index
 * @param  delta_value
 * @param  transition_time_gdtt
 * @param  delay_time_gdtt
 * @param  transaction_id
 * @return transaction_id    if transaction_id == 0, it is invalid
 */
uint8_t mesh_generic_level_client_delta_set_unacknowledged(mesh_model_t * mesh_model, uint16_t dest, uint16_t netkey_index, uint16_t appkey_index, 
    int16_t delta_value, uint8_t transition_time_gdtt, uint8_t delay_time_gdtt, uint8_t transaction_id);

/**
 * @brief Set Level value
 * @param  mesh_model
 * @param  dest
 * @param  netkey_index
 * @param  appkey_index
 * @param  delta_value          used to calculate the speed of the transition of the Generic Level state
 * @param  transition_time_gdtt
 * @param  delay_time_gdtt
 * @param  transaction_id
 * @return status    0 if successful 
 */
uint8_t mesh_generic_level_client_move_set(mesh_model_t * mesh_model, uint16_t dest, uint16_t netkey_index, uint16_t appkey_index, 
    int16_t delta_value, uint8_t transition_time_gdtt, uint8_t delay_time_gdtt, uint8_t transaction_id);

/**
 * @brief  Get present Level value
 * @param  mesh_model
 * @param  dest
 * @param  netkey_index
 * @param  appkey_index
 * @param  delta_value        used to calculate the speed of the transition of the Generic Level state
 * @param  transition_time_gdtt
 * @param  delay_time_gdtt
 * @param  transaction_id
 * @return transaction_id    if transaction_id == 0, it is invalid
 */
uint8_t mesh_generic_level_client_move_set_unacknowledged(mesh_model_t * mesh_model, uint16_t dest, uint16_t netkey_index, uint16_t appkey_index, 
    int16_t delta_value, uint8_t transition_time_gdtt, uint8_t delay_time_gdtt, uint8_t transaction_id);

#ifdef __cplusplus
} /* end of extern "C" */
#endif

#endif
