/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __GPS_H
#define __GPS_H

#ifdef __cplusplus
    extern "C" {
#endif

/* Exported macro ------------------------------------------------------------*/
/* Includes ------------------------------------------------------------------*/

#include "stm8s.h"

/* Exported define -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/

/**
 * 暂时不用
 **/
// typedef enum {
// //   CLK_CSSCONFIG_ENABLEWITHIT = (uint8_t)0x05, /*!< Enable CSS with detection interrupt */
// //   CLK_CSSCONFIG_ENABLE    = (uint8_t)0x01, /*!< Enable CSS without detection interrupt */
// //   CLK_CSSCONFIG_DISABLE      = (uint8_t)0x00  /*!< Leave CSS desactivated (to be used in CLK_Init() function) */
//     GPS_TIMEVALID_
// } GPS_TimeValid_TypeDef;

typedef struct
{
    uint32_t    runTime;    //单位ms
    float       tAcc;       //单位s^2
    float       msErr;      //单位ms
    uint16_t    ms;
    uint16_t    year;
    uint8_t     month;
    uint8_t     day;
    uint8_t     hour;
    uint8_t     min;
    uint8_t     sec;
    uint8_t     valid;      //时间有效标志
    uint8_t     timeSrc;    //授时系统标志
    uint8_t     dateValid;  //日期有效标志
}GPS_TimeDataTypeDef;

/* Exported functions --------------------------------------------------------*/

void GPS_Init(void);
void GPS_GetTime(void);
INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18);


#ifdef __cplusplus
}
#endif

#endif /*__GPS_H */