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
LIBS:cmr_link
LIBS:cmr_link-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "18 feb 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DS90CR288A U1
U 1 1 5491E7BC
P 5800 3000
F 0 "U1" V 5750 3000 70  0000 C CNN
F 1 "DS90CR288A" V 5850 3000 70  0000 C CNN
F 2 "tssop:tssop-56-DGG" H 5800 2750 60  0001 C CNN
F 3 "~" H 5800 2750 60  0000 C CNN
	1    5800 3000
	-1   0    0    1   
$EndComp
$Comp
L 12226-8250-00FR P6
U 1 1 54DE4A1B
P 10000 2450
F 0 "P6" V 10300 2450 60  0000 C CNN
F 1 "12226-8250-00FR" V 10150 2450 60  0000 C CNN
F 2 "cmr_link:12226-8250-00FR" H 10000 2450 60  0001 C CNN
F 3 "" H 10000 2450 60  0000 C CNN
	1    10000 2450
	1    0    0    -1  
$EndComp
Text Label 10450 800  0    60   ~ 0
Outer_Shield
Text Label 10450 4100 0    60   ~ 0
Outer_Shield
Text Label 9350 3800 3    60   ~ 0
Inner_Shield
Text Label 9350 1100 1    60   ~ 0
Inner_Shield
$Comp
L R R6
U 1 1 54DEA660
P 9050 3900
F 0 "R6" V 9130 3900 40  0000 C CNN
F 1 "100" V 9057 3901 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8980 3900 30  0001 C CNN
F 3 "~" H 9050 3900 30  0000 C CNN
	1    9050 3900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 54DEA7C4
P 8850 3900
F 0 "R5" V 8930 3900 40  0000 C CNN
F 1 "100" V 8857 3901 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8780 3900 30  0001 C CNN
F 3 "~" H 8850 3900 30  0000 C CNN
	1    8850 3900
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 54DEA903
P 8650 3900
F 0 "R4" V 8730 3900 40  0000 C CNN
F 1 "100" V 8657 3901 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8580 3900 30  0001 C CNN
F 3 "~" H 8650 3900 30  0000 C CNN
	1    8650 3900
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54DEA909
P 8450 3900
F 0 "R3" V 8530 3900 40  0000 C CNN
F 1 "100" V 8457 3901 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8380 3900 30  0001 C CNN
F 3 "~" H 8450 3900 30  0000 C CNN
	1    8450 3900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 54DEA90F
P 8250 3900
F 0 "R2" V 8330 3900 40  0000 C CNN
F 1 "100" V 8257 3901 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8180 3900 30  0001 C CNN
F 3 "~" H 8250 3900 30  0000 C CNN
	1    8250 3900
	1    0    0    -1  
$EndComp
Text Label 6750 2300 0    60   ~ 0
LVDS_GND
Text Label 6750 3100 0    60   ~ 0
LVDS_VCC
Text Label 1900 5200 0    60   ~ 0
Outer_Shield
Text Label 1400 5700 0    60   ~ 0
Inner_Shield
$Comp
L GND #PWR01
U 1 1 54DEB5BE
P 6850 3950
F 0 "#PWR01" H 6850 3950 30  0001 C CNN
F 1 "GND" H 6850 3880 30  0001 C CNN
F 2 "" H 6850 3950 60  0000 C CNN
F 3 "" H 6850 3950 60  0000 C CNN
	1    6850 3950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 54DEB627
P 6850 1550
F 0 "#PWR02" H 6850 1550 30  0001 C CNN
F 1 "GND" H 6850 1480 30  0001 C CNN
F 2 "" H 6850 1550 60  0000 C CNN
F 3 "" H 6850 1550 60  0000 C CNN
	1    6850 1550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 54DEB62E
P 4750 3050
F 0 "#PWR03" H 4750 3050 30  0001 C CNN
F 1 "GND" H 4750 2980 30  0001 C CNN
F 2 "" H 4750 3050 60  0000 C CNN
F 3 "" H 4750 3050 60  0000 C CNN
	1    4750 3050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 54DEB635
P 4750 2250
F 0 "#PWR04" H 4750 2250 30  0001 C CNN
F 1 "GND" H 4750 2180 30  0001 C CNN
F 2 "" H 4750 2250 60  0000 C CNN
F 3 "" H 4750 2250 60  0000 C CNN
	1    4750 2250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 54DEB63C
P 4750 3850
F 0 "#PWR05" H 4750 3850 30  0001 C CNN
F 1 "GND" H 4750 3780 30  0001 C CNN
F 2 "" H 4750 3850 60  0000 C CNN
F 3 "" H 4750 3850 60  0000 C CNN
	1    4750 3850
	0    1    1    0   
$EndComp
Text Label 6750 2200 0    60   ~ 0
PLL_GND
Text Label 4850 1800 2    60   ~ 0
VCC
Text Label 4850 2700 2    60   ~ 0
VCC
Text Label 4850 3500 2    60   ~ 0
VCC
Text Label 4850 4300 2    60   ~ 0
VCC
Text Label 4100 5850 0    60   ~ 0
VCC
Text Label 6750 2100 0    60   ~ 0
PLL_VCC
Text Label 6750 2000 0    60   ~ 0
PLL_GND
Text Label 6750 3000 0    60   ~ 0
LVDS_GND
Text Label 6750 3600 0    60   ~ 0
LVDS_VCC
$Comp
L C C1
U 1 1 54E4A69C
P 700 850
F 0 "C1" H 700 950 40  0000 L CNN
F 1 "0.1u" H 706 765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 738 700 30  0001 C CNN
F 3 "~" H 700 850 60  0000 C CNN
	1    700  850 
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 54E4A6AB
P 900 850
F 0 "C8" H 900 950 40  0000 L CNN
F 1 "10n" H 906 765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 938 700 30  0000 C CNN
F 3 "~" H 900 850 60  0000 C CNN
	1    900  850 
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 54E4A6BA
P 1100 850
F 0 "C15" H 1100 950 40  0000 L CNN
F 1 "1n" H 1106 765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1138 700 30  0000 C CNN
F 3 "~" H 1100 850 60  0000 C CNN
	1    1100 850 
	1    0    0    -1  
$EndComp
Text Label 1300 650  0    60   ~ 0
PLL_VCC
Text Label 1300 1050 0    60   ~ 0
PLL_GND
Text Label 6750 2400 0    60   ~ 0
RxIN3+
Text Label 6750 2500 0    60   ~ 0
RxIN3-
Text Label 6750 2600 0    60   ~ 0
RxCLKIN+
Text Label 6750 2700 0    60   ~ 0
RxCLKIN-
Text Label 6750 2800 0    60   ~ 0
RxIN2+
Text Label 6750 2900 0    60   ~ 0
RxIN2-
Text Label 6750 3200 0    60   ~ 0
RxIN1+
Text Label 6750 3300 0    60   ~ 0
RxIN1-
Text Label 6750 3400 0    60   ~ 0
RxIN0+
Text Label 6750 3500 0    60   ~ 0
RxIN0-
$Comp
L C C2
U 1 1 54E51266
P 700 1350
F 0 "C2" H 700 1450 40  0000 L CNN
F 1 "0.1u" H 706 1265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 738 1200 30  0000 C CNN
F 3 "~" H 700 1350 60  0000 C CNN
	1    700  1350
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 54E5126C
P 900 1350
F 0 "C9" H 900 1450 40  0000 L CNN
F 1 "10n" H 906 1265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 938 1200 30  0000 C CNN
F 3 "~" H 900 1350 60  0000 C CNN
	1    900  1350
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 54E51272
P 1100 1350
F 0 "C16" H 1100 1450 40  0000 L CNN
F 1 "1n" H 1106 1265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1138 1200 30  0000 C CNN
F 3 "~" H 1100 1350 60  0000 C CNN
	1    1100 1350
	1    0    0    -1  
$EndComp
Text Label 1300 1150 0    60   ~ 0
LVDS_VCC
Text Label 1300 1550 0    60   ~ 0
LVDS_GND
$Comp
L C C4
U 1 1 54E514C8
P 700 2350
F 0 "C4" H 700 2450 40  0000 L CNN
F 1 "0.1u" H 706 2265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 738 2200 30  0000 C CNN
F 3 "~" H 700 2350 60  0000 C CNN
	1    700  2350
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 54E514CE
P 900 2350
F 0 "C11" H 900 2450 40  0000 L CNN
F 1 "10n" H 906 2265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 938 2200 30  0000 C CNN
F 3 "~" H 900 2350 60  0000 C CNN
	1    900  2350
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 54E514D4
P 1100 2350
F 0 "C18" H 1100 2450 40  0000 L CNN
F 1 "1n" H 1106 2265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1138 2200 30  0000 C CNN
F 3 "~" H 1100 2350 60  0000 C CNN
	1    1100 2350
	1    0    0    -1  
$EndComp
Text Label 1300 2150 0    60   ~ 0
VCC
$Comp
L GND #PWR06
U 1 1 54E5195E
P 1150 2550
F 0 "#PWR06" H 1150 2550 30  0001 C CNN
F 1 "GND" H 1150 2480 30  0001 C CNN
F 2 "" H 1150 2550 60  0000 C CNN
F 3 "" H 1150 2550 60  0000 C CNN
	1    1150 2550
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 54E5299D
P 700 1850
F 0 "C3" H 700 1950 40  0000 L CNN
F 1 "0.1u" H 706 1765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 738 1700 30  0000 C CNN
F 3 "~" H 700 1850 60  0000 C CNN
	1    700  1850
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 54E529A3
P 900 1850
F 0 "C10" H 900 1950 40  0000 L CNN
F 1 "10n" H 906 1765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 938 1700 30  0000 C CNN
F 3 "~" H 900 1850 60  0000 C CNN
	1    900  1850
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 54E529A9
P 1100 1850
F 0 "C17" H 1100 1950 40  0000 L CNN
F 1 "1n" H 1106 1765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1138 1700 30  0000 C CNN
F 3 "~" H 1100 1850 60  0000 C CNN
	1    1100 1850
	1    0    0    -1  
$EndComp
Text Label 1300 1650 0    60   ~ 0
LVDS_VCC
Text Label 1300 2050 0    60   ~ 0
LVDS_GND
$Comp
L CONN_01X01 P1
U 1 1 54E5338C
P 1050 4350
F 0 "P1" H 1050 4450 50  0000 C CNN
F 1 "Mount" V 1150 4350 50  0000 C CNN
F 2 "Connect:1pin" H 1050 4350 60  0001 C CNN
F 3 "" H 1050 4350 60  0000 C CNN
	1    1050 4350
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 54E537B3
P 1050 4650
F 0 "P2" H 1050 4750 50  0000 C CNN
F 1 "Mount" V 1150 4650 50  0000 C CNN
F 2 "Connect:1pin" H 1050 4650 60  0001 C CNN
F 3 "" H 1050 4650 60  0000 C CNN
	1    1050 4650
	-1   0    0    1   
$EndComp
$Comp
L CONN_02X30 P3
U 1 1 54E53FCB
P 2500 3000
F 0 "P3" H 2500 4550 50  0000 C CNN
F 1 "Output" V 2500 3000 50  0000 C CNN
F 2 "conn:2x30_2mm" H 2500 2500 60  0001 C CNN
F 3 "" H 2500 2500 60  0000 C CNN
	1    2500 3000
	1    0    0    -1  
$EndComp
Text Label 6750 1900 0    60   ~ 0
PWR_DWN
Text Label 6750 1800 0    60   ~ 0
RxCLK_OUT
Text Label 6750 1700 0    60   ~ 0
RxOUT0
Text Label 6750 3700 0    60   ~ 0
RxOUT27
Text Label 6750 3800 0    60   ~ 0
RxOUT26
Text Label 6750 3900 0    60   ~ 0
RxOUT25
Text Label 6750 4100 0    60   ~ 0
RxOUT24
Text Label 6750 4200 0    60   ~ 0
RxOUT23
Text Label 6750 4300 0    60   ~ 0
RxOUT22
Text Label 4850 4200 2    60   ~ 0
RxOUT21
Text Label 4850 4100 2    60   ~ 0
RxOUT20
Text Label 4850 4000 2    60   ~ 0
RxOUT19
Text Label 4850 3800 2    60   ~ 0
RxOUT18
Text Label 4850 3700 2    60   ~ 0
RxOUT17
Text Label 4850 3600 2    60   ~ 0
RxOUT16
Text Label 4850 3400 2    60   ~ 0
RxOUT15
Text Label 4850 3300 2    60   ~ 0
RxOUT14
Text Label 4850 3200 2    60   ~ 0
RxOUT13
Text Label 4850 3000 2    60   ~ 0
RxOUT12
Text Label 4850 2900 2    60   ~ 0
RxOUT11
Text Label 4850 2800 2    60   ~ 0
RxOUT10
Text Label 4850 2600 2    60   ~ 0
RxOUT9
Text Label 4850 2500 2    60   ~ 0
RxOUT8
Text Label 4850 2400 2    60   ~ 0
RxOUT7
Text Label 4850 2200 2    60   ~ 0
RxOUT6
Text Label 4850 2100 2    60   ~ 0
RxOUT5
Text Label 4850 2000 2    60   ~ 0
RxOUT4
Text Label 4850 1900 2    60   ~ 0
RxOUT3
Text Label 4850 1700 2    60   ~ 0
RxOUT2
Text Label 4850 1600 2    60   ~ 0
RxOUT1
$Comp
L GND #PWR07
U 1 1 54E587F9
P 2150 4450
F 0 "#PWR07" H 2150 4450 30  0001 C CNN
F 1 "GND" H 2150 4380 30  0001 C CNN
F 2 "" H 2150 4450 60  0000 C CNN
F 3 "" H 2150 4450 60  0000 C CNN
	1    2150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2900 7400 3100
Wire Wire Line
	7400 3100 9350 3100
Wire Wire Line
	7500 2800 7500 3000
Wire Wire Line
	7500 3000 9350 3000
Wire Wire Line
	7600 2700 7600 2900
Wire Wire Line
	7600 2900 9350 2900
Wire Wire Line
	7700 2600 7700 2800
Wire Wire Line
	7700 2800 9350 2800
Wire Wire Line
	7800 2500 7800 2700
Wire Wire Line
	7800 2700 9350 2700
Wire Wire Line
	7900 2400 7900 2600
Wire Wire Line
	7900 2600 9350 2600
Wire Wire Line
	9350 3600 9350 3800
Wire Wire Line
	9350 1100 9350 1300
Wire Wire Line
	10200 800  10450 800 
Wire Wire Line
	10200 4100 10450 4100
Connection ~ 9350 3700
Connection ~ 9350 1200
Connection ~ 10350 800 
Connection ~ 10350 4100
Wire Wire Line
	9050 3650 9050 3500
Connection ~ 9050 3500
Wire Wire Line
	8950 3400 8950 4150
Wire Wire Line
	8950 4150 9050 4150
Connection ~ 8950 3400
Wire Wire Line
	8850 3650 8850 3300
Connection ~ 8850 3300
Wire Wire Line
	8850 4150 8750 4150
Wire Wire Line
	8750 4150 8750 3200
Connection ~ 8750 3200
Wire Wire Line
	8650 3650 8650 3100
Connection ~ 8650 3100
Wire Wire Line
	8450 3650 8450 2900
Connection ~ 8450 2900
Wire Wire Line
	8650 4150 8550 4150
Wire Wire Line
	8550 4150 8550 3000
Connection ~ 8550 3000
Wire Wire Line
	8450 4150 8350 4150
Wire Wire Line
	8350 4150 8350 2800
Connection ~ 8350 2800
Wire Wire Line
	8250 3650 8250 2700
Connection ~ 8250 2700
Wire Wire Line
	8250 4150 8150 4150
Wire Wire Line
	8150 4150 8150 2600
Connection ~ 8150 2600
Wire Wire Line
	700  650  1300 650 
Connection ~ 900  650 
Wire Wire Line
	700  1050 1300 1050
Connection ~ 900  1050
Connection ~ 1100 1050
Connection ~ 1100 650 
Wire Wire Line
	700  1150 1300 1150
Connection ~ 900  1150
Wire Wire Line
	700  1550 1300 1550
Connection ~ 900  1550
Connection ~ 1100 1550
Connection ~ 1100 1150
Wire Wire Line
	700  2150 1300 2150
Connection ~ 900  2150
Connection ~ 900  2550
Connection ~ 1100 2550
Connection ~ 1100 2150
Wire Wire Line
	700  1650 1300 1650
Connection ~ 900  1650
Wire Wire Line
	700  2050 1300 2050
Connection ~ 900  2050
Connection ~ 1100 2050
Connection ~ 1100 1650
Wire Wire Line
	6750 3500 9350 3500
Wire Wire Line
	6750 3400 9350 3400
Wire Wire Line
	6750 3300 9350 3300
Wire Wire Line
	6750 3200 9350 3200
Wire Wire Line
	6750 2900 7400 2900
Wire Wire Line
	6750 2800 7500 2800
Wire Wire Line
	6750 2700 7600 2700
Wire Wire Line
	6750 2600 7700 2600
Wire Wire Line
	6750 2500 7800 2500
Wire Wire Line
	6750 2400 7900 2400
Wire Wire Line
	2250 4450 2250 1550
Connection ~ 2250 4350
Connection ~ 2250 4250
Connection ~ 2250 4150
Connection ~ 2250 4050
Connection ~ 2250 3950
Connection ~ 2250 3850
Connection ~ 2250 3750
Connection ~ 2250 3650
Connection ~ 2250 3550
Connection ~ 2250 3450
Connection ~ 2250 3350
Connection ~ 2250 3250
Connection ~ 2250 3150
Connection ~ 2250 3050
Connection ~ 2250 2950
Connection ~ 2250 2850
Connection ~ 2250 2750
Connection ~ 2250 2650
Connection ~ 2250 2550
Connection ~ 2250 2450
Connection ~ 2250 2350
Connection ~ 2250 2250
Connection ~ 2250 2150
Connection ~ 2250 2050
Connection ~ 2250 1950
Connection ~ 2250 1850
Connection ~ 2250 1750
Connection ~ 2250 1650
Text Label 2750 4450 0    60   ~ 0
VCC3v3
Wire Wire Line
	2150 4450 2250 4450
Wire Wire Line
	6750 1600 6800 1600
Wire Wire Line
	6800 1600 6800 1550
Wire Wire Line
	6800 1550 6850 1550
Wire Wire Line
	6750 4000 6800 4000
Wire Wire Line
	6800 4000 6800 3950
Wire Wire Line
	6800 3950 6850 3950
Wire Wire Line
	4850 3900 4800 3900
Wire Wire Line
	4800 3900 4800 3850
Wire Wire Line
	4800 3850 4750 3850
Wire Wire Line
	4850 3100 4800 3100
Wire Wire Line
	4800 3100 4800 3050
Wire Wire Line
	4800 3050 4750 3050
Wire Wire Line
	4850 2300 4800 2300
Wire Wire Line
	4800 2300 4800 2250
Wire Wire Line
	4800 2250 4750 2250
Wire Wire Line
	700  2550 1150 2550
$Comp
L C C5
U 1 1 54E5D4CD
P 700 2850
F 0 "C5" H 700 2950 40  0000 L CNN
F 1 "0.1u" H 706 2765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 738 2700 30  0000 C CNN
F 3 "~" H 700 2850 60  0000 C CNN
	1    700  2850
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 54E5D4D3
P 900 2850
F 0 "C12" H 900 2950 40  0000 L CNN
F 1 "10n" H 906 2765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 938 2700 30  0000 C CNN
F 3 "~" H 900 2850 60  0000 C CNN
	1    900  2850
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 54E5D4D9
P 1100 2850
F 0 "C19" H 1100 2950 40  0000 L CNN
F 1 "1n" H 1106 2765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1138 2700 30  0000 C CNN
F 3 "~" H 1100 2850 60  0000 C CNN
	1    1100 2850
	1    0    0    -1  
$EndComp
Text Label 1300 2650 0    60   ~ 0
VCC
$Comp
L GND #PWR08
U 1 1 54E5D4E0
P 1150 3050
F 0 "#PWR08" H 1150 3050 30  0001 C CNN
F 1 "GND" H 1150 2980 30  0001 C CNN
F 2 "" H 1150 3050 60  0000 C CNN
F 3 "" H 1150 3050 60  0000 C CNN
	1    1150 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	700  2650 1300 2650
Connection ~ 900  2650
Connection ~ 900  3050
Connection ~ 1100 3050
Connection ~ 1100 2650
Wire Wire Line
	700  3050 1150 3050
$Comp
L C C6
U 1 1 54E5D6DB
P 700 3350
F 0 "C6" H 700 3450 40  0000 L CNN
F 1 "0.1u" H 706 3265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 738 3200 30  0000 C CNN
F 3 "~" H 700 3350 60  0000 C CNN
	1    700  3350
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 54E5D6E1
P 900 3350
F 0 "C13" H 900 3450 40  0000 L CNN
F 1 "10n" H 906 3265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 938 3200 30  0000 C CNN
F 3 "~" H 900 3350 60  0000 C CNN
	1    900  3350
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 54E5D6E7
P 1100 3350
F 0 "C20" H 1100 3450 40  0000 L CNN
F 1 "1n" H 1106 3265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1138 3200 30  0000 C CNN
F 3 "~" H 1100 3350 60  0000 C CNN
	1    1100 3350
	1    0    0    -1  
$EndComp
Text Label 1300 3150 0    60   ~ 0
VCC
$Comp
L GND #PWR09
U 1 1 54E5D6EE
P 1150 3550
F 0 "#PWR09" H 1150 3550 30  0001 C CNN
F 1 "GND" H 1150 3480 30  0001 C CNN
F 2 "" H 1150 3550 60  0000 C CNN
F 3 "" H 1150 3550 60  0000 C CNN
	1    1150 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	700  3150 1300 3150
Connection ~ 900  3150
Connection ~ 900  3550
Connection ~ 1100 3550
Connection ~ 1100 3150
Wire Wire Line
	700  3550 1150 3550
$Comp
L C C7
U 1 1 54E5D6FA
P 700 3850
F 0 "C7" H 700 3950 40  0000 L CNN
F 1 "0.1u" H 706 3765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 738 3700 30  0000 C CNN
F 3 "~" H 700 3850 60  0000 C CNN
	1    700  3850
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 54E5D700
P 900 3850
F 0 "C14" H 900 3950 40  0000 L CNN
F 1 "10n" H 906 3765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 938 3700 30  0000 C CNN
F 3 "~" H 900 3850 60  0000 C CNN
	1    900  3850
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 54E5D706
P 1100 3850
F 0 "C21" H 1100 3950 40  0000 L CNN
F 1 "1n" H 1106 3765 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1138 3700 30  0000 C CNN
F 3 "~" H 1100 3850 60  0000 C CNN
	1    1100 3850
	1    0    0    -1  
$EndComp
Text Label 1300 3650 0    60   ~ 0
VCC
$Comp
L GND #PWR010
U 1 1 54E5D70D
P 1150 4050
F 0 "#PWR010" H 1150 4050 30  0001 C CNN
F 1 "GND" H 1150 3980 30  0001 C CNN
F 2 "" H 1150 4050 60  0000 C CNN
F 3 "" H 1150 4050 60  0000 C CNN
	1    1150 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	700  3650 1300 3650
Connection ~ 900  3650
Connection ~ 900  4050
Connection ~ 1100 4050
Connection ~ 1100 3650
Wire Wire Line
	700  4050 1150 4050
Text Label 7400 1700 0    60   ~ 0
A0
Wire Wire Line
	6750 1700 7400 1700
Text Label 7400 1800 0    60   ~ 0
Strobe
Wire Wire Line
	6750 1800 7400 1800
Text Label 7400 3700 0    60   ~ 0
A6
Wire Wire Line
	6750 3700 7400 3700
Text Label 7400 3800 0    60   ~ 0
DVAL
Wire Wire Line
	6750 3800 7400 3800
Text Label 7400 3900 0    60   ~ 0
FVAL
Wire Wire Line
	6750 3900 7400 3900
Text Label 7400 4100 0    60   ~ 0
LVAL
Wire Wire Line
	6750 4100 7400 4100
Text Label 7400 4200 0    60   ~ 0
Spare
Wire Wire Line
	6750 4200 7400 4200
Text Label 7400 4300 0    60   ~ 0
C5
Wire Wire Line
	6750 4300 7400 4300
Wire Wire Line
	4200 4200 4850 4200
Text Label 4200 4200 2    60   ~ 0
C4
Wire Wire Line
	4200 4100 4850 4100
Text Label 4200 4100 2    60   ~ 0
C3
Wire Wire Line
	4200 4000 4850 4000
Text Label 4200 4000 2    60   ~ 0
C2
Wire Wire Line
	4200 3800 4850 3800
Text Label 4200 3800 2    60   ~ 0
C1
Wire Wire Line
	4200 3700 4850 3700
Text Label 4200 3700 2    60   ~ 0
C7
Wire Wire Line
	4200 3600 4850 3600
Text Label 4200 3600 2    60   ~ 0
C6
Wire Wire Line
	4200 3400 4850 3400
Text Label 4200 3400 2    60   ~ 0
C0
Wire Wire Line
	4200 3300 4850 3300
Text Label 4200 3300 2    60   ~ 0
B5
Wire Wire Line
	4200 3200 4850 3200
Text Label 4200 3200 2    60   ~ 0
B4
Wire Wire Line
	4200 3000 4850 3000
Text Label 4200 3000 2    60   ~ 0
B3
Wire Wire Line
	4200 2900 4850 2900
Text Label 4200 2900 2    60   ~ 0
B7
Wire Wire Line
	4200 2800 4850 2800
Text Label 4200 2800 2    60   ~ 0
B6
Wire Wire Line
	4200 2600 4850 2600
Text Label 4200 2600 2    60   ~ 0
B2
Wire Wire Line
	4200 2500 4850 2500
Text Label 4200 2500 2    60   ~ 0
B1
Wire Wire Line
	4200 2400 4850 2400
Text Label 4200 2400 2    60   ~ 0
B0
Wire Wire Line
	4200 2200 4850 2200
Text Label 4200 2200 2    60   ~ 0
A5
Wire Wire Line
	4200 2100 4850 2100
Text Label 4200 2100 2    60   ~ 0
A7
Wire Wire Line
	4200 2000 4850 2000
Text Label 4200 2000 2    60   ~ 0
A4
Wire Wire Line
	4200 1900 4850 1900
Text Label 4200 1900 2    60   ~ 0
A3
Wire Wire Line
	4200 1700 4850 1700
Text Label 4200 1700 2    60   ~ 0
A2
Wire Wire Line
	4200 1600 4850 1600
Text Label 4200 1600 2    60   ~ 0
A1
Text Label 2750 1650 0    60   ~ 0
RxCLK_OUT
Text Label 2750 1750 0    60   ~ 0
RxOUT0
Text Label 2750 1850 0    60   ~ 0
RxOUT1
Text Label 2750 1950 0    60   ~ 0
RxOUT2
Text Label 2750 2050 0    60   ~ 0
RxOUT3
Text Label 2750 2150 0    60   ~ 0
RxOUT4
Text Label 2750 2250 0    60   ~ 0
RxOUT5
Text Label 2750 2350 0    60   ~ 0
RxOUT6
Text Label 2750 2450 0    60   ~ 0
RxOUT7
Text Label 2750 2550 0    60   ~ 0
RxOUT8
Text Label 2750 2650 0    60   ~ 0
RxOUT9
Text Label 2750 2750 0    60   ~ 0
RxOUT10
Text Label 2750 2850 0    60   ~ 0
RxOUT11
Text Label 2750 2950 0    60   ~ 0
RxOUT12
Text Label 2750 3050 0    60   ~ 0
RxOUT13
Text Label 2750 3150 0    60   ~ 0
RxOUT14
Text Label 2750 4350 0    60   ~ 0
RxOUT27
Text Label 2750 4250 0    60   ~ 0
RxOUT26
Text Label 2750 4150 0    60   ~ 0
RxOUT25
Text Label 2750 4050 0    60   ~ 0
RxOUT24
Text Label 2750 3950 0    60   ~ 0
RxOUT22
Text Label 2750 3850 0    60   ~ 0
RxOUT21
Text Label 2750 3750 0    60   ~ 0
RxOUT20
Text Label 2750 3650 0    60   ~ 0
RxOUT19
Text Label 2750 3550 0    60   ~ 0
RxOUT18
Text Label 2750 3450 0    60   ~ 0
RxOUT17
Text Label 2750 3350 0    60   ~ 0
RxOUT16
Text Label 2750 3250 0    60   ~ 0
RxOUT15
Text Label 2750 1550 0    60   ~ 0
RxOUT23
$Comp
L CONN_01X30 P5
U 1 1 54E6470E
P 3350 3000
F 0 "P5" H 3350 4550 50  0000 C CNN
F 1 "Testing" V 3450 3000 50  0000 C CNN
F 2 "conn:1x30_2mm" H 3350 3000 60  0001 C CNN
F 3 "" H 3350 3000 60  0000 C CNN
	1    3350 3000
	-1   0    0    1   
$EndComp
Text Label 3550 4450 0    60   ~ 0
VCC3v3
Text Label 3550 1650 0    60   ~ 0
RxCLK_OUT
Text Label 3550 1750 0    60   ~ 0
RxOUT0
Text Label 3550 1850 0    60   ~ 0
RxOUT1
Text Label 3550 1950 0    60   ~ 0
RxOUT2
Text Label 3550 2050 0    60   ~ 0
RxOUT3
Text Label 3550 2150 0    60   ~ 0
RxOUT4
Text Label 3550 2250 0    60   ~ 0
RxOUT5
Text Label 3550 2350 0    60   ~ 0
RxOUT6
Text Label 3550 2450 0    60   ~ 0
RxOUT7
Text Label 3550 2550 0    60   ~ 0
RxOUT8
Text Label 3550 2650 0    60   ~ 0
RxOUT9
Text Label 3550 2750 0    60   ~ 0
RxOUT10
Text Label 3550 2850 0    60   ~ 0
RxOUT11
Text Label 3550 2950 0    60   ~ 0
RxOUT12
Text Label 3550 3050 0    60   ~ 0
RxOUT13
Text Label 3550 3150 0    60   ~ 0
RxOUT14
Text Label 3550 4350 0    60   ~ 0
RxOUT27
Text Label 3550 4250 0    60   ~ 0
RxOUT26
Text Label 3550 4150 0    60   ~ 0
RxOUT25
Text Label 3550 4050 0    60   ~ 0
RxOUT24
Text Label 3550 3950 0    60   ~ 0
RxOUT22
Text Label 3550 3850 0    60   ~ 0
RxOUT21
Text Label 3550 3750 0    60   ~ 0
RxOUT20
Text Label 3550 3650 0    60   ~ 0
RxOUT19
Text Label 3550 3550 0    60   ~ 0
RxOUT18
Text Label 3550 3450 0    60   ~ 0
RxOUT17
Text Label 3550 3350 0    60   ~ 0
RxOUT16
Text Label 3550 3250 0    60   ~ 0
RxOUT15
Text Label 3550 1550 0    60   ~ 0
RxOUT23
Text Label 1250 4350 0    60   ~ 0
Outer_Shield
Text Label 1250 4650 0    60   ~ 0
Outer_Shield
$Comp
L CONN_01X02 P4
U 1 1 54E66323
P 2500 4850
F 0 "P4" H 2500 5000 50  0000 C CNN
F 1 "Power" V 2600 4850 50  0000 C CNN
F 2 "cmr_link:2-pins_150mil" H 2500 4850 60  0001 C CNN
F 3 "" H 2500 4850 60  0000 C CNN
	1    2500 4850
	-1   0    0    1   
$EndComp
Text Label 2700 4800 0    60   ~ 0
VCC3v3
$Comp
L GND #PWR011
U 1 1 54E66414
P 2800 4900
F 0 "#PWR011" H 2800 4900 30  0001 C CNN
F 1 "GND" H 2800 4830 30  0001 C CNN
F 2 "" H 2800 4900 60  0000 C CNN
F 3 "" H 2800 4900 60  0000 C CNN
	1    2800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4900 2700 4900
$Comp
L EMI_FILTER2 FI1
U 1 1 54E67EC2
P 2850 5400
F 0 "FI1" H 2850 5500 50  0000 C CNN
F 1 "LVDS_Filter1" H 2900 5250 50  0000 L CNN
F 2 "cmr_link:EMI_Filter_1207" H 2850 5400 60  0001 C CNN
F 3 "" H 2850 5400 60  0000 C CNN
	1    2850 5400
	1    0    0    -1  
$EndComp
$Comp
L EMI_FILTER2 FI4
U 1 1 54E68257
P 3650 5400
F 0 "FI4" H 3650 5500 50  0000 C CNN
F 1 "LVDS_Filter2" H 3700 5250 50  0000 L CNN
F 2 "cmr_link:EMI_Filter_1207" H 3650 5400 60  0001 C CNN
F 3 "" H 3650 5400 60  0000 C CNN
	1    3650 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5400 3300 5400
$Comp
L GND #PWR012
U 1 1 54E68B3C
P 2500 5650
F 0 "#PWR012" H 2500 5650 30  0001 C CNN
F 1 "GND" H 2500 5580 30  0001 C CNN
F 2 "" H 2500 5650 60  0000 C CNN
F 3 "" H 2500 5650 60  0000 C CNN
	1    2500 5650
	1    0    0    -1  
$EndComp
Text Label 2400 5400 2    60   ~ 0
VCC3v3
Wire Wire Line
	2400 5400 2500 5400
Text Label 4100 5400 0    60   ~ 0
LVDS_VCC
Wire Wire Line
	4100 5400 4000 5400
Wire Wire Line
	2500 5650 4100 5650
Connection ~ 2850 5650
Text Label 4100 5650 0    60   ~ 0
LVDS_GND
Connection ~ 3650 5650
$Comp
L EMI_FILTER2 FI2
U 1 1 54E69C13
P 2850 5850
F 0 "FI2" H 2850 5950 50  0000 C CNN
F 1 "VCC_Filter1" H 2900 5700 50  0000 L CNN
F 2 "cmr_link:EMI_Filter_1207" H 2850 5850 60  0001 C CNN
F 3 "" H 2850 5850 60  0000 C CNN
	1    2850 5850
	1    0    0    -1  
$EndComp
$Comp
L EMI_FILTER2 FI5
U 1 1 54E69C19
P 3650 5850
F 0 "FI5" H 3650 5950 50  0000 C CNN
F 1 "VCC_Filter2" H 3700 5700 50  0000 L CNN
F 2 "cmr_link:EMI_Filter_1207" H 3650 5850 60  0001 C CNN
F 3 "" H 3650 5850 60  0000 C CNN
	1    3650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5850 3300 5850
$Comp
L GND #PWR013
U 1 1 54E69C20
P 2500 6100
F 0 "#PWR013" H 2500 6100 30  0001 C CNN
F 1 "GND" H 2500 6030 30  0001 C CNN
F 2 "" H 2500 6100 60  0000 C CNN
F 3 "" H 2500 6100 60  0000 C CNN
	1    2500 6100
	1    0    0    -1  
$EndComp
Text Label 2400 5850 2    60   ~ 0
VCC3v3
Wire Wire Line
	2400 5850 2500 5850
Wire Wire Line
	4100 5850 4000 5850
Connection ~ 2850 6100
Wire Wire Line
	2500 6100 3650 6100
$Comp
L EMI_FILTER2 FI3
U 1 1 54E6A977
P 2850 6300
F 0 "FI3" H 2850 6400 50  0000 C CNN
F 1 "PLL_Filter1" H 2900 6150 50  0000 L CNN
F 2 "cmr_link:EMI_Filter_1207" H 2850 6300 60  0001 C CNN
F 3 "" H 2850 6300 60  0000 C CNN
	1    2850 6300
	1    0    0    -1  
$EndComp
$Comp
L EMI_FILTER2 FI6
U 1 1 54E6A97D
P 3650 6300
F 0 "FI6" H 3650 6400 50  0000 C CNN
F 1 "PLL_Filter2" H 3700 6150 50  0000 L CNN
F 2 "cmr_link:EMI_Filter_1207" H 3650 6300 60  0001 C CNN
F 3 "" H 3650 6300 60  0000 C CNN
	1    3650 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6300 3300 6300
$Comp
L GND #PWR014
U 1 1 54E6A984
P 2500 6550
F 0 "#PWR014" H 2500 6550 30  0001 C CNN
F 1 "GND" H 2500 6480 30  0001 C CNN
F 2 "" H 2500 6550 60  0000 C CNN
F 3 "" H 2500 6550 60  0000 C CNN
	1    2500 6550
	1    0    0    -1  
$EndComp
Text Label 2400 6300 2    60   ~ 0
VCC3v3
Wire Wire Line
	2400 6300 2500 6300
Text Label 4100 6300 0    60   ~ 0
PLL_VCC
Wire Wire Line
	4100 6300 4000 6300
Wire Wire Line
	2500 6550 4100 6550
Connection ~ 2850 6550
Text Label 4100 6550 0    60   ~ 0
PLL_GND
Connection ~ 3650 6550
$Comp
L R R1
U 1 1 54E6D056
P 1550 5200
F 0 "R1" V 1630 5200 50  0000 C CNN
F 1 "R" V 1557 5201 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1480 5200 30  0001 C CNN
F 3 "" H 1550 5200 30  0000 C CNN
	1    1550 5200
	0    1    1    0   
$EndComp
Text Label 1200 5200 2    60   ~ 0
Inner_Shield
Wire Wire Line
	1800 5200 1900 5200
Wire Wire Line
	1300 5200 1200 5200
$Comp
L GND #PWR015
U 1 1 54E6D90A
P 1300 5700
F 0 "#PWR015" H 1300 5700 30  0001 C CNN
F 1 "GND" H 1300 5630 30  0001 C CNN
F 2 "" H 1300 5700 60  0000 C CNN
F 3 "" H 1300 5700 60  0000 C CNN
	1    1300 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5700 1400 5700
NoConn ~ 9350 1400
NoConn ~ 9350 1500
NoConn ~ 9350 1600
NoConn ~ 9350 1700
NoConn ~ 9350 1800
NoConn ~ 9350 1900
NoConn ~ 9350 2000
NoConn ~ 9350 2100
NoConn ~ 9350 2200
NoConn ~ 9350 2300
NoConn ~ 9350 2400
NoConn ~ 9350 2500
Wire Wire Line
	6750 1900 7350 1900
Text Label 7350 1900 0    60   ~ 0
PLL_VCC
$EndSCHEMATC
