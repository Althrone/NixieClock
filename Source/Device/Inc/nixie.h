/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __NIXIE_H
#define __NIXIE_H

#ifdef __cplusplus
    extern "C" {
#endif

/* Exported macro ------------------------------------------------------------*/
/* Includes ------------------------------------------------------------------*/

#include "stm8s_spi.h"
#include <string.h>

/* Exported define -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
/* Exported functions --------------------------------------------------------*/

void NIXIE_Init(void);
uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState);
void NIXIE_DisplayTime(uint8_t hour,uint8_t min);

#ifdef __cplusplus
}
#endif

#endif /*__NIXIE_H */