/**
 *******************************************************************************
 * @file    Source/Driver/Src/uart.c
 * @brief   驱动层，串口驱动配置
 * Date         Author          Notes
 * 15/04/2021   Althrone        
 *******************************************************************************
 **/

/* Includes ------------------------------------------------------------------*/

#include "button.h"

/* Private macro -------------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private typedef -----------------------------------------------------------*/
/* Public variables ----------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

/**
 * @brief   按键初始化
 * @note    K1--PC4
 * @note    K2--PA3
 * @note    K3--PD2
 * @note    K4--PD3
 **/
void BUTTON_Init(void)
{
    GPIO_Init(GPIOC,GPIO_PIN_4,GPIO_MODE_IN_FL_IT);
    EXTI_SetExtIntSensitivity(GPIOC,EXTI_SENSITIVITY_RISE_ONLY);
    GPIO_Init(GPIOA,GPIO_PIN_3,GPIO_MODE_IN_FL_IT);
    EXTI_SetExtIntSensitivity(GPIOA,EXTI_SENSITIVITY_RISE_ONLY);
    GPIO_Init(GPIOD,GPIO_PIN_2,GPIO_MODE_IN_FL_IT);
    GPIO_Init(GPIOD,GPIO_PIN_3,GPIO_MODE_IN_FL_IT);
    EXTI_SetExtIntSensitivity(GPIOD,EXTI_SENSITIVITY_RISE_ONLY);
}

/**
  * @brief  External Interrupt PORTC Interrupt routine
  * @param  None
  * @retval None
  */
INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
{
    //消抖
}

/**
  * @brief  External Interrupt PORTA Interrupt routine
  * @param  None
  * @retval None
  */
INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)//+
{
    //延时消抖
    if(GPIO_ReadInputPin(GPIOA,GPIO_PIN_3)==SET)
    {
        //根据状态来判断进入哪个状态
    }
    //stm8貌似没有清除外部中断标志位这种东西
}



/**
  * @brief  External Interrupt PORTD Interrupt routine
  * @param  None
  * @retval None
  */
INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)//PD2 -
{
    //消抖
    //这里要弄两个按钮的判断
}

/* Private functions ---------------------------------------------------------*/