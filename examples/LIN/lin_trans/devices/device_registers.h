
#ifndef DEVICE_REGISTERS_H
#define DEVICE_REGISTERS_H

#include "ingsoc.h"

#if (INGCHIPS_FAMILY == INGCHIPS_FAMILY_916)
    #error "add 916 header!"
#elif (INGCHIPS_FAMILY == INGCHIPS_FAMILY_918)
    #define DISABLE_INTERRUPTS __disable_irq
    #define ENABLE_INTERRUPTS  __enable_irq
    #include "ING91870CQ.h"
#else
    #error "No valid CPU defined!"
#endif

#include "devassert.h"

#endif

