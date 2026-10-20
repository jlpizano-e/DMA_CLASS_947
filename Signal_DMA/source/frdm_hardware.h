/*
 * frdm_hardware.h
 *
 *  Created on: 17 jun. 2026
 *      Author: luispizano
 */

#ifndef FRDM_HARDWARE_H_
#define FRDM_HARDWARE_H_


#define GPIO_RED_LED GPIO0
#define GPIO_GREEN_LED GPIO0
#define GPIO_BLUE_LED GPIO1

#define GPIO_SW3 GPIO0
#define GPIO_SW2 GPIO0


#define PORT_RED_LED PORT0
#define PORT_GREEN_LED PORT0
#define PORT_BLUE_LED PORT1

#define PORT_SW3 PORT0
#define PORT_SW2 PORT0

#define  RED_LED  10U
#define  GREEN_LED  27U
#define  BLUE_LED   2U

#define SW3 6U
#define SW2 23U




/*! These constants are used to select an specific port in the different API functions*/
typedef enum{
	FALSE, /*!< Definition to select GPIO A */
	TRUE /*!< Definition to select GPIO B */
} bool_value_t;




#endif /* FRDM_HARDWARE_H_ */
