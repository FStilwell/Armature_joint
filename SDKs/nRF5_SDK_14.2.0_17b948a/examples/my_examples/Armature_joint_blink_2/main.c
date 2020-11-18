#include <stdbool.h>
#include <stdint.h>
#include "nrf_delay.h"
#include "nrf_gpio.h"

#define led_b 30

/**
 * @brief Function for application main entry.
 */
int main(void)
{
    printf("Main Appication Started \r\n");
    nrf_gpio_cfg_output(led_b); //Configures the pin as output pin

    while(1)
    {
      nrf_gpio_pin_set(led_b); //Setting logic 1 on pin 30
      nrf_delay_ms(500);
      nrf_gpio_pin_clear(led_b);
      nrf_delay_ms(500);
    }

}

/**
 *@}
 **/
