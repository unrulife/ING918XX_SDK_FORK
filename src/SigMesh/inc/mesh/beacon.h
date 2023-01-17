#ifndef __BEACON_H
#define __BEACON_H

#include <stdint.h>

#include "btstack_defines.h"

#include "mesh/mesh_keys.h"
#include "mesh/mesh_network.h"

#if defined __cplusplus
extern "C" {
#endif


/**
 * Initialize Mesh Beacon
 */
void beacon_init(void);

/**
 * Start Unprovisioned Device Beacon
 */
void beacon_unprovisioned_device_start(const uint8_t * device_uuid, uint16_t oob_information);

/**
 * Stop Unprovisioned Device Beacon
 */
void beacon_unprovisioned_device_stop(void);

/**
 * Start sending Secure Network Beacons on given subnet
 * @param mesh_subnet
 */
void beacon_secure_network_start(mesh_subnet_t * mesh_subnet);

/**
 * Register Beacon handler for unprovisioned device beacons
 */
void beacon_register_for_unprovisioned_device_beacons(btstack_packet_handler_t packet_handler);

/**
 * Register Beacon handler for secure network beacons
 */
void beacon_register_for_secure_network_beacons(btstack_packet_handler_t packet_handler);

#if defined __cplusplus
}
#endif

#endif // __BEACON_H
