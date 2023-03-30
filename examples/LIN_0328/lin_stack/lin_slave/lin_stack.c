
/*
** COPYRIGHT (c) 2022 by INGCHIPS
*/

#include <stdio.h>
#include <string.h>
#include "lin_phy.h"
#include "lin_cfg.h"
#include "lin_common_api.h"
#include "lin_diagnostic_service.h"
#include "FreeRTOS.h"
#include "task.h"
#include "platform_api.h"
#include "main.h"

#if defined __cplusplus
    extern "C" {
#endif

#define MOTOR_SELECTION_INCREASE (1u)
#define MOTOR_SELECTION_DECREASE (2u)
#define MOTOR_SELECTION_STOP     (3u)

uint16_t timerOverflowInterruptCount = 0U;
volatile bool linEnabled = false;
uint8_t Motor1_Selection = 0U;
uint8_t Motor1_temp = 30U;

/*!
 * @brief LPTMR Interrupt Service Routine
 * The ISR will call LIN timeout service every 500us
 * and will provide the required tick for LIN (every 5 ms)
 */
uint32_t timer_isr(void *user_data)
{
    /* Static variable, used to count if the timeout has passed to
     * provide the LIN scheme tick.
     */
    static uint32_t interruptCount = 0UL;
    /* Timer Interrupt Handler */
    lin_lld_timeout_service(LI0);

    /* Update motor temperature every 0.1s, based on the 
     * motor speed trend. 
     */
    if (++interruptCount >= 200u)
    {
        interruptCount = 0u;

        /* Increase temp */
        if (Motor1_Selection == MOTOR_SELECTION_INCREASE)
        {
            Motor1_temp++;
        }
        /* Decrease temp */
        else if (Motor1_Selection == MOTOR_SELECTION_DECREASE)
        {
            Motor1_temp--;
        }
    }

    /* Increment overflow count */
    timerOverflowInterruptCount++;
    /* Clear compare flag */
    TMR_IntClr(APB_TMR1);
    
    return 0;
}

void lin_tick_init(void)
{
    // 500 us timer
    // setup timer 1: 0.5s (2Hz)
    SYSCTRL_ClearClkGateMulti((1 << SYSCTRL_ClkGate_APB_TMR1));
    TMR_SetCMP(APB_TMR1, TMR_CLK_FREQ / 2000);
    TMR_SetOpMode(APB_TMR1, TMR_CTL_OP_MODE_WRAPPING);
    TMR_IntEnable(APB_TMR1);
    TMR_Reload(APB_TMR1);
    TMR_Enable(APB_TMR1);
    platform_set_irq_callback(PLATFORM_CB_IRQ_TIMER1, timer_isr, NULL);
    return;
}

static void lin_stack_slave_init(void)
{
    lin_tick_init();
    lin_phy_init();
    /* Initialize LIN network interface */
    l_sys_init();
    l_ifc_init(LI0);
    linEnabled = true;
    return;
}

#define TIMER_COMPARE_VAL (uint16_t)(2000U)
#define TIMER_TICKS_1US   (uint16_t)(4U)

#define MOTOR_SELECTION_INCREASE (1u)
#define MOTOR_SELECTION_DECREASE (2u)
#define MOTOR_SELECTION_STOP     (3u)

#define MOTOR1_OVER_TEMP   (200u)
#define MOTOR1_MAX_TEMP    (100u)

uint8_t Motor1_temp;

/*!
 * @brief Interrupt Service Routine for buttons
 * Depending on which buttons were pressed LIN scheme will be
 * set to sleep mode or normal mode.
 */
void BTNPORT_IRQHandler(void)
{
//    /* If SW2/Button 1 is pressed */
//    if (PINS_DRV_GetPortIntFlag(BTN_PORT_NAME) & (1 << PORT_BTN0_INDEX))
//    {
//        PINS_DRV_ClearPinIntFlagCmd(BTN_PORT_NAME, PORT_BTN0_INDEX);
//        if (Motor1_temp < 255U)
//        {
//          Motor1_temp += 60U;
//        }
//    }

//    /* If SW3/Button 2 is pressed */
//    if (PINS_DRV_GetPortIntFlag(BTN_PORT_NAME) & (1 << PORT_BTN1_INDEX))
//    {
//        PINS_DRV_ClearPinIntFlagCmd(BTN_PORT_NAME, PORT_BTN1_INDEX);
//        Motor1_temp = 30U;
//    }
}

static void lin_stack_slave_task_run(void)
{
    /* Infinite loop */
    for (; ; )
    {
        /* Check if temp signal is updated */
        if (l_flg_tst_LI0_Motor1Selection_flag())
        {
            /* Clear this flag... */
            l_flg_clr_LI0_Motor1Selection_flag();

            /* Store selection data */
            Motor1_Selection = l_u8_rd_LI0_Motor1Selection();

            /* The application will change Motor selection in case
            the temperature is greater than maximum value to release motor power
            This will be transfered by unconditional frame type in LIN bus */
            l_u8_wr_LI0_Motor1Temp(Motor1_temp);

            /* Check if power off motor due to high temperature */
            if (Motor1_Selection == MOTOR_SELECTION_STOP)
            {
            }

            if (Motor1_Selection == MOTOR_SELECTION_INCREASE)
            {
            }

            if (Motor1_Selection == MOTOR_SELECTION_DECREASE)
            {
            }
        }

        /* Check node state */
        if (LIN_NODE_STATE_SLEEP_MODE == lin_lld_get_state(LI0))
        {
        }
    }
    return;
}

void lin_task(void *pdata)
{
    /* Initialize LIN network interface */
    lin_stack_slave_init();
    lin_stack_slave_task_run();
}

#include "peripherals_LPTMR_0.h"
/*!
 * @brief Callback function to get time interval in nano seconds
 * @param[out] ns - number of nanoseconds passed since the last call of the function
 * @return dummy value
 */
uint32_t lin0TimerGetTimeIntervalCallback0(uint32_t *ns)
{
    static uint32_t previousCountValue = 0UL;
    uint32_t counterValue;

    counterValue = LPTMR_DRV_GetCounterValueByCount(INST_LPTMR_0);
    *ns = ((uint32_t)(counterValue + timerOverflowInterruptCount * TIMER_COMPARE_VAL - previousCountValue)) * 1000 / TIMER_TICKS_1US;
    timerOverflowInterruptCount = 0UL;
    previousCountValue = counterValue;
    return 0UL;
}

#if defined __cplusplus
    }
#endif

