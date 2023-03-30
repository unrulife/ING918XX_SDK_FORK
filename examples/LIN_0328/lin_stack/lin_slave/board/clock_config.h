#ifndef CLOCK_CONFIG_H
#define CLOCK_CONFIG_H

#include "clock.h"
#include <stdbool.h>
#include <stdint.h>


/**
 * @page misra_violations MISRA-C:2012 violations
 *
 * @section [global]
 * Violates MISRA 2012 Advisory Rule 2.5, Global macro not referenced.
 * Application or driver example may not use all symbols that are 
 * generated by configurations generator.
 *
 * @section [global]
 * Violates MISRA 2012 Advisory Rule 8.11, When an array with external linkage
 * is declared, its size should be explicitly specified.
 * The number of configurations/callbacks can be zero. 
 * On the other side C language forbids declaring array of size zero.
 *
 * @section [global]
 * Violates MISRA 2012 Advisory Rule 8.7, External variable could be made static.
 * The external variables will be used in other source files in application code.
 *
 */

/*! @brief Count of user configuration structures */
#define CLOCK_MANAGER_CONFIG_CNT                           1U /*!< Count of user configuration */

/*! @brief Count of user Callbacks structures */
#define CLOCK_MANAGER_CALLBACK_CNT                         0U /*!< Count of user Callbacks */


/*! @brief Count of peripheral clock user configuration 0*/
#define NUM_OF_PERIPHERAL_CLOCKS_0                         31U /* Count of peripheral clock user configurations. */

/*! @brief User configuration structure 0*/
extern clock_manager_user_config_t clockMan1_InitConfig0;

/*! @brief User peripheral configuration structure 0*/
extern peripheral_clock_config_t peripheralClockConfig0[NUM_OF_PERIPHERAL_CLOCKS_0];

/*! @brief Array of User callbacks */
/* The tool do not support generate Callbacks configuration. It's always empty. */
extern clock_manager_callback_user_config_t *g_clockManCallbacksArr[];

/*! @brief Array of pointers to User configuration structures */
extern clock_manager_user_config_t const *g_clockManConfigsArr[CLOCK_MANAGER_CONFIG_CNT];

#endif /* CLOCK_CONFIG_H */
