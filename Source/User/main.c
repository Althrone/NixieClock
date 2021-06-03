#include "main.h"

int main(void)
{
    CLK_DeInit();//全部外设的时钟都打开了
    rim();

    GPS_Init();//PD5 PD6
    NIXIE_Init();//PC5 PC6 PC7
    DS3231_Init();
    while(1)
    {
        NIXIE_DisplayTime(1,2);
        DS3231_GetTime();
    }
}

// void TIM4_UPD_OVF_IRQHandler(void) __interrupt(23)
// {

// }