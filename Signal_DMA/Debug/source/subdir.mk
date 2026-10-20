################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/DAC.c \
../source/GPIO.c \
../source/main.c \
../source/semihost_hardfault.c 

C_DEPS += \
./source/DAC.d \
./source/GPIO.d \
./source/main.d \
./source/semihost_hardfault.d 

OBJS += \
./source/DAC.o \
./source/GPIO.o \
./source/main.o \
./source/semihost_hardfault.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MCXN947VDF -DCPU_MCXN947VDF_cm33 -DCPU_MCXN947VDF_cm33_core0 -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\drivers" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\device" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\utilities\debug_console" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\component\uart" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\utilities\debug_console\config" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\component\serial_manager" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\component\lists" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\device\periph" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\utilities" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\CMSIS" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\CMSIS\m-profile" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\utilities\str" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\board" -I"C:\PROJECTS\SEM\GPIO_DMA\Signal_DMA\source" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/DAC.d ./source/DAC.o ./source/GPIO.d ./source/GPIO.o ./source/main.d ./source/main.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o

.PHONY: clean-source

