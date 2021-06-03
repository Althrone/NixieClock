/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __SOFT_I2C_H
#define __SOFT_I2C_H

#ifdef __cplusplus
    extern "C" {
#endif

/* Exported macro ------------------------------------------------------------*/
/* Includes ------------------------------------------------------------------*/

#include "stm8s.h"

/* Exported define -----------------------------------------------------------*/

//SCL-PB4
#define I2C_SCL_H     (GPIOB->ODR |=  (1 << 4))
#define I2C_SCL_L     (GPIOB->ODR &= ~(1 << 4))

//SDA-PB5
#define I2C_SDA_H     (GPIOB->ODR |=  (1 << 5))
#define I2C_SDA_L     (GPIOB->ODR &= ~(1 << 5))
#define I2C_SDA_R     ((GPIOB->IDR &  (1 << 5))>>5)

/* Exported types ------------------------------------------------------------*/
/* Exported functions --------------------------------------------------------*/

void I2C_Init(void);                //初始化I2C的IO口                                 
void I2C_Start(void);               //发送I2C开始信号
void I2C_Stop(void);                //发送I2C停止信号
void I2C_Send_Byte(uint8_t txd);    //I2C发送一个字节
uint8_t I2C_Read_Byte(uint8_t ack); //I2C读取一个字节
uint8_t I2C_Wait_Ack(void);         //I2C等待ACK信号
void I2C_Ack(void);                 //I2C发送ACK信号
void I2C_NAck(void);                //I2C不发送ACK信号

// void I2C_Write_One_Byte(uint8_t daddr,uint8_t addr,uint8_t data);
// uint8_t I2C_Read_One_Byte(uint8_t daddr,uint8_t addr);

ErrorStatus I2C_MasterReceiveData(uint8_t devAddr,uint8_t regAddr,uint8_t* dataBuf,uint8_t dataLen);
// ErrorStatus I2C_SlaveReceiveData();
ErrorStatus I2C_MasterSendData(uint8_t devAddr,uint8_t regAddr,uint8_t* dataBuf,uint8_t dataLen);
// ErrorStatus I2C_SlaveSendData();

#ifdef __cplusplus
}
#endif

#endif /*__SOFT_I2C_H */