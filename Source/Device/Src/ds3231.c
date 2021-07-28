/**
 *******************************************************************************
 * @file    Source/Driver/Src/uart.c
 * @brief   驱动层，串口驱动配置
 * Date         Author          Notes
 * 15/04/2021   Althrone        
 *******************************************************************************
 **/

/* Includes ------------------------------------------------------------------*/

#include "ds3231.h"

/* Private macro -------------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private typedef -----------------------------------------------------------*/
/* Public variables ----------------------------------------------------------*/

uint8_t DS3231_Buf[8]={0};
DS3231_TimeTypeDef DS3231_TimeSturcture;
extern GPS_TimeDataTypeDef GPS_TimeDataSturcture;

/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

/**
 * @brief   DS3231初始化
 **/
void DS3231_Init(void)
{
    I2C_Init();
}

void DS3231_GetTime(void)
{
    for(int i=0;i<7;++i)
    {
        I2C_MasterReceiveData(DS3231_ADDR,DS3231_SECONDS+i,
                              &DS3231_Buf[i],1);
    }

    // I2C_MasterReceiveData(DS3231_ADDR,DS3231_SECONDS,DS3231_Buf,7);
    
    DS3231_TimeSturcture.seconds=(DS3231_Buf[0]&0x0F)+((DS3231_Buf[0]&0xF0)>>4)*10;
    DS3231_TimeSturcture.minutes=(DS3231_Buf[1]&0x0F)+((DS3231_Buf[1]&0xF0)>>4)*10;
    DS3231_TimeSturcture.hours=(DS3231_Buf[2]&0x0F)+((DS3231_Buf[2]&0xF0)>>4)*10;
    DS3231_TimeSturcture.day=(DS3231_Buf[3]&0x0F);
    DS3231_TimeSturcture.date=(DS3231_Buf[4]&0x0F)+((DS3231_Buf[4]&0xF0)>>4)*10;
    DS3231_TimeSturcture.month=(DS3231_Buf[5]&0x0F)+((DS3231_Buf[5]&0xF0)>>4)*10;
    DS3231_TimeSturcture.year=2000+(DS3231_Buf[6]&0x0F)+((DS3231_Buf[6]&0xF0)>>4)*10;
}

void DS3231_GPSSetTime(void)
{
    uint8_t tmp[7]={0};
    tmp[0]=(((GPS_TimeDataSturcture.sec+3)/10)<<4)|((GPS_TimeDataSturcture.sec+3)%10);
    tmp[1]=((GPS_TimeDataSturcture.min/10)<<4)|(GPS_TimeDataSturcture.min%10);
    tmp[2]=((GPS_TimeDataSturcture.hour/10)<<4)|(GPS_TimeDataSturcture.hour%10);//24小时制
    tmp[3]=2;//这个自己设置，gps信号里面没有
    tmp[4]=((GPS_TimeDataSturcture.day/10)<<4)|(GPS_TimeDataSturcture.day%10);
    tmp[5]=((GPS_TimeDataSturcture.month/10)<<4)|(GPS_TimeDataSturcture.month%10);//世纪位我这辈子都用不到了
    tmp[6]=((GPS_TimeDataSturcture.month%100/10)<<4)|(GPS_TimeDataSturcture.month%10);
    I2C_MasterSendData(DS3231_ADDR,DS3231_SECONDS,tmp,sizeof(tmp));
}

/* Private functions ---------------------------------------------------------*/