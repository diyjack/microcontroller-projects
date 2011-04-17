#ifndef GLCD_DRAW_H
#define GLCD_DRAW_H

#include "glcd.h"
#include <stdlib.h>

/*
 * Draws a line between two points.
 */
void glcd_draw_line(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1);

/*
 * Draws a box with one corner at x0, y0 and the opposite corner at x1, y1.
 * If f (fill) is 0, it is just an outline; if f is non-zero it is filled.
 */
void glcd_draw_square(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1, uint8_t f);

/*
 * Draws a circle of radius r centered at point x, y.  If f (fill) is 0, it is just
 * the outline; if f is non-zero, then the circle is filled.
 */
 void glcd_draw_circle(uint8_t x, uint8_t y, uint8_t r, uint8_t f);
 

/********** Helper defines *************/

#define swap(a, b) { uint8_t t = a; a = b; b = t; }

#endif