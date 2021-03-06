#ifndef ws2811_h
#define ws2811_h

#include <stdint.h>

typedef struct ws2811_t {
	// the order of the struct members must by g, r, b
	uint8_t red;
	uint8_t green;
	uint8_t blue;
} ws2811_t;

/*
 * Sends GRB values to a chain of WS2811 leds.
 * v a pointer to the first GRB tuple
 * s the number of GRB tuples
 */
void ws2811_set(struct ws2811_t *values, uint8_t s);

#endif
