#ifndef MAIN_H
#define MAIN_H

#define GIT_VERSION		""

#include <avr/io.h>
#include "../lib/timer/timer.h"

//Figure out which pin mapping to use
#if defined(__AVR_ATmega168__) || \
	defined(__AVR_ATmega328P__) 
#include "pins/328.h"
#elif defined(__AVR_ATmega644__) || \
	defined(__AVR_ATmega644P__) || \
	defined(__AVR_ATmega644PA__)
#include "pins/644.h"
#else
#error You must define the pin mappings for your chip!  Please verify that MMCU is set correctly, and that there is a matching pin definition file declared at the top of main.h
#endif 

void set_data(char *data);

void send_debug_data(uint8_t *data);

typedef struct vector {
    double x;
    double y;
    double z;
} vector_t;

#include "modules/persist/persist.h"
#include "modules/comm/communication.h"
#include "modules/accel/accel.h"
#include "modules/gyro/gyro.h"
#include "modules/attitude/attitude.h"
#include "modules/battery/battery.h"
#include "modules/motor/motor.h"
#include "modules/esc/esc.h"
#include "modules/pid/pid.h"
#include "modules/protocol/protocol.h"
#include "modules/status/status.h"

#endif
