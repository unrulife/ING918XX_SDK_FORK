#ifndef __MESH_PROXY_H
#define __MESH_PROXY_H

#include <stdint.h>

#include "mesh/adv_bearer.h"
#include "mesh/mesh_node.h"

#ifdef __cplusplus
extern "C"
{
#endif

/**
 * @brief Init Mesh Proxy
 */
void mesh_proxy_init(uint16_t primary_unicast_address);

/**
 * @brief Start Advertising Unprovisioned Device with Device ID
 */
void mesh_proxy_start_advertising_unprovisioned_device(void);

/**
 * @brief Start Advertising Unprovisioned Device with Device ID
 * @param device_uuid
 */
void mesh_proxy_stop_advertising_unprovisioned_device(void);

/**
 * @brief Set Advertising with Node ID on given subnet
 * @param netkey_index of subnet
 * @return MESH_FOUNDATION_STATUS_SUCCESS, MESH_FOUNDATION_STATUS_FEATURE_NOT_SUPPORTED, or MESH_FOUNDATION_STATUS_INVALID_NETKEY_INDEX
 * @note Node ID is only advertised on one subnet at a time and it is limited to 60 seconds
 */
uint8_t mesh_proxy_set_advertising_with_node_id(uint16_t netkey_index, mesh_node_identity_state_t state);

/**
 * @brief Check if Advertising with Node ID is active
 * @param netey_index of subnet
 * @param out_state current state
 * @return MESH_FOUNDATION_STATUS_SUCCESS or MESH_FOUNDATION_STATUS_INVALID_NETKEY_INDEX
 */
uint8_t mesh_proxy_get_advertising_with_node_id_status(uint16_t netkey_index, mesh_node_identity_state_t * out_state );

/**
 * @brief Start Advertising with Node Identity (on all subnets)
 */
void mesh_proxy_start_advertising_with_node_id(void);

/**
 * @brief Stop Advertising with Node Identity (on all subnets)
 */
void mesh_proxy_stop_advertising_with_node_id(void);

/**
 * @brief Start Advertising with Network ID (on all subnets)
 */
void mesh_proxy_start_advertising_with_network_id(void);

/**
 * @brief Stop Advertising with Network ID (on all subnets)
 */
void mesh_proxy_stop_advertising_with_network_id(void);

/**
 * @brief output filter functions.
 */
int mesh_proxy_filter_check_addr_match(uint16_t addr);
void mesh_proxy_filter_init(void);
void mesh_proxy_filter_check_whitelist_and_add(uint16_t src);

#ifdef __cplusplus
} /* end of extern "C" */
#endif

#endif
