##########################################################################################################################
# File automatically-generated by tool: [projectgenerator] version: [2.23.0] date: [Mon Sep 11 00:22:28 EDT 2017] 
##########################################################################################################################

# ------------------------------------------------
# Generic Makefile (based on gcc)
#
# ChangeLog :
#	2017-02-10 - Several enhancements + project update mode
#   2015-07-22 - first version
# ------------------------------------------------

######################################
# target
######################################
TARGET = digitalpowersupply


######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization
OPT = -Og


#######################################
# paths
#######################################
# source path
SOURCES_DIR =  \
Middlewares/FreeRTOS \
Application/User \
Middlewares \
Drivers/STM32F1xx_HAL_Driver \
Drivers/CMSIS \
Application \
Drivers \
Application/MAKEFILE

# firmware library path
PERIFLIB_PATH = 

# Build path
BUILD_DIR = build

######################################
# source
######################################
# C sources
C_SOURCES =  \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3/port.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/list.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c \
Src/freertos.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c \
Src/system_stm32f1xx.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/tasks.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c \
Src/stm32f1xx_it.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/timers.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/croutine.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/queue.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c \
Src/stm32f1xx_hal_msp.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c \
Src/main.c \
C:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_i2c.c \
Src/stm32f1xx_hal_timebase_TIM.c

# ASM sources
ASM_SOURCES =  \
startup_stm32f103xb.s


######################################
# firmware library
######################################
PERIFLIB_SOURCES = 


#######################################
# binaries
#######################################
BINPATH = 
PREFIX = arm-none-eabi-
CC = $(BINPATH)/$(PREFIX)gcc
AS = $(BINPATH)/$(PREFIX)gcc -x assembler-with-cpp
CP = $(BINPATH)/$(PREFIX)objcopy
AR = $(BINPATH)/$(PREFIX)ar
SZ = $(BINPATH)/$(PREFIX)size
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 
#######################################
# CFLAGS
#######################################
# cpu
CPU = -mcpu=cortex-m3

# fpu
# NONE for Cortex-M0/M0+/M3

# float-abi


# mcu
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# macros for gcc
# AS defines
AS_DEFS = 

# C defines
C_DEFS =  \
-DUSE_HAL_DRIVER \
-DSTM32F103xB


# AS includes
AS_INCLUDES =  \
-IInc

# C includes
C_INCLUDES =  \
-IInc \
-IC:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Inc \
-IC:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy \
-IC:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 \
-IC:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/CMSIS/Device/ST/STM32F1xx/Include \
-IC:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/include \
-IC:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS \
-IC:/Users/drew/STM32Cube/Repository/STM32Cube_FW_F1_V1.4.0/Drivers/CMSIS/Include


# compile gcc flags
ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CFLAGS = $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

ifeq ($(DEBUG), 1)
CFLAGS += -g -gdwarf-2
endif


# Generate dependency information
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"


#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = STM32F103C8Tx_FLASH.ld

# libraries
LIBS = -lc -lm -lnosys
LIBDIR =
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin


#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@	
	
$(BUILD_DIR):
	mkdir $@		

#######################################
# clean up
#######################################
clean:
	-rm -fR .dep $(BUILD_DIR)
  
#######################################
# dependencies
#######################################
-include $(shell mkdir .dep 2>/dev/null) $(wildcard .dep/*)

# *** EOF ***
