/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __DS3231_H
#define __DS3231_H

#ifdef __cplusplus
    extern "C" {
#endif

/* Exported macro ------------------------------------------------------------*/
/* Includes ------------------------------------------------------------------*/

#include "soft_i2c.h"
#include "gps.h"

/* Device Address ------------------------------------------------------------*/

#define DS3231_ADDR             0x68

/* Memory Map ----------------------------------------------------------------*/

#define DS3231_SECONDS          0x00
#define DS3231_MINUTES          0x01
#define DS3231_HOURS            0x02
#define DS3231_DAY              0x03
#define DS3231_DATE             0x04
#define DS3231_MONTH_CENTURY    0x05
#define DS3231_YEAR             0x06

#define DS3231_ALARM_1_SECONDS  0x07
#define DS3231_ALARM_1_MINUTES  0x08
#define DS3231_ALARM_1_HOURS    0x09
#define DS3231_ALARM_1_DAY_DATE 0x0A

#define DS3231_ALARM_2_MINUTES  0x0B
#define DS3231_ALARM_2_HOURS    0x0C
#define DS3231_ALARM_2_DAY_DATE 0x0D

#define DS3231_CONTROL          0x0E
#define DS3231_STATUS           0x0F
#define DS3231_AGING_OFFSET     0x10
#define DS3231_TEMPERATURE_MSB  0x11
#define DS3231_TEMPERATURE_LSB  0x12

/* Register Bit --------------------------------------------------------------*/

#define DS3231_CONTROL_A1IE     1<<0
#define DS3231_CONTROL_A2IE     1<<1
#define DS3231_CONTROL_INTCN    1<<2
// #define DS3231_CONTROL_ 1<<3
// #define DS3231_CONTROL_ 1<<4
#define DS3231_CONTROL_CONV     1<<5
#define DS3231_CONTROL_BBSQW    1<<6
#define DS3231_CONTROL_EOSC     1<<7

/* Exported define -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/

typedef struct
{
    uint8_t seconds;
    uint8_t minutes;
    uint8_t hours;
    uint8_t day;
    uint8_t date;
    uint8_t month;
    uint16_t year;
}DS3231_TimeTypeDef;


/* Exported functions --------------------------------------------------------*/

void DS3231_Init(void);
void DS3231_GetTime(void);
void DS3231_GPSSetTime(void);


#ifdef __cplusplus
}
#endif

#endif /*__DS3231_H */