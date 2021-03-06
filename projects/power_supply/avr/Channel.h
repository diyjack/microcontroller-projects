/*
 * A single power supply channel.  Includes all variables needed for setting DAC, ADC readings, 
 * formatting display, setting values, etc.
 */
#ifndef CHANNEL_H
#define CHANNEL_H

#include <avr/eeprom.h>
#include <avr/io.h>
#include <stdint.h>
#include <stdio.h>
#include <util/delay.h>

#include "lib/twi/twi.h"

#define ADC_CHANNEL_0						0
#define ADC_CHANNEL_1						1
#define ADC_CHANNEL_4						4
#define ADC_CHANNEL_5						5
#define ADC_CHANNEL_6						6
#define ADC_CHANNEL_7						7
#define ADC_CHANNEL_8						8
#define ADC_CHANNEL_9						9
#define ADC_CHANNEL_10						10
#define ADC_CHANNEL_11						11
#define ADC_CHANNEL_12						12
#define ADC_CHANNEL_13						13

//The three I2C addresses for DACs
#define DAC_ADDRESS_0						0x60
#define DAC_ADDRESS_1						0x61
#define DAC_ADDRESS_2						0x62

//Various DAC commands.  See MCP4728 datasheet, page 34
#define DAC_COMMAND_REGISTER				0x40
#define DAC_COMMAND_REGISTER_EEPROM			0x58
#define DAC_COMMAND_ADDRESS					0x60
#define DAC_COMMAND_VREF					0x80
#define DAC_COMMAND_GAIN					0xC0
#define DAC_COMMAND_POWERDOWN				0xA0

//DAC Channels, bits DAC1 and DAC0.  See MCP4728 datasheet
#define DAC_CHANNEL_0						0x00
#define DAC_CHANNEL_1						0x02
#define DAC_CHANNEL_2						0x04
#define DAC_CHANNEL_3						0x06

namespace digitalcave {

	class Channel {
		private:
			uint8_t channel_index;
			
			uint8_t i2c_address;
			uint8_t adc_channel_voltage;
			uint8_t adc_channel_current;
			uint8_t dac_channel_voltage;
			uint8_t dac_channel_current;

			int16_t voltage_limit;			//Max (or min, for negative) voltage
			int16_t current_limit;			//Max current
			
			uint16_t voltage_setpoint_raw;	//Desired raw 12 bit DAC value
			uint16_t voltage_actual_raw;	//Actual raw 10 bit ADC value

			uint16_t current_setpoint_raw;	//Desired raw 12 bit DAC value
			uint16_t current_actual_raw;	//Actual raw 10 bit ADC value
			
			void set_dac_raw(uint8_t dac_channel, uint16_t raw_value);
			
		public:
			/*
			 * Calibration values (in form "scaled_value = slope * raw_value + offset")
			 */
			double voltage_actual_slope = 1;
			double voltage_actual_offset = 0;
			double voltage_setpoint_slope = 1;
			double voltage_setpoint_offset = 0;
			double current_actual_slope = 1;
			double current_actual_offset = 0;
			double current_setpoint_slope = 1;
			double current_setpoint_offset = 0;
		
			/*
			 * Initializes the channel
			 */
			Channel(uint8_t channel_index, uint8_t i2c_address, uint8_t dac_channel_voltage, uint8_t dac_channel_current,
				uint8_t adc_channel_voltage, uint8_t adc_channel_current,
				int16_t voltage_limit, int16_t current_limit);

			/*
			 * Voltage functions
			 */
			int16_t get_voltage_setpoint();
			uint16_t get_voltage_setpoint_raw();
			int16_t get_voltage_actual();
			uint16_t get_voltage_actual_raw();
			void set_voltage_setpoint(int16_t millivolts);
			void set_voltage_setpoint_raw(uint16_t raw_value);
			
			/*
			 * Current functions
			 */
			int16_t get_current_setpoint();
			uint16_t get_current_setpoint_raw();
			int16_t get_current_actual();
			uint16_t get_current_actual_raw();
			void set_current_setpoint(int16_t milliamps);
			void set_current_setpoint_raw(uint16_t raw_value);
			
			/*
			 * ADC polling
			 */
			void sample_actual();
			
			/*
			 * Persist / load calibration to / from EEPROM
			 */
			void save_calibration();
			void load_calibration();
	};
}

#endif