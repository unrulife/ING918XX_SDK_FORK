#ifndef __MESH_VIRTUAL_ADDRESSES_H
#define __MESH_VIRTUAL_ADDRESSES_H

#include <stdint.h>

#include "mesh_linked_list.h"

#ifdef __cplusplus
extern "C"
{
#endif

typedef struct {
	mesh_linked_item_t item;
    uint16_t pseudo_dst;
    uint16_t hash;
    uint16_t ref_count;
    uint8_t  label_uuid[16];
} mesh_virtual_address_t;

typedef struct {
	mesh_linked_list_iterator_t it;
	uint16_t hash;
	mesh_virtual_address_t * address;
} mesh_virtual_address_iterator_t;

// virtual address management

uint16_t mesh_virtual_addresses_get_free_pseudo_dst(void);

void mesh_virtual_address_add(mesh_virtual_address_t * virtual_address);

void mesh_virtual_address_remove(mesh_virtual_address_t * virtual_address);

mesh_virtual_address_t * mesh_virtual_address_register(uint8_t * label_uuid, uint16_t hash);

mesh_virtual_address_t * mesh_virtual_address_for_pseudo_dst(uint16_t pseudo_dst);

mesh_virtual_address_t * mesh_virtual_address_for_label_uuid(uint8_t * label_uuid);

// virtual address iterator

void mesh_virtual_address_iterator_init(mesh_virtual_address_iterator_t * it, uint16_t hash);

int mesh_virtual_address_iterator_has_more(mesh_virtual_address_iterator_t * it);

const mesh_virtual_address_t * mesh_virtual_address_iterator_get_next(mesh_virtual_address_iterator_t * it);


#ifdef __cplusplus
} /* end of extern "C" */
#endif

#endif
