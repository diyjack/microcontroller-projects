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
LIBS:ring60
LIBS:custom
LIBS:ring60-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DS1307 U1
U 1 1 537ACEC6
P 9150 2100
F 0 "U1" H 9150 2400 60  0000 C CNN
F 1 "DS1307" V 9150 1900 60  0000 C CNN
F 2 "" H 9150 2100 60  0000 C CNN
F 3 "" H 9150 2100 60  0000 C CNN
	1    9150 2100
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X2
U 1 1 537ACF32
P 8150 1700
F 0 "X2" H 8150 1850 60  0000 C CNN
F 1 "32,768 kHz" H 8150 1550 60  0000 C CNN
F 2 "" H 8150 1700 60  0000 C CNN
F 3 "" H 8150 1700 60  0000 C CNN
	1    8150 1700
	0    1    1    0   
$EndComp
$Comp
L BATTERY BT1
U 1 1 537ACF90
P 8150 2500
F 0 "BT1" H 8150 2700 50  0000 C CNN
F 1 "BATTERY" H 8150 2310 50  0000 C CNN
F 2 "" H 8150 2500 60  0000 C CNN
F 3 "" H 8150 2500 60  0000 C CNN
	1    8150 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 2200 8550 2200
Wire Wire Line
	8550 1400 8550 1800
Wire Wire Line
	8150 2800 8550 2800
Wire Wire Line
	8550 2800 8550 2400
$Comp
L GND #PWR01
U 1 1 537ACFD1
P 8150 2900
F 0 "#PWR01" H 8150 2900 30  0001 C CNN
F 1 "GND" H 8150 2830 30  0001 C CNN
F 2 "" H 8150 2900 60  0000 C CNN
F 3 "" H 8150 2900 60  0000 C CNN
	1    8150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2800 8150 2900
$Comp
L C C1
U 1 1 537ACFF9
P 10250 2000
F 0 "C1" H 10250 2100 40  0000 L CNN
F 1 "0.1uF" H 10256 1915 40  0000 L CNN
F 2 "" H 10288 1850 30  0000 C CNN
F 3 "" H 10250 2000 60  0000 C CNN
	1    10250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1800 10250 1800
$Comp
L GND #PWR02
U 1 1 537AD08F
P 10250 2300
F 0 "#PWR02" H 10250 2300 30  0001 C CNN
F 1 "GND" H 10250 2230 30  0001 C CNN
F 2 "" H 10250 2300 60  0000 C CNN
F 3 "" H 10250 2300 60  0000 C CNN
	1    10250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2200 10250 2300
Wire Wire Line
	9750 2000 10100 2000
Wire Wire Line
	6500 3150 9950 3150
Wire Wire Line
	9950 3150 9950 2200
Wire Wire Line
	9950 2200 9750 2200
Wire Wire Line
	6500 3050 9750 3050
Wire Wire Line
	9750 3050 9750 2400
$Comp
L VCC #PWR03
U 1 1 537AD124
P 9950 1500
F 0 "#PWR03" H 9950 1600 30  0001 C CNN
F 1 "VCC" H 9950 1600 30  0000 C CNN
F 2 "" H 9950 1500 60  0000 C CNN
F 3 "" H 9950 1500 60  0000 C CNN
	1    9950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1500 9950 1800
Connection ~ 9950 1800
$Comp
L R R1
U 1 1 537AD150
P 7250 2900
F 0 "R1" V 7330 2900 40  0000 C CNN
F 1 "4k7" V 7257 2901 40  0000 C CNN
F 2 "" V 7180 2900 30  0000 C CNN
F 3 "" H 7250 2900 30  0000 C CNN
	1    7250 2900
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 537AD162
P 7250 3300
F 0 "R2" V 7330 3300 40  0000 C CNN
F 1 "4k7" V 7257 3301 40  0000 C CNN
F 2 "" V 7180 3300 30  0000 C CNN
F 3 "" H 7250 3300 30  0000 C CNN
	1    7250 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 2900 7000 3050
Connection ~ 7000 3050
Wire Wire Line
	7000 3150 7000 3300
Connection ~ 7000 3150
$Comp
L VCC #PWR04
U 1 1 537AD21A
P 7600 2900
F 0 "#PWR04" H 7600 3000 30  0001 C CNN
F 1 "VCC" H 7600 3000 30  0000 C CNN
F 2 "" H 7600 2900 60  0000 C CNN
F 3 "" H 7600 2900 60  0000 C CNN
	1    7600 2900
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR05
U 1 1 537AD225
P 7600 3300
F 0 "#PWR05" H 7600 3400 30  0001 C CNN
F 1 "VCC" H 7600 3400 30  0000 C CNN
F 2 "" H 7600 3300 60  0000 C CNN
F 3 "" H 7600 3300 60  0000 C CNN
	1    7600 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 2900 7600 2900
Wire Wire Line
	7500 3300 7600 3300
$Comp
L TSOP39338 U2
U 1 1 537AD35C
P 9350 4200
F 0 "U2" H 9350 4450 60  0000 C CNN
F 1 "TSOP39338" H 9350 4350 60  0000 C CNN
F 2 "" H 9350 4200 60  0000 C CNN
F 3 "" H 9350 4200 60  0000 C CNN
	1    9350 4200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 537AD37A
P 8500 4450
F 0 "#PWR06" H 8500 4450 30  0001 C CNN
F 1 "GND" H 8500 4380 30  0001 C CNN
F 2 "" H 8500 4450 60  0000 C CNN
F 3 "" H 8500 4450 60  0000 C CNN
	1    8500 4450
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR07
U 1 1 537AD3AB
P 8550 4200
F 0 "#PWR07" H 8550 4300 30  0001 C CNN
F 1 "VCC" H 8550 4300 30  0000 C CNN
F 2 "" H 8550 4200 60  0000 C CNN
F 3 "" H 8550 4200 60  0000 C CNN
	1    8550 4200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 537AD3F9
P 4400 5200
F 0 "#PWR08" H 4400 5200 30  0001 C CNN
F 1 "GND" H 4400 5130 30  0001 C CNN
F 2 "" H 4400 5200 60  0000 C CNN
F 3 "" H 4400 5200 60  0000 C CNN
	1    4400 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4100 4400 4100
Wire Wire Line
	4400 3050 4400 5200
Wire Wire Line
	4600 4000 4400 4000
Connection ~ 4400 4100
$Comp
L VCC #PWR09
U 1 1 537AD451
P 4300 1600
F 0 "#PWR09" H 4300 1700 30  0001 C CNN
F 1 "VCC" H 4300 1700 30  0000 C CNN
F 2 "" H 4300 1600 60  0000 C CNN
F 3 "" H 4300 1600 60  0000 C CNN
	1    4300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1600 4300 4450
Wire Wire Line
	4300 1800 4600 1800
Wire Wire Line
	4300 2100 4600 2100
Connection ~ 4300 1800
Wire Wire Line
	4300 2400 4600 2400
Connection ~ 4300 2100
NoConn ~ 6500 2750
NoConn ~ 6500 2950
NoConn ~ 6500 3800
NoConn ~ 6500 3900
NoConn ~ 6500 4000
$Comp
L CONN_3 K1
U 1 1 537AD616
P 7500 4100
F 0 "K1" V 7450 4100 50  0000 C CNN
F 1 "CONN_3" V 7550 4100 40  0000 C CNN
F 2 "" H 7500 4100 60  0000 C CNN
F 3 "" H 7500 4100 60  0000 C CNN
	1    7500 4100
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR010
U 1 1 537AD65D
P 7600 4550
F 0 "#PWR010" H 7600 4650 30  0001 C CNN
F 1 "VCC" H 7600 4650 30  0000 C CNN
F 2 "" H 7600 4550 60  0000 C CNN
F 3 "" H 7600 4550 60  0000 C CNN
	1    7600 4550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 537AD668
P 7500 4550
F 0 "#PWR011" H 7500 4550 30  0001 C CNN
F 1 "GND" H 7500 4480 30  0001 C CNN
F 2 "" H 7500 4550 60  0000 C CNN
F 3 "" H 7500 4550 60  0000 C CNN
	1    7500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4450 7600 4550
Wire Wire Line
	7500 4450 7500 4550
Connection ~ 8150 1400
Connection ~ 8150 2000
Wire Wire Line
	8150 1400 8550 1400
Wire Wire Line
	8150 2000 8550 2000
Wire Wire Line
	10100 2000 10100 3600
Wire Wire Line
	10100 3600 6500 3600
Text Label 8850 3600 0    60   ~ 0
SQW
Text Label 8850 3050 0    60   ~ 0
SDA
Text Label 8850 3150 0    60   ~ 0
SCL
Text Label 8450 3950 0    60   ~ 0
IROUT
Text Label 8200 1400 0    60   ~ 0
RTC_X1
Text Label 8200 2000 0    60   ~ 0
RTC_X2
Text Label 8200 2200 0    60   ~ 0
VBAT
Text Label 7300 4450 2    60   ~ 0
LED_OUT
Wire Wire Line
	4300 2850 3650 2850
Connection ~ 4300 2400
Wire Wire Line
	3650 3050 4400 3050
Connection ~ 4400 4000
Wire Wire Line
	6500 2300 6600 2300
Wire Wire Line
	6500 2200 6650 2200
Wire Wire Line
	6650 2200 6650 4550
Wire Wire Line
	6600 2300 6600 4650
Wire Wire Line
	6500 3250 6550 3250
Wire Wire Line
	6550 3250 6550 4750
Wire Wire Line
	6500 2100 6700 2100
Text Label 6100 4450 0    60   ~ 0
MOSI
Text Label 6100 4650 0    60   ~ 0
SCK
Text Label 6100 4550 0    60   ~ 0
MISO
Text Label 6150 4750 0    60   ~ 0
RESET
NoConn ~ 6500 2650
NoConn ~ 6500 3400
NoConn ~ 6500 3500
NoConn ~ 6500 4100
$Comp
L R R3
U 1 1 537E508D
P 6100 5150
F 0 "R3" V 6180 5150 40  0000 C CNN
F 1 "1k" V 6107 5151 40  0000 C CNN
F 2 "" V 6030 5150 30  0000 C CNN
F 3 "" H 6100 5150 30  0000 C CNN
	1    6100 5150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 537E50F4
P 6100 5600
F 0 "#PWR012" H 6100 5700 30  0001 C CNN
F 1 "VCC" H 6100 5700 30  0000 C CNN
F 2 "" H 6100 5600 60  0000 C CNN
F 3 "" H 6100 5600 60  0000 C CNN
	1    6100 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 4450 7400 4450
Wire Wire Line
	6750 2850 6750 4450
NoConn ~ 6500 1800
NoConn ~ 6500 1900
$Comp
L ATMEGA328-A IC1
U 1 1 53861E58
P 5500 2900
F 0 "IC1" H 4750 4150 40  0000 L BNN
F 1 "ATMEGA328-A" H 5900 1500 40  0000 L BNN
F 2 "TQFP32" H 5500 2900 30  0000 C CIN
F 3 "" H 5500 2900 60  0000 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3950 8300 3950
Wire Wire Line
	8300 3950 8300 3700
Wire Wire Line
	8300 3700 6500 3700
Wire Wire Line
	8550 4200 8950 4200
Wire Wire Line
	8500 4450 8950 4450
$Comp
L CONN_1 VCC1
U 1 1 53861FA3
P 3500 2850
F 0 "VCC1" H 3580 2850 40  0000 L CNN
F 1 "CONN_1" H 3500 2905 30  0001 C CNN
F 2 "" H 3500 2850 60  0000 C CNN
F 3 "" H 3500 2850 60  0000 C CNN
	1    3500 2850
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 GND1
U 1 1 53861FB5
P 3500 3050
F 0 "GND1" H 3580 3050 40  0000 L CNN
F 1 "CONN_1" H 3500 3105 30  0001 C CNN
F 2 "" H 3500 3050 60  0000 C CNN
F 3 "" H 3500 3050 60  0000 C CNN
	1    3500 3050
	-1   0    0    1   
$EndComp
NoConn ~ 4600 3150
NoConn ~ 4600 3250
NoConn ~ 6500 2000
$Comp
L ISP P1
U 1 1 538620D1
P 5600 4600
F 0 "P1" H 5600 4350 60  0000 C CNN
F 1 "ISP" H 5600 4850 60  0000 C CNN
F 2 "" H 5600 4600 60  0000 C CNN
F 3 "" H 5600 4600 60  0000 C CNN
	1    5600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4750 5950 4750
Wire Wire Line
	6600 4650 5950 4650
Wire Wire Line
	6650 4550 5950 4550
Wire Wire Line
	5950 4450 6700 4450
Wire Wire Line
	6700 4450 6700 2100
Wire Wire Line
	6100 4900 6100 4750
Connection ~ 6100 4750
Wire Wire Line
	4400 4750 5250 4750
Connection ~ 4400 4750
Wire Wire Line
	6100 5600 6100 5400
Wire Wire Line
	4300 4450 5250 4450
Connection ~ 4300 2850
Wire Wire Line
	4600 3900 4400 3900
Connection ~ 4400 3900
NoConn ~ 6500 2400
NoConn ~ 6500 2500
Wire Wire Line
	4600 1900 4300 1900
Connection ~ 4300 1900
Wire Wire Line
	6750 2850 6500 2850
$EndSCHEMATC
