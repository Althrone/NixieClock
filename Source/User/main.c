/**
 * 
 **/

/* Includes ------------------------------------------------------------------*/

#include "main.h"

/* Private macro -------------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/

#define DELAY_20MS  5
#define DELAY_2S    500
#define DELAY_10S   2500

/* Private typedef -----------------------------------------------------------*/
/* Public variables ----------------------------------------------------------*/

extern DS3231_TimeTypeDef DS3231_TimeSturcture;
extern GPS_TimeDataTypeDef GPS_TimeDataSturcture;
extern FunctionalState tube_state;
extern FlagStatus gps_first_send;

/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

uint16_t ir_delay;//显示时分维持时间
uint8_t ir_double_click_delay;//双击的间隔时间
FlagStatus nixie_always_on=RESET;//双击常亮标志

int main(void)
{
    // CLK_DeInit();
    CLK_HSECmd(ENABLE);
    CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO,CLK_SOURCE_HSE,DISABLE,CLK_CURRENTCLOCKSTATE_DISABLE);//8MHz

    //PD外部中断
    ITC_SetSoftwarePriority(ITC_IRQ_PORTD,ITC_PRIORITYLEVEL_1);
    EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_ONLY);
    GPIO_Init(GPIOD,GPIO_PIN_2,GPIO_MODE_IN_FL_IT);

    //key
    GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_IN_PU_IT);//GPIO_PIN_3
    EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC,EXTI_SENSITIVITY_FALL_ONLY);
    rim();

    GPS_Init();//PD5 PD6

    NIXIE_Init();//PC5 PC6 PC7
    ir_delay=DELAY_10S;

    DS3231_Init();

    //tim4
    TIM4_TimeBaseInit(TIM4_PRESCALER_128,250);//4ms
    TIM4_ITConfig(TIM4_IT_UPDATE,ENABLE);
    TIM4_ARRPreloadConfig(ENABLE);
    ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF,ITC_PRIORITYLEVEL_1);
    TIM4_Cmd(ENABLE);

    // while(gps_first_send==RESET);
    // DS3231_GPSSetTime();
    
    while(1)
    {
        // BEEP_Cmd(DISABLE);
        // NIXIE_DisplayTime(GPS_TimeDataSturcture.hour,GPS_TimeDataSturcture.min);
        NIXIE_DisplayTime(DS3231_TimeSturcture.hours,DS3231_TimeSturcture.minutes);
        DS3231_GetTime();
        // if((DS3231_TimeSturcture.minutes%10==3)&&(DS3231_TimeSturcture.seconds<=2))
        if((DS3231_TimeSturcture.minutes%10==0)&&(DS3231_TimeSturcture.seconds==0))
            ir_delay=DELAY_10S;

    }
}



uint16_t key_delay_2s;//状态机维持时间

//变量命名方法：归属的设备类_变量名字_变量类型
KEY_StateMachine_TypeDef KEY_StateMachine_Enumeration=KEY_STATEMACHINE_Base;

void TIM4_UPD_OVF_IRQHandler(void) __interrupt(23)
{
    // tube_state=DISABLE;
    if(TIM4_GetITStatus(TIM4_IT_UPDATE)==SET)
    {
        // if(key_delay_2s>0)
        //     --key_delay_2s;
        // if(key_delay_2s==0)
        // {
        //     //状态机
        //     // KEY_StateMachine_Enumeration=KEY_STATEMACHINE_ShowHourMin;
        //     ir_delay=2500;
        // }

        if(ir_double_click_delay>0)//双击计时
            --ir_double_click_delay;
        // else
        // {
        //     //
        // }

        if(ir_delay>0)
        {
            --ir_delay;
            tube_state=ENABLE;
        }
        if((ir_delay==0)&&(nixie_always_on==RESET))
        {
            //熄灯
            tube_state=DISABLE;
            // KEY_StateMachine_Enumeration=KEY_STATEMACHINE_Base;
        }
        TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
    }
}


/**
 * @brief   PA外部中断，包括key2
 * @note    PA3外部中断，key2按键触发
 **/
void EXTI_PORTA_IRQHandler(void) __interrupt(3)
{
    // //加个消抖
    // //key2状态机
    // switch (KEY_StateMachine_Enumeration)
    // {
    // case KEY_STATEMACHINE_Base://基础模式下按下key2，进入显示时分模式
    //     KEY_StateMachine_Enumeration=KEY_STATEMACHINE_ShowHourMin;
    //     //显示时分
    //     break;
    // case KEY_STATEMACHINE_ShowHourMin://显示时分模式下按下key2，进入显示年份
    //     KEY_StateMachine_Enumeration=KEY_STATEMACHINE_ShowYear;
    //     //显示年份
    //     break;
    // case KEY_STATEMACHINE_ShowYear://显示年份模式下按下key2，进入显示月日
    //     KEY_StateMachine_Enumeration=KEY_STATEMACHINE_ShowMonDay;
    //     //显示月日
    //     break;
    // case KEY_STATEMACHINE_ShowMonDay://显示月日模式下按下key2，进入显示时分
    //     KEY_StateMachine_Enumeration=KEY_STATEMACHINE_ShowHourMin;
    //     //显示时分
    //     break;
    // /************简单显示类结束************/
    // case KEY_STATEMACHINE_CalHour://在校正小时的状态下按下key2
    //     KEY_StateMachine_Enumeration=KEY_STATEMACHINE_CalMin;
    //     //校正分钟
    //     break;
    // case KEY_STATEMACHINE_CalMin://在校正分钟的状态下按下key2
    //     KEY_StateMachine_Enumeration=KEY_STATEMACHINE_CalYear;
    //     //校正年份
    //     break;
    // case KEY_STATEMACHINE_CalYear://在校正年份的状态下按下key2
    //     KEY_StateMachine_Enumeration=KEY_STATEMACHINE_CalMon;
    //     //校正月份
    //     break;
    // case KEY_STATEMACHINE_CalMon://在校正月份的状态下按下key2
    //     KEY_StateMachine_Enumeration=KEY_STATEMACHINE_CalDay;
    //     //校正日期
    //     break;
    // case KEY_STATEMACHINE_CalDay://在校正日期的状态下按下key2
    //     KEY_StateMachine_Enumeration=KEY_STATEMACHINE_GPSTime;
    //     //获取GPS时间
    //     break;
    
    // default:
    //     break;
    // }
    // key_delay_2s=DELAY_2S;//状态统一维持两秒
    // //长按显示世界线
}

/**
 * @brief   PC外部中断，包括key3和key4
 * @note    PC3外部中断，key4按键触发
 * @note    PC4外部中断，key3按键触发
 **/
void EXTI_PORTC_IRQHandler(void) __interrupt(5)
{
    if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_3)==RESET)
    {
        //key4状态机
        key_delay_2s=DELAY_2S;
    }
    else if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_4)==RESET)
    {
        //key3状态机
        key_delay_2s=DELAY_2S;
    }
}

/**
 * @brief   PD外部中断，包括红外和key1
 * @note    PD2外部中断，红外触发，控制阳极接通，显示10s
 * @note    PD3外部中断，key1按键触发
 **/
void EXTI_PORTD_IRQHandler(void) __interrupt(6)
{
    if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_2)==RESET)
    {
        //控制阳极脚高电平
        tube_state=ENABLE;
        // KEY_StateMachine_Enumeration=KEY_STATEMACHINE_ShowHourMin;//无条件转跳到显示小时分钟
        ir_delay=DELAY_10S;
        if(ir_double_click_delay>0)//相当于20ms内又触发了红外
        {
            nixie_always_on=~nixie_always_on;
            ir_double_click_delay=0;
        }
        else
            ir_double_click_delay=DELAY_2S;
    }
    else if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_3)==RESET)//key1
    {
        // //加个消抖
        // //key1状态机
        // if(KEY_StateMachine_Enumeration==KEY_STATEMACHINE_Base)
        // {
        //     //基础模式下按下key1，进入小时校正模式
        //     KEY_StateMachine_Enumeration=KEY_STATEMACHINE_CalHour;
        //     //校正小时
        //     key_delay_2s=DELAY_2S;
        // }
        // else if((KEY_StateMachine_Enumeration==KEY_STATEMACHINE_CalHour)&&(KEY_StateMachine_Enumeration==KEY_STATEMACHINE_CalMin))
        // {
        //     //所有校正模式下再次按下key1就是确认写入
        // }

        // switch (KEY_StateMachine_Enumeration)
        // {
        // case KEY_STATEMACHINE_GPSTime://GPS校时模式下按下key1
        //     //显示卫星数量（大于一即可）2s
        //     //疯狂刷新，显示秒和毫秒
        //     break;
        
        // default:
        //     break;
        // }
    }
}

/* Private functions ---------------------------------------------------------*/