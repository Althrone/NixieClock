/**
 *******************************************************************************
 * @file    Source/Driver/Src/uart.c
 * @brief   驱动层，串口驱动配置
 * Date         Author          Notes
 * 15/04/2021   Althrone        
 *******************************************************************************
 **/

/*
由于结构原因，一个辉光管可以同时显示几个字符（尽管多了之后由于电场复杂，会变得很模糊）
因此我使用无符号16位数表示一个管子的显示状态：
┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
│MSB│   │   │   │   │   │   │   │   │   │   │   │   │   │   │LSB│
├───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┤
│ 15│ 14│ 13│ 12│ 11│ 10│ 9 │ 8 │ 7 │ 6 │ 5 │ 4 │ 3 │ 2 │ 1 │ 0 │
├───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┤
│ - │ - │ - │ - │ P │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ 0 │ A │
├───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┤
│ 0 │ 0 │ 0 │ 0 │ X │ X │ X │ X │ X │ X │ X │ X │ X │ X │ X │ X │
└───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘
P是小数点，A是阳极
由于接线原因，单个管输出的顺序需要该变：
┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
│MSB│   │   │   │   │   │   │   │   │   │   │   │   │   │   │LSB│
├───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┤
│ 15│ 14│ 13│ 12│ 11│ 10│ 9 │ 8 │ 7 │ 6 │ 5 │ 4 │ 3 │ 2 │ 1 │ 0 │
├───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┤
│ - │ - │ - │ - │ 1 │ P │ 3 │ 2 │ 5 │ 4 │ 7 │ 6 │ 9 │ 8 │ A │ 0 │
├───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┤
│ 0 │ 0 │ 0 │ 0 │ X │ X │ X │ X │ X │ X │ X │ X │ X │ X │ X │ X │
└───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘
因此，输入字符串之后先变成表一的数，然后变成表二顺序输出
*/

/* Includes ------------------------------------------------------------------*/

#include "nixie.h"

/* Private macro -------------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private typedef -----------------------------------------------------------*/
/* Public variables ----------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

void delay(void)
{
    // for (char i = 0; i < 100; i++)
    //     {
    //         for (char j = 0; j < 100; j++)
    //         {
    //             // for (char k = 0; k < 10; k++);
    //         }
    //     };
    for (int i = 0; i < 300; i++);//这个比较合适
}

/**
 * @brief   显示设备初始化，实际上就是用spi驱动595
 **/
void NIXIE_Init(void)
{
    GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
    GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
    GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
    SPI_DeInit();
    //初始化SPI：
    SPI_Init(SPI_FIRSTBIT_LSB,
             SPI_BAUDRATEPRESCALER_2,
             SPI_MODE_MASTER,
             SPI_CLOCKPOLARITY_LOW,
             SPI_CLOCKPHASE_1EDGE,
             SPI_DATADIRECTION_1LINE_TX,
             SPI_NSS_SOFT,
             0x07);
    SPI_Cmd(ENABLE);
}

/**
 * @brief   其中一个管子的显示信息
 * @param   tubeNum: 几号管
 * @param   character: 显示字符，控制阴极
 * @param   tubeState: 辉光管状态，控制阳极
 * @retval  1.32547698A0的二进制值
 * @note    由于一个管子可以同时显示几个字符，所以用字符串的形式表示
 **/
uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
{
    uint16_t tmp=0;
    uint16_t output=0;

    if(strchr(character,'.')!=NULL)
        tmp|=1<<11;
    for(uint8_t i=0;i<9;++i)
    {
        if(strchr(character,'1'+i)!=NULL)
            tmp|=1<<10-i;
    }
    if(strchr(character,'0')!=NULL)
        tmp|=1<<1;
    if(tubeState==ENABLE)
        tmp|=1<<0;
    
    output=(tmp&0xAAA)>>1;
    output|=(tmp&0x555)<<1;

    return output;
}

int aaaa=0;

/**
 * @brief   显示时间
 * @param   hour: 小时
 * @param   min: 分钟
 * @note    显示样式12.59
 **/
void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
{
    uint16_t tube1,tube2,tube3,tube4;

    char tube1s[]="0",tube2s[]="0",tube3s[]="0",tube4s[]="0";

    uint8_t tmp=aaaa/1000;
    tube1s[0]+=tmp;

     tmp=aaaa%1000/100;
    tube2s[0]+=tmp;

     tmp=aaaa%100/10;
    tube3s[0]+=tmp;

     tmp=aaaa%10;
    tube4s[0]+=tmp;

    tube1=NIXIE_DisplayChar(1,tube1s,ENABLE);
    tube2=NIXIE_DisplayChar(2,tube2s,ENABLE);
    tube3=NIXIE_DisplayChar(3,tube3s,ENABLE);
    tube4=NIXIE_DisplayChar(4,tube4s,ENABLE);


    ++aaaa;
    if(aaaa==9999)
        aaaa=0;
    
    

    // tube1=NIXIE_DisplayChar(1,"6",ENABLE);
    // tube2=NIXIE_DisplayChar(2,"6",ENABLE);
    // tube3=NIXIE_DisplayChar(3,"6",ENABLE);
    // tube4=NIXIE_DisplayChar(4,"6",ENABLE);

    //输出到595

    GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低

    uint8_t tmp1,tmp2;

    //处理U6
    tmp1=(uint8_t)((tube4&0b11111110)>>1);
    tmp2=(uint8_t)((tube4&0b00000001)<<7);
    tmp1=tmp1|tmp2;
    SPI_SendData(tmp1);
    // delay();
    while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
    //处理U5
    tmp1=(uint8_t)((tube3&0b1111)<<4);
    tmp2=(uint8_t)(tube4>>8);
    tmp1=tmp1|tmp2;
    tmp2=(tmp1&0b00000001)<<7;
    tmp1=(tmp1>>1)|tmp2;
    SPI_SendData(tmp1);
    // delay();
    while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
    //处理U4
    tmp1=(uint8_t)(tube3>>5);
    tmp2=(uint8_t)(((tube3&0b10000)>>4)<<7);
    tmp1=tmp1|tmp2;
    SPI_SendData(tmp1);
    // delay();
    while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);

    //处理U3
    tmp1=(uint8_t)((tube2&0b11111110)>>1);
    tmp2=(uint8_t)((tube2&0b00000001)<<7);
    tmp1=tmp1|tmp2;
    SPI_SendData(tmp1);
    // delay();
    while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
    //处理U2
    tmp1=(uint8_t)((tube1&0b1111)<<4);
    tmp2=(uint8_t)(tube2>>8);
    tmp1=tmp1|tmp2;
    tmp2=(tmp1&0b00000001)<<7;
    tmp1=(tmp1>>1)|tmp2;
    SPI_SendData(tmp1);
    // delay();
    while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
    //处理U1
    tmp1=(uint8_t)(tube1>>5);
    tmp2=(uint8_t)(((tube1&0b10000)>>4)<<7);
    tmp1=tmp1|tmp2;
    SPI_SendData(tmp1);
    // delay();
    while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);

    GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
}

/* Private functions ---------------------------------------------------------*/