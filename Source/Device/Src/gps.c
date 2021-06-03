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

/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/

static ErrorStatus checksum(void);

/* Public functions ----------------------------------------------------------*/

/**
 * @brief   GPS初始化，使用uart1接口，CSIP协议
 **/
void GPS_Init(void)
{
    // GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);
    // GPIO_Init(GPIOD,GPIO_PIN_6,GPIO_MODE_IN_FL_NO_IT);
    UART1_DeInit();
    UART1_Init((uint32_t)115200,
               UART1_WORDLENGTH_8D,
               UART1_STOPBITS_1,
               UART1_PARITY_NO,
               UART1_SYNCMODE_CLOCK_DISABLE,
               UART1_MODE_TXRX_ENABLE);
    UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
    UART1_ITConfig(UART1_IT_IDLE,ENABLE);
    UART1_Cmd(ENABLE);
    
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