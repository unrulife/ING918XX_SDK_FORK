#ifndef __MESH_GENERIC_DEFAULT_TRANSITION_SERVER_H
#define __MESH_GENERIC_DEFAULT_TRANSITION_SERVER_H

#include <stdint.h>

#include "mesh/mesh_access.h"

#ifdef __cplusplus
extern "C"
{
#endif

const mesh_operation_t * mesh_generic_default_transition_time_server_get_operations(void);

/**
 * @brief Set Transition Time 
 * @param default_transition_time_server_model
 * @param transition_time_gdtt
 */
void mesh_generic_default_transition_time_server_set(mesh_model_t * default_transition_time_server_model, uint8_t transition_time_gdtt);

/**
 * @brief  Get Transition Time
 * @param  default_transition_time_server_model
 * @return on_off_valu?÷≥
 */
uint8_t mesh_generic_default_transition_time_server_get(mesh_model_t *default_transition_time_server_model);


#ifdef __cplusplus
} /* end of extern "C" */
#endif

#endif
