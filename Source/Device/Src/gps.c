/**
 *******************************************************************************
 * @file    Source/Driver/Src/uart.c
 * @brief   GPS设备相关
 * Date         Author          Notes
 * 15/04/2021   Althrone        
 *******************************************************************************
 **/

/* Includes ------------------------------------------------------------------*/

#include "gps.h"

/* Private macro -------------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private typedef -----------------------------------------------------------*/
/* Public variables ----------------------------------------------------------*/

uint8_t GPS_RxBuf[34]={0};
GPS_TimeDataTypeDef GPS_TimeDataSturcture;
FlagStatus gps_first_send=RESET;

/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/

static ErrorStatus checksum(void);

/* Public functions ----------------------------------------------------------*/

/**
 * @brief   GPS初始化，使用uart1接口，CSIP协议
 **/
void GPS_Init(void)
{
    GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);
    GPIO_Init(GPIOD,GPIO_PIN_6,GPIO_MODE_IN_FL_NO_IT);
    UART1_DeInit();
    UART1_Init((uint32_t)9600,
               UART1_WORDLENGTH_8D,
               UART1_STOPBITS_1,
               UART1_PARITY_NO,
               UART1_SYNCMODE_CLOCK_DISABLE,
               UART1_MODE_TXRX_ENABLE);
    UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
    UART1_ITConfig(UART1_IT_IDLE,ENABLE);
    UART1_Cmd(ENABLE);
    
    //发送开启CASIC命令和关闭NMEA命令
    uint8_t open_nav_timeutc[]={0xBA,0xCE,0x04,0x00,0x06,0x01,0x01,0x10,0x01,0x00,0x05,0x10,0x07,0x01};
    uint8_t close_all_nmea[]={'$','C','C','R','M','O',',',',','3',',','*','4','F',0x0D,0x0A};//$CCRMO,,3,*4F 其实字符串也不是不可以，只是为了省一个字节而已
    // uint8_t set_rate[]={'$','P','C','A','S','0','2',',','1','0','0','0','*','2','E',0x0D,0x0A};//$PCAS02,1000*1E

    for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
    {
        while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
        UART1_SendData8(close_all_nmea[i]);
    }

    // for(uint8_t i=0;i<sizeof(set_rate);++i)
    // {
    //     while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
    //     UART1_SendData8(set_rate[i]);
    // }

    for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
    {
        while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
        UART1_SendData8(open_nav_timeutc[i]);
    }
}

/**
 * @brief   将数组中的数据转存到结构体
 **/
void GPS_GetTime(void)
{
    // for(int i=0;i<24;++i)
    //     ((uint8_t*)(&GPS_TimeDataSturcture))[i]=GPS_RxBuf[6+i];
    for(int i=0;i<8;++i)
        ((uint8_t*)(&GPS_TimeDataSturcture))[i+16]=GPS_RxBuf[22+i];
    if(GPS_TimeDataSturcture.hour+8>24)
        GPS_TimeDataSturcture.hour+=8-24;
    else
        GPS_TimeDataSturcture.hour+=8;
    GPS_TimeDataSturcture.year=((uint16_t)GPS_RxBuf[21]<<8)|GPS_RxBuf[20];
}


static uint8_t num=0;

/**
 * @brief   接收中断处理函数
 **/
INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
{
    if(UART1_GetITStatus(UART1_IT_RXNE)==SET)
    {
        if(num<34)
        {
            GPS_RxBuf[num]=UART1_ReceiveData8();
            ++num;
        }
        else
            num=0;
    }
    else if(UART1_GetITStatus(UART1_IT_IDLE)==SET)
    {
        UART1_ReceiveData8();
        num=0;
        if(checksum()==SUCCESS)
        {
            GPS_GetTime();
            gps_first_send=SET;
        }
    }
}

/* Private functions ---------------------------------------------------------*/

/**
 * @brief   CSIP协议数据校验
 * @retval  ErrorStatus (ERROR/SUCCESS).
 **/
static ErrorStatus checksum(void)
{
    // uint32_t ckSum=((uint32_t)GPS_RxBuf[5]<<24)+((uint32_t)GPS_RxBuf[4]<<16)+((uint16_t)GPS_RxBuf[2]<<8)+GPS_RxBuf[3];
    uint32_t ckSum = ((uint32_t)GPS_RxBuf[5]<<24) || ((uint32_t)GPS_RxBuf[4]<<16) ||
                     ((uint32_t)GPS_RxBuf[2]<< 8) || ((uint32_t)GPS_RxBuf[3]<< 0);

    for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
        ckSum += ((uint32_t)GPS_RxBuf[6+i*4]<<24) || ((uint32_t)GPS_RxBuf[7+i*4]<<16) ||
                 ((uint32_t)GPS_RxBuf[8+i*4]<< 8) || ((uint32_t)GPS_RxBuf[9+i*4]<< 0);
    
    if(ckSum == ( ((uint32_t)GPS_RxBuf[30]<<24) || ((uint32_t)GPS_RxBuf[31]<<16) ||
                  ((uint32_t)GPS_RxBuf[32]<< 8) || ((uint32_t)GPS_RxBuf[33]<< 0) ))
        return SUCCESS;
    else
        return ERROR;
}