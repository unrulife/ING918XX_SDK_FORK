#ifndef __MESH_IV_INDEX_SEQ_NUMBER_H
#define __MESH_IV_INDEX_SEQ_NUMBER_H

#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

/**
 * IV Index
 */

void     mesh_set_iv_index(uint32_t iv_index);
uint32_t mesh_get_iv_index(void);

uint32_t mesh_get_iv_index_for_tx(void);

/**
 * @brief Get IV Update state
 */
int mesh_iv_update_active(void);

/**
 * @brief Trigger IV Update
 */
void mesh_trigger_iv_update(void);

/**
 * @breif IV update was completed
 */
void mesh_iv_update_completed(void);

/** 
 * @brief IV Index was recovered
 * @param iv_update_active
 * @param iv_index
 */
void mesh_iv_index_recovered(uint8_t iv_update_active, uint32_t iv_index);

/**
 * @brief Set callback for sequence number update
 */
void mesh_sequence_number_set_update_callback(void (*callback)(void));

/**
 * Sequence Number
 */
void     mesh_sequence_number_set(uint32_t seq);
uint32_t mesh_sequence_number_peek(void);
uint32_t mesh_sequence_number_next(void);


#ifdef __cplusplus
} /* end of extern "C" */
#endif

#endif
