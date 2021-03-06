/*
 * Test for ADC input (used for Gyros)
 */


#include <stdio.h>
#include <stdlib.h>
#include <avr/io.h>
#include <util/delay.h>

#include "../gyro.h"
#include "../../../lib/serial/serial.h"

char temp[32];

vector_t v, last_v;


int main (void){
	//Do setup here
	serial_init(9600, 8, 0, 1);
	gyro_init();
	
	gyro_calibrate();

	//Main program loop
	while (1){

		_delay_ms(10);

		v = gyro_get();

		if (v.x != last_v.x || v.y != last_v.y || v.z != last_v.z){
			last_v = v;

			sprintf(temp, "x=%+2.3f, y=%+2.3f, z=%+2.3f\n\r", v.x, v.y, v.z);
			serial_write_s(temp);
		}

	}
}
