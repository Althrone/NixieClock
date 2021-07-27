#ifndef __MAIN_H
#define __MAIN_H

/* Includes ------------------------------------------------------------------*/

#include "stm8s.h"
#include "gps.h"
#include "nixie.h"
#include "ds3231.h"

/* Exported types ------------------------------------------------------------*/

typedef enum
{
    KEY_STATEMACHINE_Base,//基础模式，led继续亮，但是不显示
    //校准类
    KEY_STATEMACHINE_CalHour,//校准小时
    KEY_STATEMACHINE_CalMin,
 // KEY_STATEMACHINE_CalSec,
    KEY_STATEMACHINE_CalYear,
    KEY_STATEMACHINE_CalMon,
    KEY_STATEMACHINE_CalDay,
    KEY_STATEMACHINE_GPSTime,//获取GPS时间校准
    //显示类
    KEY_STATEMACHINE_ShowHourMin,//显示小时和分钟
    KEY_STATEMACHINE_ShowYear,
    KEY_STATEMACHINE_ShowMonDay,
    KEY_STATEMACHINE_ShowWorldLine,//显示世界线，先洗牌，然后滚动显示两次

    KEY_STATEMACHINE_CountDown,//倒计时
    KEY_STATEMACHINE_AlarmClock,//闹钟模式
    KEY_STATEMACHINE_,
}KEY_StateMachine_TypeDef;

/* Exported constants --------------------------------------------------------*/

/* Exported macros -----------------------------------------------------------*/

/* Private macros ------------------------------------------------------------*/

/* Exported functions ------------------------------------------------------- */

#endif /* __MAIN_H */