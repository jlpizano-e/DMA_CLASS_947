/*
 * GPIO.h
 *
 *  Created on: 17 jun. 2026
 *      Author: luispizano
 */

#ifndef GPIO_H_
#define GPIO_H_

#include <stdint.h>

#define GPIO_ALL_BITS 0xFFFFFFFF

typedef struct
{
	uint8_t flag_gpio_0 : 1;
	uint8_t flag_gpio_1 : 1;
	uint8_t flag_gpio_2 : 1;
	uint8_t flag_gpio_3 : 1;
	uint8_t flag_gpio_4 : 1;
	uint8_t flag_gpio_5 : 1;
} gpio_interrupt_flags_t;




/*! These constants are used to select an specific port in the different API functions*/
typedef enum{GPIO_0, /*!< Definition to select GPIO A */
			 GPIO_1, /*!< Definition to select GPIO B */
			 GPIO_2, /*!< Definition to select GPIO C */
			 GPIO_3, /*!< Definition to select GPIO D */
			 GPIO_4, /*!< Definition to select GPIO E */
			 GPIO_5  /*!< Definition to select GPIO F */
} gpio_name_t;


void GPIO_config();
void GPIO_clear_irq_status(gpio_name_t gpio);
uint8_t GPIO_get_irq_status(gpio_name_t gpio);
void GPIO_callback_init(gpio_name_t gpio_name, void (*handler)(void));

#endif /* GPIO_H_ */
