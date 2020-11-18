#include <stdbool.h>
#include <stdint.h>
#include "nrf_delay.h"
#include "nrf_gpio.h"

#define led_r 25
#define led_g 28
#define led_b 30



/**
 * @brief Function for application main entry.
 */
int main(void)
{
    nrf_gpio_cfg_output(led_r); //Configures the pin as output pin
    nrf_gpio_pin_set(led_r);
    nrf_gpio_cfg_output(led_g); //Configures the pin as output pin
    nrf_gpio_pin_set(led_g);
    nrf_gpio_cfg_output(led_b); //Configures the pin as output pin
    nrf_gpio_pin_set(led_b);

    while(1)
    {
      nrf_gpio_pin_clear(led_r); //Setting logic 1 on pin 30
      nrf_delay_ms(500);
      nrf_gpio_pin_set(led_r); //Setting logic 1 on pin 30
      nrf_gpio_pin_clear(led_g);
      nrf_delay_ms(500);
      nrf_gpio_pin_set(led_g);
      nrf_gpio_pin_clear(led_b);
      nrf_delay_ms(500);
      nrf_gpio_pin_set(led_b);
      nrf_delay_ms(500);
    }

}

/**
 *@}
 **/
