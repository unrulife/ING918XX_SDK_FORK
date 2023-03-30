
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
#include "key.h"
#if defined __cplusplus
    extern "C" {
#endif

#define LED_3           GIO_GPIO_6

uint16_t timerOverflowInterruptCount = 0U;

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
    static uint32_t timer_cnt = 0;

    TMR_IntClr(APB_TMR1);
    /* Timer Interrupt Handler */
    lin_lld_timeout_service(LI0);

    /* If 5 ms have passed, provide the required tick */
    if(++interruptCount == 10UL)
    {
        l_sch_tick(LI0);
        interruptCount = 0UL;
    }

    /* Increment overflow count */
    timerOverflowInterruptCount++;
    /* Clear compare flag */
    //LPTMR_DRV_ClearCompareFlag(INST_LPTMR_0);
    timer_cnt++;
    if (timer_cnt >= 2000 * 10) {
        printf("10s hd tmr\r\n");
        timer_cnt = 0;
    }
    return 0;
}

void lin_tick_init(void)
{
    // 500 us timer
    // setup timer 1: 200hz
    SYSCTRL_ClearClkGateMulti((1 << SYSCTRL_ClkGate_APB_TMR1));
    TMR_SetCMP(APB_TMR1, TMR_CLK_FREQ / 2000);
    TMR_SetOpMode(APB_TMR1, TMR_CTL_OP_MODE_WRAPPING);
    TMR_IntEnable(APB_TMR1);
    TMR_Reload(APB_TMR1);
    TMR_Enable(APB_TMR1);
    platform_set_irq_callback(PLATFORM_CB_IRQ_TIMER1, timer_isr, NULL);
    return;
}

static void lin_stack_init(void)
{
    lin_tick_init();
    lin_phy_init();
    /* Initialize LIN network interface */
    l_sys_init();
    l_ifc_init(LI0);
    /* Set Schedule table to Normal */
    l_sch_set(LI0, LI0_NormalTable, 0u);
    /* Infinite loop */
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

void lin_led_init(void)
{
    PINCTRL_SetPadMux(LED_3, IO_SOURCE_GENERAL);
    GIO_SetDirection(LED_3, GIO_DIR_OUTPUT);
    GIO_WriteValue(LED_3, 1);      
}

static void lin_stack_master_task_run(void)
{
    for (;;)
    {
        vTaskDelay(pdMS_TO_TICKS(1));
        //printf("lin_stack_master_task_run\r\n");
        /* Check if information about the Motor1 Temp has been received */
        if (l_flg_tst_LI0_Motor1Temp_flag())
        {
            /* Clear this flag... */
            temp_printf("l_flg_tst_LI0_Motor1Temp_flag\r\n");
            l_flg_clr_LI0_Motor1Temp_flag();

            /* Store temperature data */
            Motor1_temp = l_u8_rd_LI0_Motor1Temp();

            /* Request stop motor by power off */
            if (MOTOR1_OVER_TEMP < Motor1_temp)
            {
                l_u8_wr_LI0_Motor1Selection(MOTOR_SELECTION_STOP);
                /* Turn on Red LED */
                /* Turn off Blue LED */
                /* Turn off Green LED */
            }
            /* Request to reduce motor speed */
            else if ((MOTOR1_MAX_TEMP < Motor1_temp) && (MOTOR1_OVER_TEMP > Motor1_temp))
            {
                l_u8_wr_LI0_Motor1Selection(MOTOR_SELECTION_DECREASE);
                /* Turn on Blue LED */
                /* Turn off Red LED */
                /* Turn off Green LED */
            }
            /* Request to increase motor speed if users request */
            else
            {
                l_u8_wr_LI0_Motor1Selection(MOTOR_SELECTION_INCREASE);
                /* Turn on Green LED */
                /* Turn off Red LED */
                /* Turn off Blue LED */
            }
        }
         /* Check node state */
        if (LIN_NODE_STATE_SLEEP_MODE == lin_lld_get_state(LI0))
        {
            /* Turn off all LEDs */
        }
    }
    return;
}

void lin_task(void *pdata)
{
    __disable_irq();
    __enable_irq();
    lin_led_init();
    lin_key_init();
    lin_stack_init();
	printf("hello\r\n");
    lin_stack_master_task_run();
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

