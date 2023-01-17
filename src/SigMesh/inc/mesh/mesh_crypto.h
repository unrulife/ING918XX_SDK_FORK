/*
 *  provisioning.h
 */

#ifndef __MESH_CRYPTO_H
#define __MESH_CRYPTO_H

#include <stdint.h>

#include "btstack_defines.h"
#include "btstack_crypto.h"

#include "mesh/mesh_keys.h"

#ifdef __cplusplus
extern "C"
{
#endif

/**
 * Calculate mesh k1 function
 */
void mesh_k1(btstack_crypto_aes128_cmac_t * request, const uint8_t * n, uint16_t n_len, const uint8_t * salt,
    const uint8_t * p, const uint16_t p_len, uint8_t * result, void (* callback)(void * arg), void * callback_arg);

/**
 * Calculate mesh k2 function
 * @param result 33 bytes (7 bit NID + 16 byte Encryption Key + 16 byte Privacy Key)
 */
void mesh_k2(btstack_crypto_aes128_cmac_t * request, const uint8_t * n, uint8_t * result, void (* callback)(void * arg), void * callback_arg);

/**
 * Calculate mesh k3 function
 */
void mesh_k3(btstack_crypto_aes128_cmac_t * request, const uint8_t * n, uint8_t * result, void (* callback)(void * arg), void * callback_arg);

/**
 * Calculate mesh k4 function
 */
void mesh_k4(btstack_crypto_aes128_cmac_t * request, const uint8_t * n, uint8_t * result, void (* callback)(void * arg), void * callback_arg);

/**
 * Calculate mesh virtual address hash
 * @param request
 * @param label_uuid
 * @param addr
 * @param callback
 * @param callback_arg
 */
void mesh_virtual_address(btstack_crypto_aes128_cmac_t * request, const uint8_t * label_uuid, uint16_t * addr, void (* callback)(void * arg), void * callback_arg);

/**
 * Derive security material from netkey
 * @param request
 * @param network_key
 * @param callback
 * @param callback_arg
 */
void mesh_network_key_derive(btstack_crypto_aes128_cmac_t * request, mesh_network_key_t * network_key, void (* callback)(void * arg), void * callback_arg);

/**
 * Calc AID from AppKey
 * @param request
 * @param transport_key
 * @param callback
 * @param callback_arg
 */
void mesh_transport_key_calc_aid(btstack_crypto_aes128_cmac_t * request, mesh_transport_key_t * app_key, void (* callback)(void * arg), void * callback_arg);


#ifdef __cplusplus
} /* end of extern "C" */
#endif

#endif
