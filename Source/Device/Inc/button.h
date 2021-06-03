/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __BUTTON_H
#define __BUTTON_H

#ifdef __cplusplus
    extern "C" {
#endif

/* Exported macro ------------------------------------------------------------*/
/* Includes ------------------------------------------------------------------*/

#include "stm8s.h"

/* Exported define -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
/* Exported functions --------------------------------------------------------*/

void BUTTON_Init(void);
INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3);
INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5);
INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6);

#ifdef __cplusplus
}
#endif

#endif /*__BUTTON_H */