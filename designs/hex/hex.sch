EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:hex
LIBS:hex-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "30 mar 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA1284P-P IC1
U 1 1 532C95F4
P 3250 3650
F 0 "IC1" H 2400 5530 40  0000 L BNN
F 1 "ATMEGA1284P-P" H 3650 1700 40  0000 L BNN
F 2 "DIL40" H 3250 3650 30  0000 C CIN
F 3 "" H 3250 3650 60  0000 C CNN
	1    3250 3650
	1    0    0    -1  
$EndComp
Text GLabel 4250 3250 2    60   Input ~ 0
PWM00
Text GLabel 4250 3150 2    60   Input ~ 0
PWM01
Text GLabel 4250 3050 2    60   Input ~ 0
PWM02
Text GLabel 4250 2250 2    60   Input ~ 0
PWM03
Text GLabel 4250 2350 2    60   Input ~ 0
PWM04
Text GLabel 4250 2450 2    60   Input ~ 0
PWM05
Text GLabel 4750 3900 2    60   Input ~ 0
PWM06
Text GLabel 4750 3650 2    60   Input ~ 0
PWM07
Text GLabel 4250 4050 2    60   Input ~ 0
PWM15
Text GLabel 4250 4850 2    60   Input ~ 0
PWM14
Text GLabel 4250 4950 2    60   Input ~ 0
PWM13
Text GLabel 4250 5050 2    60   Input ~ 0
PWM12
Text GLabel 4250 4250 2    60   Input ~ 0
PWM11
Text GLabel 4250 4350 2    60   Input ~ 0
PWM10
Text GLabel 4250 4450 2    60   Input ~ 0
PWM09
Text GLabel 4750 3450 2    60   Input ~ 0
PWM08
Text GLabel 4250 5350 2    60   Input ~ 0
PWM17
Text GLabel 4250 3950 2    60   Input ~ 0
PWM16
Text GLabel 5650 1450 0    60   Input ~ 0
PWM00
Text GLabel 5650 1550 0    60   Input ~ 0
PWM01
Text GLabel 5650 1650 0    60   Input ~ 0
PWM02
Text GLabel 5650 2050 0    60   Input ~ 0
PWM03
Text GLabel 5650 2150 0    60   Input ~ 0
PWM04
Text GLabel 5650 2250 0    60   Input ~ 0
PWM05
Text GLabel 5650 2650 0    60   Input ~ 0
PWM06
Text GLabel 5650 2750 0    60   Input ~ 0
PWM07
Text GLabel 5650 4450 0    60   Input ~ 0
PWM15
Text GLabel 5650 4050 0    60   Input ~ 0
PWM14
Text GLabel 5650 3950 0    60   Input ~ 0
PWM13
Text GLabel 5650 3850 0    60   Input ~ 0
PWM12
Text GLabel 5650 3450 0    60   Input ~ 0
PWM11
Text GLabel 5650 3350 0    60   Input ~ 0
PWM10
Text GLabel 5650 3250 0    60   Input ~ 0
PWM09
Text GLabel 5650 2850 0    60   Input ~ 0
PWM08
Text GLabel 5650 4650 0    60   Input ~ 0
PWM17
Text GLabel 5650 4550 0    60   Input ~ 0
PWM16
Wire Wire Line
	3050 1500 3050 1650
Wire Wire Line
	3250 1550 3250 1650
Wire Wire Line
	1750 1550 3250 1550
Connection ~ 3050 1550
$Comp
L R R1
U 1 1 532C9BB8
P 2000 1950
F 0 "R1" V 2080 1950 40  0000 C CNN
F 1 "1k" V 2007 1951 40  0000 C CNN
F 2 "~" V 1930 1950 30  0000 C CNN
F 3 "~" H 2000 1950 30  0000 C CNN
	1    2000 1950
	0    1    1    0   
$EndComp
Text GLabel 4750 3350 2    60   Input ~ 0
MOSI
Text GLabel 4750 3550 2    60   Input ~ 0
MISO
Text GLabel 4750 3800 2    60   Input ~ 0
SCK
Text GLabel 2250 1950 1    60   Input ~ 0
RESET
$Comp
L CONN_3 K1
U 1 1 532EDC04
P 1650 2550
F 0 "K1" V 1600 2550 50  0000 C CNN
F 1 "RESONATOR" V 1700 2550 40  0000 C CNN
F 2 "" H 1650 2550 60  0000 C CNN
F 3 "" H 1650 2550 60  0000 C CNN
	1    1650 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 2350 2100 2350
Wire Wire Line
	2100 2350 2100 2450
Wire Wire Line
	2100 2450 2000 2450
Wire Wire Line
	2250 2750 2100 2750
Wire Wire Line
	2100 2750 2100 2650
Wire Wire Line
	2100 2650 2000 2650
$Comp
L GND #PWR01
U 1 1 532EDC69
P 2200 2550
F 0 "#PWR01" H 2200 2550 30  0001 C CNN
F 1 "GND" H 2200 2480 30  0001 C CNN
F 2 "" H 2200 2550 60  0000 C CNN
F 3 "" H 2200 2550 60  0000 C CNN
	1    2200 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 2550 2200 2550
$Comp
L C C1
U 1 1 532EDCAD
P 2050 3150
F 0 "C1" H 2050 3250 40  0000 L CNN
F 1 "1uF" H 2056 3065 40  0000 L CNN
F 2 "~" H 2088 3000 30  0000 C CNN
F 3 "~" H 2050 3150 60  0000 C CNN
	1    2050 3150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 532EDCBC
P 1850 3150
F 0 "#PWR02" H 1850 3150 30  0001 C CNN
F 1 "GND" H 1850 3080 30  0001 C CNN
F 2 "" H 1850 3150 60  0000 C CNN
F 3 "" H 1850 3150 60  0000 C CNN
	1    1850 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 532EDCD5
P 3250 5800
F 0 "#PWR03" H 3250 5800 30  0001 C CNN
F 1 "GND" H 3250 5730 30  0001 C CNN
F 2 "" H 3250 5800 60  0000 C CNN
F 3 "" H 3250 5800 60  0000 C CNN
	1    3250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5650 3250 5800
Wire Wire Line
	3050 5650 3050 5700
Wire Wire Line
	3050 5700 3250 5700
Connection ~ 3250 5700
$Comp
L +6V #PWR04
U 1 1 532FA2A2
P 4600 1050
F 0 "#PWR04" H 4600 1180 20  0001 C CNN
F 1 "+6V" H 4600 1150 30  0000 C CNN
F 2 "" H 4600 1050 60  0000 C CNN
F 3 "" H 4600 1050 60  0000 C CNN
	1    4600 1050
	0    -1   -1   0   
$EndComp
Text GLabel 4700 1050 2    60   Input ~ 0
BATTERY
$Comp
L CONN_3X2 P1
U 1 1 532FA2B1
P 6350 5500
F 0 "P1" H 6350 5750 50  0000 C CNN
F 1 "PROG" V 6350 5550 40  0000 C CNN
F 2 "" H 6350 5500 60  0000 C CNN
F 3 "" H 6350 5500 60  0000 C CNN
	1    6350 5500
	1    0    0    -1  
$EndComp
Text GLabel 5950 5350 0    60   Input ~ 0
MISO
Text GLabel 5950 5450 0    60   Input ~ 0
SCK
Text GLabel 5950 5550 0    60   Input ~ 0
RESET
Text GLabel 6750 5450 2    60   Input ~ 0
MOSI
Text GLabel 3250 5700 2    60   Input ~ 0
GND
Text GLabel 3050 1500 1    60   Input ~ 0
VCC_AVR
Text GLabel 6750 5350 2    60   Input ~ 0
VCC_PROG
Text GLabel 6750 5550 2    60   Input ~ 0
GND
Wire Wire Line
	4600 1050 4700 1050
Connection ~ 4700 1050
$Comp
L CONN_3 K2
U 1 1 532FA3B6
P 5900 7300
F 0 "K2" V 5850 7300 50  0000 C CNN
F 1 "REGUL" V 5950 7300 40  0000 C CNN
F 2 "" H 5900 7300 60  0000 C CNN
F 3 "" H 5900 7300 60  0000 C CNN
	1    5900 7300
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 532FA3C5
P 5800 6800
F 0 "#PWR05" H 5800 6800 30  0001 C CNN
F 1 "GND" H 5800 6730 30  0001 C CNN
F 2 "" H 5800 6800 60  0000 C CNN
F 3 "" H 5800 6800 60  0000 C CNN
	1    5800 6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 6800 5800 6950
$Comp
L +3.3V #PWR06
U 1 1 532FA44E
P 4600 6300
F 0 "#PWR06" H 4600 6260 30  0001 C CNN
F 1 "+3.3V" H 4600 6410 30  0000 C CNN
F 2 "" H 4600 6300 60  0000 C CNN
F 3 "" H 4600 6300 60  0000 C CNN
	1    4600 6300
	0    -1   -1   0   
$EndComp
$Comp
L LEG S1
U 1 1 5333430A
P 6300 1550
F 0 "S1" H 6700 1500 60  0000 C CNN
F 1 "FRONT_LEFT" H 6700 1650 60  0000 C CNN
F 2 "" H 6300 1550 60  0000 C CNN
F 3 "" H 6300 1550 60  0000 C CNN
	1    6300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1300 6650 1300
Connection ~ 6400 1300
Connection ~ 6500 1300
Wire Wire Line
	6300 1800 6650 1800
Connection ~ 6500 1800
Connection ~ 6400 1800
Text GLabel 6650 1300 2    60   Input ~ 0
BATTERY
Text GLabel 6650 1800 2    60   Input ~ 0
GND
$Comp
L LEG S2
U 1 1 53334670
P 6300 2150
F 0 "S2" H 6700 2100 60  0000 C CNN
F 1 "FRONT_RIGHT" H 6700 2250 60  0000 C CNN
F 2 "" H 6300 2150 60  0000 C CNN
F 3 "" H 6300 2150 60  0000 C CNN
	1    6300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1900 6650 1900
Connection ~ 6400 1900
Connection ~ 6500 1900
Wire Wire Line
	6300 2400 6650 2400
Connection ~ 6500 2400
Connection ~ 6400 2400
Text GLabel 6650 1900 2    60   Input ~ 0
BATTERY
Text GLabel 6650 2400 2    60   Input ~ 0
GND
$Comp
L LEG S3
U 1 1 5333467E
P 6300 2750
F 0 "S3" H 6700 2700 60  0000 C CNN
F 1 "MIDDLE_LEFT" H 6700 2850 60  0000 C CNN
F 2 "" H 6300 2750 60  0000 C CNN
F 3 "" H 6300 2750 60  0000 C CNN
	1    6300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2500 6650 2500
Connection ~ 6400 2500
Connection ~ 6500 2500
Wire Wire Line
	6300 3000 6650 3000
Connection ~ 6500 3000
Connection ~ 6400 3000
Text GLabel 6650 2500 2    60   Input ~ 0
BATTERY
Text GLabel 6650 3000 2    60   Input ~ 0
GND
$Comp
L LEG S4
U 1 1 5333468C
P 6300 3350
F 0 "S4" H 6700 3300 60  0000 C CNN
F 1 "MIDDLE_RIGHT" H 6700 3450 60  0000 C CNN
F 2 "" H 6300 3350 60  0000 C CNN
F 3 "" H 6300 3350 60  0000 C CNN
	1    6300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3100 6650 3100
Connection ~ 6400 3100
Connection ~ 6500 3100
Wire Wire Line
	6300 3600 6650 3600
Connection ~ 6500 3600
Connection ~ 6400 3600
Text GLabel 6650 3100 2    60   Input ~ 0
BATTERY
Text GLabel 6650 3600 2    60   Input ~ 0
GND
$Comp
L LEG S5
U 1 1 5333469A
P 6300 3950
F 0 "S5" H 6700 3900 60  0000 C CNN
F 1 "REAR_LEFT" H 6700 4050 60  0000 C CNN
F 2 "" H 6300 3950 60  0000 C CNN
F 3 "" H 6300 3950 60  0000 C CNN
	1    6300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3700 6650 3700
Connection ~ 6400 3700
Connection ~ 6500 3700
Wire Wire Line
	6300 4200 6650 4200
Connection ~ 6500 4200
Connection ~ 6400 4200
Text GLabel 6650 3700 2    60   Input ~ 0
BATTERY
Text GLabel 6650 4200 2    60   Input ~ 0
GND
$Comp
L LEG S6
U 1 1 533346A8
P 6300 4550
F 0 "S6" H 6700 4500 60  0000 C CNN
F 1 "REAR_RIGHT" H 6700 4650 60  0000 C CNN
F 2 "" H 6300 4550 60  0000 C CNN
F 3 "" H 6300 4550 60  0000 C CNN
	1    6300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4300 6650 4300
Connection ~ 6400 4300
Connection ~ 6500 4300
Wire Wire Line
	6300 4800 6650 4800
Connection ~ 6500 4800
Connection ~ 6400 4800
Text GLabel 6650 4300 2    60   Input ~ 0
BATTERY
Text GLabel 6650 4800 2    60   Input ~ 0
GND
$Comp
L CONN_10 P2
U 1 1 533348CC
P 4250 6950
F 0 "P2" V 4200 6950 60  0000 C CNN
F 1 "XBEE" V 4300 6950 60  0000 C CNN
F 2 "" H 4250 6950 60  0000 C CNN
F 3 "" H 4250 6950 60  0000 C CNN
	1    4250 6950
	-1   0    0    -1  
$EndComp
$Comp
L DPDT P4
U 1 1 53334A36
P 8400 5500
F 0 "P4" H 8400 5750 50  0000 C CNN
F 1 "DPDT" V 8400 5550 40  0000 C CNN
F 2 "" H 8400 5500 60  0000 C CNN
F 3 "" H 8400 5500 60  0000 C CNN
	1    8400 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6150 4600 6500
Text GLabel 6750 6050 2    60   Input ~ 0
VCC_PROG
Text GLabel 5900 6500 2    60   Input ~ 0
BATTERY
Text GLabel 5950 6150 0    60   Input ~ 0
VCC_AVR
Wire Wire Line
	4250 4650 4650 4650
Wire Wire Line
	4650 4650 4650 6600
Wire Wire Line
	4650 6600 4600 6600
Wire Wire Line
	4700 6700 4600 6700
Wire Wire Line
	4700 4750 4250 4750
Wire Wire Line
	6850 5750 4700 5750
Wire Wire Line
	4700 5750 4700 4750
Wire Wire Line
	4700 6050 4700 6700
$Comp
L GND #PWR07
U 1 1 533351C5
P 4650 7500
F 0 "#PWR07" H 4650 7500 30  0001 C CNN
F 1 "GND" H 4650 7430 30  0001 C CNN
F 2 "" H 4650 7500 60  0000 C CNN
F 3 "" H 4650 7500 60  0000 C CNN
	1    4650 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7400 4650 7400
Wire Wire Line
	4650 7400 4650 7500
$Comp
L C C2
U 1 1 53335945
P 5600 6500
F 0 "C2" H 5600 6600 40  0000 L CNN
F 1 "1uF" H 5606 6415 40  0000 L CNN
F 2 "~" H 5638 6350 30  0000 C CNN
F 3 "~" H 5600 6500 60  0000 C CNN
	1    5600 6500
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 53335959
P 6300 6800
F 0 "C3" H 6300 6900 40  0000 L CNN
F 1 "1uF" H 6306 6715 40  0000 L CNN
F 2 "~" H 6338 6650 30  0000 C CNN
F 3 "~" H 6300 6800 60  0000 C CNN
	1    6300 6800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 6500 5900 6500
Connection ~ 5900 6500
Wire Wire Line
	5800 6900 5400 6900
Wire Wire Line
	5400 6500 5400 7500
Connection ~ 5800 6900
Wire Wire Line
	5400 7500 6500 7500
Wire Wire Line
	6500 7500 6500 6800
Connection ~ 5400 6900
Wire Wire Line
	4250 3350 4750 3350
Wire Wire Line
	4750 3350 4750 3450
Wire Wire Line
	4750 3550 4750 3650
Wire Wire Line
	4750 3800 4750 3900
Wire Wire Line
	4550 3800 4750 3800
Wire Wire Line
	4750 3550 4650 3550
Wire Wire Line
	4650 3550 4650 3450
Wire Wire Line
	4650 3450 4250 3450
Wire Wire Line
	4550 3800 4550 3550
Wire Wire Line
	4550 3550 4250 3550
Wire Wire Line
	1750 1950 1750 1550
Wire Wire Line
	5900 6500 5900 6950
Wire Wire Line
	6100 6800 6000 6800
Wire Wire Line
	6000 6800 6000 6950
$Comp
L +3.3V #PWR08
U 1 1 53337498
P 6000 6800
F 0 "#PWR08" H 6000 6760 30  0001 C CNN
F 1 "+3.3V" H 6000 6910 30  0000 C CNN
F 2 "" H 6000 6800 60  0000 C CNN
F 3 "" H 6000 6800 60  0000 C CNN
	1    6000 6800
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 53337638
P 4550 1600
F 0 "P3" V 4500 1600 40  0000 C CNN
F 1 "BATT (4.8V-6V)" V 4600 1600 40  0000 C CNN
F 2 "" H 4550 1600 60  0000 C CNN
F 3 "" H 4550 1600 60  0000 C CNN
	1    4550 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 1250 4650 1050
Connection ~ 4650 1050
$Comp
L GND #PWR09
U 1 1 533376AC
P 4450 1250
F 0 "#PWR09" H 4450 1250 30  0001 C CNN
F 1 "GND" H 4450 1180 30  0001 C CNN
F 2 "" H 4450 1250 60  0000 C CNN
F 3 "" H 4450 1250 60  0000 C CNN
	1    4450 1250
	-1   0    0    1   
$EndComp
Text GLabel 4600 6150 1    60   Input ~ 0
VCC_XBEE
Text GLabel 4650 4650 2    60   Input ~ 0
AVR_RX
Text GLabel 4700 4750 2    60   Input ~ 0
AVR_TX
Text GLabel 4700 6700 2    60   Input ~ 0
XBEE_RX
$Comp
L R R2
U 1 1 533780B6
P 2700 6700
F 0 "R2" V 2780 6700 40  0000 C CNN
F 1 "1k" V 2707 6701 40  0000 C CNN
F 2 "~" V 2630 6700 30  0000 C CNN
F 3 "~" H 2700 6700 30  0000 C CNN
	1    2700 6700
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 533780C5
P 2850 6700
F 0 "R3" V 2930 6700 40  0000 C CNN
F 1 "1k" V 2857 6701 40  0000 C CNN
F 2 "~" V 2780 6700 30  0000 C CNN
F 3 "~" H 2850 6700 30  0000 C CNN
	1    2850 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6950 2850 6950
$Comp
L GND #PWR010
U 1 1 53378132
P 2850 6450
F 0 "#PWR010" H 2850 6450 30  0001 C CNN
F 1 "GND" H 2850 6380 30  0001 C CNN
F 2 "" H 2850 6450 60  0000 C CNN
F 3 "" H 2850 6450 60  0000 C CNN
	1    2850 6450
	-1   0    0    1   
$EndComp
Text GLabel 2700 6450 0    60   Input ~ 0
BATTERY
Text GLabel 2700 6950 0    60   Input ~ 0
ADC_BATTERY_METER
Text GLabel 4250 2650 2    60   Input ~ 0
ADC_BATTERY_METER
$Comp
L CONN_4 L1
U 1 1 533781B7
P 3500 7350
F 0 "L1" V 3450 7350 50  0000 C CNN
F 1 "LED_RGB" V 3550 7350 50  0000 C CNN
F 2 "" H 3500 7350 60  0000 C CNN
F 3 "" H 3500 7350 60  0000 C CNN
	1    3500 7350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 533781CE
P 3550 7000
F 0 "#PWR011" H 3550 7000 30  0001 C CNN
F 1 "GND" H 3550 6930 30  0001 C CNN
F 2 "" H 3550 7000 60  0000 C CNN
F 3 "" H 3550 7000 60  0000 C CNN
	1    3550 7000
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 533781D4
P 3650 6750
F 0 "R4" V 3730 6750 40  0000 C CNN
F 1 "1k" V 3657 6751 40  0000 C CNN
F 2 "~" V 3580 6750 30  0000 C CNN
F 3 "~" H 3650 6750 30  0000 C CNN
	1    3650 6750
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 533781DA
P 3350 6750
F 0 "R5" V 3430 6750 40  0000 C CNN
F 1 "1k" V 3357 6751 40  0000 C CNN
F 2 "~" V 3280 6750 30  0000 C CNN
F 3 "~" H 3350 6750 30  0000 C CNN
	1    3350 6750
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 533781E0
P 3450 6750
F 0 "R6" V 3530 6750 40  0000 C CNN
F 1 "1k" V 3457 6751 40  0000 C CNN
F 2 "~" V 3380 6750 30  0000 C CNN
F 3 "~" H 3450 6750 30  0000 C CNN
	1    3450 6750
	1    0    0    -1  
$EndComp
Text GLabel 3650 6500 1    60   Input ~ 0
LED_RED
Text GLabel 3450 6500 1    60   Input ~ 0
LED_BLUE
Text GLabel 3350 6500 1    60   Input ~ 0
LED_GREEN
Text GLabel 4250 2950 2    60   Input ~ 0
LED_RED
Text GLabel 4250 5150 2    60   Input ~ 0
LED_GREEN
Text GLabel 4250 2850 2    60   Input ~ 0
LED_BLUE
$Comp
L CONN_3X2 P4
U 1 1 5337851F
P 6350 6100
F 0 "P4" H 6350 6350 50  0000 C CNN
F 1 "PROG" V 6350 6150 40  0000 C CNN
F 2 "" H 6350 6100 60  0000 C CNN
F 3 "" H 6350 6100 60  0000 C CNN
	1    6350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5750 6850 5950
Wire Wire Line
	6850 5950 6750 5950
Wire Wire Line
	5950 6050 4700 6050
Wire Wire Line
	4600 6300 6900 6300
Wire Wire Line
	6900 6300 6900 6150
Wire Wire Line
	6900 6150 6750 6150
Connection ~ 4600 6300
$EndSCHEMATC
