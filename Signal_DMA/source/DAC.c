/*
 * DAC.c
 *
 *  Created on: 23 jun. 2026
 *      Author: luispizano
 */

#include "fsl_dac.h"


void DAC_config(void)
{
	dac_config_t dacConfigStruct;


	  /* attach FRO HF to DAC0 */
	CLOCK_SetClkDiv(kCLOCK_DivDac0Clk, 1u);
	CLOCK_AttachClk(kFRO_HF_to_DAC0);

	/* enable DAC0 and VREF */
	SPC0->ACTIVE_CFG1 |= 0x11;


	DAC_GetDefaultConfig(&dacConfigStruct);
	dacConfigStruct.referenceVoltageSource = kDAC_ReferenceVoltageSourceAlt1;
	DAC_Init(DAC0, &dacConfigStruct);
	DAC_Enable(DAC0, true); /* Enable the logic and output. */
}
