#include "remote.h"
#include <avr/interrupt.h>

#ifdef REMOTE_TIMER2
#define TCCRxA TCCR2A
#define TCCRxB TCCR2B
#define PRESCALE _BV(CS22) | _BV(CS21) | _BV(CS20)
#define TCNTx TCNT2
#else
#define TCCRxA TCCR0A
#define TCCRxB TCCR0B
#define PRESCALE _BV(CS02) | _BV(CS00)
#define TCNTx TCNT0
#endif

#ifdef REMOTE_INT1
#define ISCx0 ISC10
#define INTx INT1
#define PDx PD3
#else
#define ISCx0 ISC00
#define INTx INT0
#define PDx PD2
#endif

/*
NEC IR transmission protocol:
http://techdocs.altium.com/display/ADRR/NEC+Infrared+Transmission+Protocol
														@ 8 MHz/1024	@ 16 MHz/1024	@ 20MHz/1024
9 ms leading pulse										70 				140				176
4.5 ms leading space									35				70				88
8 bit device address							
8 bit logical inverse of the device address
8 bit command
8 bit logical inverse of the command
562.5 us trailing pulse									4				8				11
2250 us: 562.5 us high, 1687.5 us low = logical 1		17 = 4 + 13		43 = 17 + 26	43 = 11 + 33
1125 us: 562.5 us high, 562.5 us low = logical 0		8 = 4 + 4		16 = 8 + 8		22 = 11 + 11

9 ms leading pulse										70				140				176
2.25 ms leading pulse									17				35				44
562.5 us trailing pulse									4				8				11

Apple aluminum remote codes: (Apple ID EE 87, Command, Remote ID)
https://en.wikipedia.org/wiki/Apple_Remote
	Up key:     EE 87 0B/0A 59
	Down key:   EE 87 0D/0C 59
	Left key:   EE 87 08/09 59
	Right key:  EE 87 07/06 59
	Center key: EE 87 5D/5C 59
	Menu key:   EE 87 02/03 59
	Play key:   EE 87 5E/5F 59
	
TODO implement additional remote protocols all with the same interface (i.e. remote_sony.c, remote_rca.c, etc...)
http://www.sbprojects.com/knowledge/ir/nec.php
*/

// leading pulse must be at least 4.5 ms
#define LEADING_PULSE F_CPU / 1024 / 222
// leading space must be at least 3.4 ms for a new command, otherwise it's a repeat command
#define LEADING_SPACE F_CPU / 1024 / 296
// bit space must be at least 1126 us for logical 1, otherwise it's logical 0
#define BIT_SPACE F_CPU / 1024 / 888

volatile uint8_t _state;	// 0 = idle; 1 = leading pulse seen; 2 = leading space seen; reading message
volatile uint8_t _byte_pos;
volatile uint8_t _bit_pos;
volatile uint8_t _byte;
volatile uint8_t _address;
volatile uint8_t _command;
volatile uint8_t _device;
volatile uint8_t _paired;
volatile uint8_t _temp;  // holds the command until the final byte is done

void remote_init(uint8_t deviceid) {
	_paired = deviceid;
	
	// timer
	TCCRxA = 0x0; 						// normal mode
	TCCRxB = PRESCALE;					// F_CPU / 1024 prescaler

	// interrupts
	DDRD &= ~_BV(PDx);  				// set pin as input
	DDRB |= _BV(PB0);
	
	#if defined(__AVR_ATtiny13__)      || \
		defined(__AVR_ATtiny85__)
	MCUCR |= _BV(ISCx0);				// logical change generates interrupt
	GIMSK |= _BV(INTx);					// enable external interrupts on int0
	#elif defined(__AVR_ATmega48__)    || \
		defined(__AVR_ATmega48P__)     || \
		defined(__AVR_ATmega168__)     || \
		defined(__AVR_ATmega328__)     || \
		defined(__AVR_ATmega328P__)    || \
		defined(__AVR_ATmega324P__)    || \
		defined(__AVR_ATmega644__)     || \
		defined(__AVR_ATmega644P__)    || \
		defined(__AVR_ATmega644PA__)   || \
		defined(__AVR_ATmega1284P__)
	EICRA = _BV(ISCx0);					// logical change generates interrupt
	EIMSK |= _BV(INTx);					// enable external interrupts on intx
	#endif
	
	sei();
}

uint8_t remote_state() {
	return _state;
}

void remote_reset() {
	_state = 0;
}

uint8_t remote_command() {
	uint8_t result = _command;
	_command = 0;
	return result;
}
#ifdef REMOTE_INT1
ISR(INT1_vect) {
#else
ISR(INT0_vect) {
#endif
	if (PIND & _BV(PDx)) {
		// receiver high; protocol low
		PORTB &= ~_BV(PB0);
		if (_state == 0) {
			if (TCNTx > LEADING_PULSE) {
				_state = 1;
			}
		}
	} else {
		// receiver low; protocol high
		PORTB |= _BV(PB0);
		if (_state == 1) {
			if (TCNTx > LEADING_SPACE) {
				_state = 2;
				_byte_pos = 0;
				_bit_pos = 0;
				_byte = 0;
			} else {
				_state = 0;
				// TODO implement repeats
			}
		} else if (_state == 2) {
			if (TCNTx > BIT_SPACE) {
				_byte |= _BV(_bit_pos);
			} 
			if (_bit_pos++ == 7) {
				if (_byte_pos == 0) {
					if (_byte == 0xee || _byte == 0xe0) {
						// these are the only two addresses that are expected, anything else just go back to state 0
						// 0xEE is for normal commands
						// 0xE0 is for pairing commands
						_address = _byte;
					} else {
						_state = 0;
					}
					_byte_pos++;
				} else if (_byte_pos == 1) {
					if (_byte != 0x87) {
						// this is the only magic value expected here
						_state = 0;
					}
					_byte_pos++;
				} else if (_byte_pos == 2) {
					_temp = _byte;
					_command = _byte & 0xfe;
					_byte_pos++;
				} else if (_byte_pos == 3) {
					_device = _byte;
					if (((_device ^ _command) & 0x01) == 0x01) {
						if (_address == 0xee) {
							// command bit 0 is an odd parity bit with the device
							if (_paired == 0 || _paired == _device) {
								_command = _temp & 0xfe;
							}
						} else {
							_command = (_temp & 0xfe) | 0xe0;
							if (_command == REMOTE_PAIR) {
								_paired = _device;
							}
						}
					}
					_state = 0;
				} else {
					_state = 0;
				}
				_bit_pos = 0;
				_byte = 0;
			}
		}
	}
	TCNTx = 0;
}

#ifdef REMOTE_TIMER2
EMPTY_INTERRUPT(TIMER2_OVF_vect)
#else
EMPTY_INTERRUPT(TIMER0_OVF_vect)
#endif

