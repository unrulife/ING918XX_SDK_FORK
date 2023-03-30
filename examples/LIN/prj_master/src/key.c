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

static void key_pressed_callback(uint8_t *num){
    btstack_push_user_msg(USER_MSG_ID_KEY_PRESSED_EVENT, num, 1);
}

static void key_released_callback(uint8_t *num){
    btstack_push_user_msg(USER_MSG_ID_KEY_RELEASED_EVENT, num, 1);
}

static void kb_state_changed(uint16_t key_state)
{
    static uint8_t key_pressed[4] = {1,2,4,8};
    static uint8_t key_old[4] = {0,0,0,0};
    uint8_t flag[1] = {0};
    uint16_t i=0;
    for(i=0; i<4; i++){
        if(key_state & key_pressed[i]){
            if(!key_old[i]){
                key_old[i] = 1;
                // key pressed callback.
                flag[0] = i+1;
                key_pressed_callback(flag);
            }
        } else {
            if(key_old[i]){
                key_old[i] = 0;
                // key released callback.
                flag[0] = i+1;                
                key_released_callback(flag);
            }
        }
    }
}

static uint32_t gpio_isr(void *user_data)
{
    uint32_t current = ~GIO_ReadAll();
    uint16_t v = 0;
    // report which keys are pressed
    if (current & (1 << KB_KEY_2))
        v |= 2;
    if (current & (1 << KB_KEY_3))
        v |= 4;
    kb_state_changed(v);

    GIO_ClearAllIntStatus();
    return 0;
}


void button_msg_handler(btstack_user_msg_t * usrmsg)
{
    uint32_t id = usrmsg->msg_id;
    uint8_t val = *(uint8_t *)usrmsg->data;
    switch(id)
    {
        case USER_MSG_ID_KEY_PRESSED_EVENT:
            if(val == KEY_VALUE_2)
            {
                printf("key2 goto sleep\r\n");               
                l_sch_set(LI0, LI0_GOTO_SLEEP_SCHEDULE, 0u);
            }
            
            if(val == KEY_VALUE_3)
            {
                printf("key3 Switch to normal\r\n");                  
                l_ifc_wake_up(LI0);
                l_sch_set(LI0, LI0_NormalTable, 0u);
            }
            break;
         
        case USER_MSG_ID_KEY_RELEASED_EVENT:
            break;
        default:
            break;      
    }
   
}

void lin_key_init(void)
{
    
    SYSCTRL_ClearClkGateMulti(  
                            (1 << SYSCTRL_ClkGate_APB_GPIO0) |
                            (1 << SYSCTRL_ClkGate_APB_GPIO1) |
                            (1 << SYSCTRL_ClkGate_APB_PinCtrl)
                            );
    PINCTRL_SetPadMux(KB_KEY_2, IO_SOURCE_GPIO);
    PINCTRL_SetPadMux(KB_KEY_3, IO_SOURCE_GPIO);
    GIO_SetDirection(KB_KEY_2, GIO_DIR_INPUT);
    GIO_SetDirection(KB_KEY_3, GIO_DIR_INPUT);    
    GIO_ConfigIntSource(KB_KEY_2, GIO_INT_EN_LOGIC_LOW_OR_FALLING_EDGE , GIO_INT_EDGE);
    GIO_ConfigIntSource(KB_KEY_3, GIO_INT_EN_LOGIC_LOW_OR_FALLING_EDGE ,GIO_INT_EDGE);
    platform_set_irq_callback(PLATFORM_CB_IRQ_GPIO, gpio_isr, NULL);

}

