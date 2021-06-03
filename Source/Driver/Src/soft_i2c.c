/**
 *******************************************************************************
 * @file    Source/Driver/Src/soft_i2c.c
 * @brief   驱动层，软件i2c
 * Date         Author          Notes
 * 15/04/2021   Althrone        
 *******************************************************************************
 **/

/* Includes ------------------------------------------------------------------*/

#include "soft_i2c.h"

/* Private macro -------------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private typedef -----------------------------------------------------------*/
/* Public variables ----------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/

void delay_us(void);

/* Public functions ----------------------------------------------------------*/

//初始化I2C
void I2C_Init(void)
{                       
    //由于STM8单片机，可以在输入和输出条件下读取IO口状态，故直接设置为输出。
    GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_SLOW );
    GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_SLOW );
    I2C_SCL_H;
    I2C_SDA_H;
}

//产生I2C起始信号
void I2C_Start(void)
{
    I2C_SDA_H;                    
    I2C_SCL_H;
    delay_us();
    I2C_SDA_L; //START:when CLK is high,DATA change form high to low
    delay_us();
    I2C_SCL_L; //钳住I2C总线，准备发送或接收数据
}

//产生I2C停止信号
void I2C_Stop(void)
{
    I2C_SCL_L;

    I2C_SDA_L;//STOP:when CLK is high DATA change form low to high
    delay_us();
    I2C_SCL_H;
    I2C_SDA_H;//发送I2C总线结束信号
    delay_us();                                                                  
}

//等待应答信号到来
//返回值：1，接收应答失败
//        0，接收应答成功
uint8_t I2C_Wait_Ack(void)
{
    uint8_t ucErrTime=0;

    I2C_SDA_H;nop();          
    I2C_SCL_H;nop();
    while(I2C_SDA_R)
    {
        ucErrTime++;
        if(ucErrTime>250)
        {
            I2C_Stop();
            return 1;
        }
    }
    I2C_SCL_L;//时钟输出0           
    return 0;  
}

//产生ACK应答
void I2C_Ack(void)
{
    I2C_SCL_L;
    I2C_SDA_L;
    delay_us();
    I2C_SCL_H;
    delay_us();
    I2C_SCL_L;
}

//不产生ACK应答                    
void I2C_NAck(void)
{
    I2C_SCL_L;
    I2C_SDA_H;
    delay_us();
    I2C_SCL_H;
    delay_us();
    I2C_SCL_L;
}

//I2C发送一个字节
//返回从机有无应答
//1，有应答
//0，无应答                          
void I2C_Send_Byte(uint8_t txd)
{                        
    uint8_t t;      
    I2C_SCL_L;//拉低时钟开始数据传输
    for(t=0;t<8;t++)
    {              
        if((txd&0x80)>>7)
            I2C_SDA_H;
        else
            I2C_SDA_L;
        txd<<=1;           
        delay_us();   //对TEA5767这三个延时都是必须的
        I2C_SCL_H;
        delay_us();
        I2C_SCL_L;       
        delay_us();
    }
}

//读1个字节，ack=1时，发送ACK，ack=0，发送nACK   
uint8_t I2C_Read_Byte(unsigned char ack)
{
     unsigned char i,receive=0;
     for(i=0;i<8;i++ )

    {
        I2C_SCL_L;
        delay_us();
        I2C_SCL_H;
        receive<<=1;
        if(I2C_SDA_R)receive++;   
        nop();
    }                                         
    if (!ack)
        I2C_NAck();//发送nACK
    else
        I2C_Ack(); //发送ACK   
    return receive;
}

// /**
//  * @brief   写一个字节
//  * @param   daddr: 设备地址
//  * @param   addr: 寄存器地址
//  * @param   data: 数据
//  **/
// void I2C_Write_One_Byte(uint8_t daddr,uint8_t addr,uint8_t data)
// {
//     //
// }

// /**
//  * @brief   读一个字节
//  * @param   daddr: 设备地址
//  * @param   addr: 寄存器地址
//  * @retval  寄存器的值
//  **/
// uint8_t I2C_Read_One_Byte(uint8_t daddr,uint8_t addr)
// {
//     I2C_Start();
//     I2C_Send_Byte(daddr<<1|0);//发送从机地址
//     if(I2C_Wait_Ack())
//         return 1;
//     I2C_Send_Byte(addr);
//     if(I2C_Wait_Ack())
//         return 1;
    
//     I2C_Start();
//     I2C_Send_Byte(daddr<<1|1);//准备接收
//     if(I2C_Wait_Ack())
//         return 1;

//     uint8_t output=I2C_Read_Byte(0);
//     I2C_Stop();

//     return output;
// }

/**
 * @brief   主模式接收数据
 * @param   devAddr: 设备地址
 * @param   regAddr: 寄存器地址
 * @param   bufAddr: 数据缓存区地址
 * @param   dataLen: 数据长度
 * @retval  ErrorStatus (ERROR/SUCCESS).
 **/
ErrorStatus I2C_MasterReceiveData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
{
    I2C_Start();
    I2C_Send_Byte(devAddr<<1|0);//发送从机地址
    if(I2C_Wait_Ack())
        return ERROR;
    I2C_Send_Byte(regAddr);
    if(I2C_Wait_Ack())
        return ERROR;
    
    I2C_Start();
    I2C_Send_Byte(devAddr<<1|1);//准备接收
    if(I2C_Wait_Ack())
        return ERROR;

    for(uint8_t i=0;i<dataLen;++i)
    {
        if(i==dataLen-1)
            bufAddr[i]=I2C_Read_Byte(0);
        else
            bufAddr[i]=I2C_Read_Byte(1);
    }

    I2C_Stop();

    return SUCCESS;
}

/**
 * @brief   主模式发送数据
 * @param   devAddr: 设备地址
 * @param   regAddr: 寄存器地址
 * @param   bufAddr: 数据缓存区地址
 * @param   dataLen: 数据长度
 * @retval  ErrorStatus (ERROR/SUCCESS).
 **/
ErrorStatus I2C_MasterSendData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
{
    I2C_Start();
    I2C_Send_Byte(devAddr<<1|0);//发送从机地址
    if(I2C_Wait_Ack())
        return ERROR;
    I2C_Send_Byte(regAddr);
    if(I2C_Wait_Ack())
        return ERROR;
    
    for(uint8_t i=0;i<dataLen;++i)
    {
        I2C_Send_Byte(bufAddr[i]);
        if(I2C_Wait_Ack())
            return ERROR;
    }
    I2C_Stop();

    return SUCCESS;
}

/* Private functions ---------------------------------------------------------*/

void delay_us(void)
{
    nop();    nop();    nop();    nop();
}