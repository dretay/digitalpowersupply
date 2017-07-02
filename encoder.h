#pragma once

#include "stm32f1xx_hal.h"

// Values returned by 'process'
// No complete step yet.
#define DIR_NONE 0x0
// Clockwise step.
#define DIR_CW 0x10
// Anti-clockwise step.
#define DIR_CCW 0x20

int counter = 0;

struct encoderData
{
	uint8_t idx;
	uint8_t val;

} data;

void initialize(void);
uint8_t process(void);
uint8_t state;
