/**
 * Copyright (c) 2017 - 2018, Nordic Semiconductor ASA
 * 
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 * 
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form, except as embedded into a Nordic
 *    Semiconductor ASA integrated circuit in a product or a software update for
 *    such product, must reproduce the above copyright notice, this list of
 *    conditions and the following disclaimer in the documentation and/or other
 *    materials provided with the distribution.
 * 
 * 3. Neither the name of Nordic Semiconductor ASA nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 * 
 * 4. This software, with or without modification, must only be used with a
 *    Nordic Semiconductor ASA integrated circuit.
 * 
 * 5. Any software provided in binary form under this license must not be reverse
 *    engineered, decompiled, modified and/or disassembled.
 * 
 * THIS SOFTWARE IS PROVIDED BY NORDIC SEMICONDUCTOR ASA "AS IS" AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY, NONINFRINGEMENT, AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 */
#ifndef PCA10059_H
#define PCA10059_H

#ifdef __cplusplus
extern "C" {
#endif

#include "nrf_gpio.h"

// LED definitions for Armature Joint PCB V1.1
// Each LED color is considered a separate LED
#define LEDS_NUMBER    3

#define LED1_R         NRF_GPIO_PIN_MAP(0,25) //R4
#define LED1_G         NRF_GPIO_PIN_MAP(0,28) //R5
#define LED1_B         NRF_GPIO_PIN_MAP(0,30) //R3

#define LED_1          LED1_G
#define LED_2          LED1_R
#define LED_3          LED1_G


#define LEDS_ACTIVE_STATE 0

#define LEDS_LIST { LED_1, LED_2, LED_3 }

#define LEDS_INV_MASK  LEDS_MASK

#define BSP_LED_1      LED_1
#define BSP_LED_2      LED_2
#define BSP_LED_3      LED_3

// There is only one button for the application
// as the second button is used for a RESET.
#define BUTTONS_NUMBER 0

//#define BUTTON_1       NRF_GPIO_PIN_MAP(1,6)
//#define BUTTON_PULL    NRF_GPIO_PIN_PULLUP

//#define BUTTONS_ACTIVE_STATE 0

//#define BUTTONS_LIST { BUTTON_1 }

//#define BSP_BUTTON_0   BUTTON_1

#define BSP_SELF_PINRESET_PIN NRF_GPIO_PIN_MAP(0,21)

#define HWFC           true

// Arduino board mappings
//#define ARDUINO_SCL_PIN             NRF_GPIO_PIN_MAP(0, 15)    // SCL signal pin
//#define ARDUINO_SDA_PIN             NRF_GPIO_PIN_MAP(0, 16)    // SDA signal pin



#ifdef __cplusplus
}
#endif

#endif // PCA10059_H