EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 61CAE370
P 1400 1650
F 0 "J1" H 1507 2517 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1507 2426 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_XKB_U262-16XN-4BVC11" H 1550 1650 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1550 1650 50  0001 C CNN
	1    1400 1650
	1    0    0    -1  
$EndComp
$Comp
L eec:CYPD3177-24LQXQ U1
U 1 1 61CB3213
P 4550 2650
F 0 "U1" H 5600 2915 50  0000 C CNN
F 1 "CYPD3177-24LQXQ" H 5600 2824 50  0000 C CNN
F 2 "CYPD3177-24LQXQ:Cypress_Semiconductor-002-16934-0-C-IPC_C" H 4550 3050 50  0001 L CNN
F 3 "https://www.cypress.com/file/460416/download" H 4550 3150 50  0001 L CNN
F 4 "+105°C" H 4550 3250 50  0001 L CNN "ambient temperature range high"
F 5 "-40°C" H 4550 3350 50  0001 L CNN "ambient temperature range low"
F 6 "No" H 4550 3450 50  0001 L CNN "automotive"
F 7 "IC" H 4550 3550 50  0001 L CNN "category"
F 8 "Integrated Circuits (ICs)" H 4550 3650 50  0001 L CNN "device class L1"
F 9 "Interface ICs" H 4550 3750 50  0001 L CNN "device class L2"
F 10 "USB Interface ICs" H 4550 3850 50  0001 L CNN "device class L3"
F 11 "IC USB TYPE-C PORT CONTROL 24QFN" H 4550 3950 50  0001 L CNN "digikey description"
F 12 "428-4652-ND" H 4550 4050 50  0001 L CNN "digikey part number"
F 13 "0.6mm" H 4550 4150 50  0001 L CNN "height"
F 14 "I2C,USB" H 4550 4250 50  0001 L CNN "interface"
F 15 "QFN50P400X400X60-24" H 4550 4350 50  0001 L CNN "ipc land pattern name"
F 16 "Yes" H 4550 4450 50  0001 L CNN "lead free"
F 17 "fccc3b7104efadc5" H 4550 4550 50  0001 L CNN "library id"
F 18 "Cypress Semiconductor" H 4550 4650 50  0001 L CNN "manufacturer"
F 19 "+120°C" H 4550 4750 50  0001 L CNN "max junction temp"
F 20 "24.5V" H 4550 4850 50  0001 L CNN "max supply voltage"
F 21 "1.8V" H 4550 4950 50  0001 L CNN "min supply voltage"
F 22 "USB 3 V 24 MHz surface Mount Type-C Port Controller - QFN-24" H 4550 5050 50  0001 L CNN "mouser description"
F 23 "727-CYPD3177-24LQXQ" H 4550 5150 50  0001 L CNN "mouser part number"
F 24 "1" H 4550 5250 50  0001 L CNN "number of ports"
F 25 "QFN24" H 4550 5350 50  0001 L CNN "package"
F 26 "Yes" H 4550 5450 50  0001 L CNN "rohs"
F 27 "0mm" H 4550 5550 50  0001 L CNN "standoff height"
F 28 "+120°C" H 4550 5650 50  0001 L CNN "temperature range high"
F 29 "-40°C" H 4550 5750 50  0001 L CNN "temperature range low"
F 30 "USB 3.0" H 4550 5850 50  0001 L CNN "usb standard"
	1    4550 2650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Coded SW1
U 1 1 61CC8BFA
P 1900 6350
F 0 "SW1" H 2032 6825 50  0000 C CNN
F 1 "SW_Coded" H 2032 6734 50  0000 C CNN
F 2 "Button_Switch_SMD:Nidec_Copal_SH-7010B" H 1875 6375 50  0001 C CNN
F 3 "~" H 1875 6375 50  0001 C CNN
	1    1900 6350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Coded SW2
U 1 1 61CCA153
P 7200 6250
F 0 "SW2" H 6920 6325 50  0000 R CNN
F 1 "SW_Coded" H 6920 6234 50  0000 R CNN
F 2 "Button_Switch_SMD:Nidec_Copal_SH-7010B" H 7175 6275 50  0001 C CNN
F 3 "~" H 7175 6275 50  0001 C CNN
	1    7200 6250
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_FET:DMP3013SFV Q1
U 1 1 61CCAC29
P 4300 1150
F 0 "Q1" V 4642 1150 50  0000 C CNN
F 1 "DMP3013SFV" V 4551 1150 50  0000 C CNN
F 2 "Package_SON:Diodes_PowerDI3333-8" H 4500 1075 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/DMP3013SFV.pdf" V 4300 1150 50  0001 L CNN
	1    4300 1150
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:DMP3013SFV Q2
U 1 1 61CCDC94
P 5050 1150
F 0 "Q2" V 5392 1150 50  0000 C CNN
F 1 "DMP3013SFV" V 5301 1150 50  0000 C CNN
F 2 "Package_SON:Diodes_PowerDI3333-8" H 5250 1075 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/DMP3013SFV.pdf" V 5050 1150 50  0001 L CNN
	1    5050 1150
	0    1    -1   0   
$EndComp
Wire Wire Line
	2000 1050 2650 1050
Wire Wire Line
	4500 1050 4550 1050
$Comp
L Device:C C4
U 1 1 61CD79A8
P 3050 1300
F 0 "C4" H 2950 1400 50  0000 L CNN
F 1 "3.3u" H 3050 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3088 1150 50  0001 C CNN
F 3 "~" H 3050 1300 50  0001 C CNN
	1    3050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1150 2650 1050
Connection ~ 2650 1050
Wire Wire Line
	2650 1050 2850 1050
Wire Wire Line
	2850 1150 2850 1050
Connection ~ 2850 1050
Wire Wire Line
	2850 1050 3050 1050
Wire Wire Line
	3050 1150 3050 1050
Connection ~ 3050 1050
Wire Wire Line
	3050 1050 3250 1050
$Comp
L power:GND #PWR04
U 1 1 61CD83B2
P 2650 1550
F 0 "#PWR04" H 2650 1300 50  0001 C CNN
F 1 "GND" H 2655 1377 50  0000 C CNN
F 2 "" H 2650 1550 50  0001 C CNN
F 3 "" H 2650 1550 50  0001 C CNN
	1    2650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1550 2650 1500
Wire Wire Line
	2650 1500 2850 1500
Wire Wire Line
	2850 1500 2850 1450
Connection ~ 2650 1500
Wire Wire Line
	2650 1500 2650 1450
Wire Wire Line
	2850 1500 3050 1500
Wire Wire Line
	3050 1500 3050 1450
Connection ~ 2850 1500
$Comp
L Device:C C1
U 1 1 61CD6CE9
P 2650 1300
F 0 "C1" H 2550 1400 50  0000 L CNN
F 1 "47n" H 2500 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2688 1150 50  0001 C CNN
F 3 "~" H 2650 1300 50  0001 C CNN
	1    2650 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 61CDA268
P 4550 1300
F 0 "D1" V 4450 1200 50  0000 L CNN
F 1 "15V" V 4650 1150 50  0000 L CNN
F 2 "" H 4550 1300 50  0001 C CNN
F 3 "~" H 4550 1300 50  0001 C CNN
	1    4550 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 61CDB151
P 4800 1300
F 0 "R14" H 4870 1346 50  0000 L CNN
F 1 "47k" H 4870 1255 50  0000 L CNN
F 2 "" V 4730 1300 50  0001 C CNN
F 3 "~" H 4800 1300 50  0001 C CNN
	1    4800 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1350 4300 1550
Wire Wire Line
	4300 1550 4550 1550
Wire Wire Line
	5050 1550 5050 1350
Wire Wire Line
	4550 1150 4550 1050
Connection ~ 4550 1050
Wire Wire Line
	4550 1050 4800 1050
Wire Wire Line
	4800 1050 4800 1150
Connection ~ 4800 1050
Wire Wire Line
	4800 1050 4850 1050
Wire Wire Line
	4800 1450 4800 1550
Connection ~ 4800 1550
Wire Wire Line
	4800 1550 5050 1550
Wire Wire Line
	4550 1450 4550 1550
Connection ~ 4550 1550
Wire Wire Line
	4550 1550 4800 1550
$Comp
L Device:R R12
U 1 1 61CE22D7
P 4300 1750
F 0 "R12" H 4370 1796 50  0000 L CNN
F 1 "0" H 4370 1705 50  0000 L CNN
F 2 "" V 4230 1750 50  0001 C CNN
F 3 "~" H 4300 1750 50  0001 C CNN
	1    4300 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61CE3A9A
P 4300 2150
F 0 "R13" H 4370 2196 50  0000 L CNN
F 1 "1k" H 4370 2105 50  0000 L CNN
F 2 "" V 4230 2150 50  0001 C CNN
F 3 "~" H 4300 2150 50  0001 C CNN
	1    4300 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 61CE3DF1
P 3500 1250
F 0 "C6" H 3615 1296 50  0000 L CNN
F 1 "1u" H 3615 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 1100 50  0001 C CNN
F 3 "~" H 3500 1250 50  0001 C CNN
	1    3500 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 61CE43AF
P 3850 1250
F 0 "R9" H 3920 1296 50  0000 L CNN
F 1 "10k" H 3920 1205 50  0000 L CNN
F 2 "" V 3780 1250 50  0001 C CNN
F 3 "~" H 3850 1250 50  0001 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1100 3500 1050
Connection ~ 3500 1050
Wire Wire Line
	3500 1050 3850 1050
Wire Wire Line
	3500 1400 3500 1950
Wire Wire Line
	3500 1950 3850 1950
Wire Wire Line
	4300 1950 4300 2000
Wire Wire Line
	4300 1950 4300 1900
Connection ~ 4300 1950
Wire Wire Line
	3850 1400 3850 1950
Connection ~ 3850 1950
Wire Wire Line
	3850 1950 4300 1950
Wire Wire Line
	3850 1100 3850 1050
Connection ~ 3850 1050
Wire Wire Line
	3850 1050 4100 1050
Wire Wire Line
	4300 1550 4300 1600
Connection ~ 4300 1550
Wire Wire Line
	4300 2300 4300 4950
Wire Wire Line
	4300 4950 4650 4950
Wire Wire Line
	3250 1050 3250 3150
Wire Wire Line
	3250 3150 4650 3150
Connection ~ 3250 1050
Wire Wire Line
	3250 1050 3500 1050
Wire Wire Line
	2000 1250 2450 1250
Wire Wire Line
	2450 1250 2450 3450
Wire Wire Line
	2450 3450 3100 3450
Wire Wire Line
	4650 3350 2750 3350
Wire Wire Line
	2350 3350 2350 1350
Wire Wire Line
	2350 1350 2000 1350
Wire Wire Line
	2000 1550 2100 1550
Wire Wire Line
	2100 1550 2100 1650
Wire Wire Line
	2100 1650 2000 1650
Wire Wire Line
	2100 1650 2250 1650
Wire Wire Line
	2250 1650 2250 3750
Wire Wire Line
	2250 3750 4650 3750
Connection ~ 2100 1650
Wire Wire Line
	2000 1850 2100 1850
Wire Wire Line
	2100 1850 2100 1750
Wire Wire Line
	2100 1750 2000 1750
Wire Wire Line
	2100 1850 2150 1850
Wire Wire Line
	2150 1850 2150 3650
Wire Wire Line
	2150 3650 4650 3650
Connection ~ 2100 1850
$Comp
L power:GND #PWR01
U 1 1 61CEDA6A
P 1400 2750
F 0 "#PWR01" H 1400 2500 50  0001 C CNN
F 1 "GND" H 1405 2577 50  0000 C CNN
F 2 "" H 1400 2750 50  0001 C CNN
F 3 "" H 1400 2750 50  0001 C CNN
	1    1400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2750 1400 2650
Wire Wire Line
	1400 2650 1100 2650
Wire Wire Line
	1100 2650 1100 2550
Connection ~ 1400 2650
Wire Wire Line
	1400 2650 1400 2550
$Comp
L Device:C C2
U 1 1 61CF05D4
P 2750 4000
F 0 "C2" H 2650 4100 50  0000 L CNN
F 1 "390p" H 2550 3900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2788 3850 50  0001 C CNN
F 3 "~" H 2750 4000 50  0001 C CNN
	1    2750 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61CF1010
P 3100 4000
F 0 "C5" H 3000 4100 50  0000 L CNN
F 1 "390p" H 3100 3900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 3850 50  0001 C CNN
F 3 "~" H 3100 4000 50  0001 C CNN
	1    3100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3850 3100 3450
Connection ~ 3100 3450
Wire Wire Line
	3100 3450 4650 3450
Wire Wire Line
	2750 3850 2750 3350
Connection ~ 2750 3350
Wire Wire Line
	2750 3350 2350 3350
$Comp
L power:GND #PWR05
U 1 1 61CF3FCB
P 2750 4350
F 0 "#PWR05" H 2750 4100 50  0001 C CNN
F 1 "GND" H 2755 4177 50  0000 C CNN
F 2 "" H 2750 4350 50  0001 C CNN
F 3 "" H 2750 4350 50  0001 C CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4350 2750 4250
Wire Wire Line
	3100 4150 3100 4250
Wire Wire Line
	3100 4250 2750 4250
Connection ~ 2750 4250
Wire Wire Line
	2750 4250 2750 4150
$Comp
L Device:C C7
U 1 1 61CF71E6
P 3500 4000
F 0 "C7" H 3615 4046 50  0000 L CNN
F 1 "1u" H 3615 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 3850 50  0001 C CNN
F 3 "~" H 3500 4000 50  0001 C CNN
	1    3500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4150 3500 4250
Wire Wire Line
	3500 4250 3100 4250
Connection ~ 3100 4250
Wire Wire Line
	3500 3850 3500 2850
Wire Wire Line
	3500 2850 4650 2850
$Comp
L Device:C C8
U 1 1 61CFE73B
P 5000 2100
F 0 "C8" H 4900 2200 50  0000 L CNN
F 1 "1u" H 4850 2000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5038 1950 50  0001 C CNN
F 3 "~" H 5000 2100 50  0001 C CNN
	1    5000 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 61CFF4ED
P 5200 2100
F 0 "C9" H 5100 2200 50  0000 L CNN
F 1 "0.1u" H 5100 2000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5238 1950 50  0001 C CNN
F 3 "~" H 5200 2100 50  0001 C CNN
	1    5200 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 61D002D8
P 5400 2100
F 0 "C10" H 5400 2200 50  0000 L CNN
F 1 "0.1u" H 5400 2000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5438 1950 50  0001 C CNN
F 3 "~" H 5400 2100 50  0001 C CNN
	1    5400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2650 4550 2650
Wire Wire Line
	4550 2650 4550 1850
Wire Wire Line
	4550 1850 5000 1850
Wire Wire Line
	5000 1850 5000 1950
Wire Wire Line
	5000 1850 5200 1850
Wire Wire Line
	5200 1850 5200 1950
Connection ~ 5000 1850
Wire Wire Line
	5200 1850 5400 1850
Wire Wire Line
	5400 1850 5400 1950
Connection ~ 5200 1850
$Comp
L power:GND #PWR08
U 1 1 61D06823
P 5000 2350
F 0 "#PWR08" H 5000 2100 50  0001 C CNN
F 1 "GND" H 5005 2177 50  0000 C CNN
F 2 "" H 5000 2350 50  0001 C CNN
F 3 "" H 5000 2350 50  0001 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2250 5000 2350
Wire Wire Line
	5000 2350 5200 2350
Wire Wire Line
	5200 2350 5200 2250
Connection ~ 5000 2350
Wire Wire Line
	5200 2350 5400 2350
Wire Wire Line
	5400 2350 5400 2250
Connection ~ 5200 2350
$Comp
L power:+3.3V #PWR09
U 1 1 61D0DEA0
P 5400 1750
F 0 "#PWR09" H 5400 1600 50  0001 C CNN
F 1 "+3.3V" H 5415 1923 50  0000 C CNN
F 2 "" H 5400 1750 50  0001 C CNN
F 3 "" H 5400 1750 50  0001 C CNN
	1    5400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1750 5400 1850
Connection ~ 5400 1850
Wire Wire Line
	6550 2650 6950 2650
Wire Wire Line
	6950 2650 6950 1050
Wire Wire Line
	6950 1050 6200 1050
$Comp
L Device:C C11
U 1 1 61D130D9
P 5800 1250
F 0 "C11" H 5650 1350 50  0000 L CNN
F 1 "0.1u" H 5650 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5838 1100 50  0001 C CNN
F 3 "~" H 5800 1250 50  0001 C CNN
	1    5800 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 61D1389C
P 6000 1250
F 0 "C12" H 5850 1350 50  0000 L CNN
F 1 "1u" H 5900 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6038 1100 50  0001 C CNN
F 3 "~" H 6000 1250 50  0001 C CNN
	1    6000 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 61D13BD3
P 6200 1250
F 0 "C13" H 6200 1350 50  0000 L CNN
F 1 "10u" H 6200 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6238 1100 50  0001 C CNN
F 3 "~" H 6200 1250 50  0001 C CNN
	1    6200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1100 5800 1050
Connection ~ 5800 1050
Wire Wire Line
	5800 1050 5250 1050
Wire Wire Line
	6000 1050 6000 1100
Connection ~ 6000 1050
Wire Wire Line
	6000 1050 5800 1050
Wire Wire Line
	6200 1100 6200 1050
Connection ~ 6200 1050
Wire Wire Line
	6200 1050 6000 1050
Wire Wire Line
	6200 1400 6200 1450
Wire Wire Line
	6200 1450 6000 1450
Wire Wire Line
	5800 1450 5800 1400
Wire Wire Line
	6000 1400 6000 1450
Connection ~ 6000 1450
Wire Wire Line
	6000 1450 5800 1450
$Comp
L power:GND #PWR010
U 1 1 61D208B7
P 6000 1550
F 0 "#PWR010" H 6000 1300 50  0001 C CNN
F 1 "GND" H 6005 1377 50  0000 C CNN
F 2 "" H 6000 1550 50  0001 C CNN
F 3 "" H 6000 1550 50  0001 C CNN
	1    6000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1550 6000 1450
$Comp
L power:GND #PWR012
U 1 1 61D24426
P 6650 5250
F 0 "#PWR012" H 6650 5000 50  0001 C CNN
F 1 "GND" H 6655 5077 50  0000 C CNN
F 2 "" H 6650 5250 50  0001 C CNN
F 3 "" H 6650 5250 50  0001 C CNN
	1    6650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4950 6650 4950
Wire Wire Line
	6650 4950 6650 5050
Wire Wire Line
	6550 5050 6650 5050
Connection ~ 6650 5050
Wire Wire Line
	6650 5050 6650 5150
Wire Wire Line
	6550 5150 6650 5150
Connection ~ 6650 5150
Wire Wire Line
	6650 5150 6650 5250
NoConn ~ 6550 4750
NoConn ~ 6550 4650
NoConn ~ 4650 5150
$Comp
L power:+3.3V #PWR03
U 1 1 61D3A18F
P 2550 5500
F 0 "#PWR03" H 2550 5350 50  0001 C CNN
F 1 "+3.3V" H 2565 5673 50  0000 C CNN
F 2 "" H 2550 5500 50  0001 C CNN
F 3 "" H 2550 5500 50  0001 C CNN
	1    2550 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61D3B352
P 2550 5800
F 0 "R2" H 2620 5846 50  0000 L CNN
F 1 "5.1k" H 2620 5755 50  0000 L CNN
F 2 "" V 2480 5800 50  0001 C CNN
F 3 "~" H 2550 5800 50  0001 C CNN
	1    2550 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61D3C477
P 2500 6750
F 0 "R1" V 2400 6700 50  0000 L CNN
F 1 "DNP" V 2500 6650 50  0000 L CNN
F 2 "" V 2430 6750 50  0001 C CNN
F 3 "~" H 2500 6750 50  0001 C CNN
	1    2500 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 61D3CA3E
P 2750 6750
F 0 "R3" V 2650 6700 50  0000 L CNN
F 1 "2.4k" V 2750 6650 50  0000 L CNN
F 2 "" V 2680 6750 50  0001 C CNN
F 3 "~" H 2750 6750 50  0001 C CNN
	1    2750 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 61D3CDDA
P 3000 6750
F 0 "R4" V 2900 6700 50  0000 L CNN
F 1 "1k" V 3000 6700 50  0000 L CNN
F 2 "" V 2930 6750 50  0001 C CNN
F 3 "~" H 3000 6750 50  0001 C CNN
	1    3000 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61D3D03F
P 3250 6750
F 0 "R6" V 3150 6700 50  0000 L CNN
F 1 "0" V 3250 6700 50  0000 L CNN
F 2 "" V 3180 6750 50  0001 C CNN
F 3 "~" H 3250 6750 50  0001 C CNN
	1    3250 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6100 2550 6100
Wire Wire Line
	2550 6100 2550 5950
Wire Wire Line
	2550 5650 2550 5500
Wire Wire Line
	2400 6550 2500 6550
Wire Wire Line
	2500 6550 2500 6600
Wire Wire Line
	2400 6450 2750 6450
Wire Wire Line
	2750 6450 2750 6600
Wire Wire Line
	2400 6350 3000 6350
Wire Wire Line
	3000 6350 3000 6600
Wire Wire Line
	2400 6250 3250 6250
Wire Wire Line
	3250 6250 3250 6600
$Comp
L power:GND #PWR02
U 1 1 61D52355
P 2500 7100
F 0 "#PWR02" H 2500 6850 50  0001 C CNN
F 1 "GND" H 2505 6927 50  0000 C CNN
F 2 "" H 2500 7100 50  0001 C CNN
F 3 "" H 2500 7100 50  0001 C CNN
	1    2500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7100 2500 7000
Wire Wire Line
	2500 7000 2750 7000
Wire Wire Line
	2750 7000 2750 6900
Connection ~ 2500 7000
Wire Wire Line
	2500 7000 2500 6900
Wire Wire Line
	2750 7000 3000 7000
Wire Wire Line
	3000 7000 3000 6900
Connection ~ 2750 7000
Wire Wire Line
	3000 7000 3250 7000
Wire Wire Line
	3250 7000 3250 6900
Connection ~ 3000 7000
$Comp
L Device:R R7
U 1 1 61D6465B
P 3500 5850
F 0 "R7" H 3570 5896 50  0000 L CNN
F 1 "DNP" H 3570 5805 50  0000 L CNN
F 2 "" V 3430 5850 50  0001 C CNN
F 3 "~" H 3500 5850 50  0001 C CNN
	1    3500 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 61D651B4
P 3500 5500
F 0 "#PWR06" H 3500 5350 50  0001 C CNN
F 1 "+3.3V" H 3515 5673 50  0000 C CNN
F 2 "" H 3500 5500 50  0001 C CNN
F 3 "" H 3500 5500 50  0001 C CNN
	1    3500 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61D65FC1
P 3500 6750
F 0 "R8" H 3570 6796 50  0000 L CNN
F 1 "5.1k" V 3500 6650 50  0000 L CNN
F 2 "" V 3430 6750 50  0001 C CNN
F 3 "~" H 3500 6750 50  0001 C CNN
	1    3500 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 61D746DE
P 3050 6100
F 0 "R5" V 2843 6100 50  0000 C CNN
F 1 "DNP" V 2934 6100 50  0000 C CNN
F 2 "" V 2980 6100 50  0001 C CNN
F 3 "~" H 3050 6100 50  0001 C CNN
	1    3050 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 6100 2800 6100
Wire Wire Line
	2800 6100 2800 4750
Wire Wire Line
	2800 4750 4650 4750
Connection ~ 2550 6100
Wire Wire Line
	3250 7000 3500 7000
Wire Wire Line
	3500 7000 3500 6900
Connection ~ 3250 7000
Wire Wire Line
	3500 6600 3500 6100
Wire Wire Line
	2900 6100 2800 6100
Connection ~ 2800 6100
Wire Wire Line
	3200 6100 3300 6100
Connection ~ 3500 6100
Wire Wire Line
	3500 6100 3500 6000
Wire Wire Line
	3500 5700 3500 5500
Wire Wire Line
	3300 6100 3300 4550
Wire Wire Line
	3300 4550 4650 4550
Connection ~ 3300 6100
Wire Wire Line
	3300 6100 3500 6100
$Comp
L power:+3.3V #PWR011
U 1 1 61DB8275
P 6300 5500
F 0 "#PWR011" H 6300 5350 50  0001 C CNN
F 1 "+3.3V" H 6315 5673 50  0000 C CNN
F 2 "" H 6300 5500 50  0001 C CNN
F 3 "" H 6300 5500 50  0001 C CNN
	1    6300 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 61DB90DE
P 6300 5750
F 0 "R17" H 6370 5796 50  0000 L CNN
F 1 "5.1k" H 6370 5705 50  0000 L CNN
F 2 "" V 6230 5750 50  0001 C CNN
F 3 "~" H 6300 5750 50  0001 C CNN
	1    6300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 6000 6300 6000
Wire Wire Line
	6300 6000 6300 5900
Wire Wire Line
	6300 6000 4550 6000
Wire Wire Line
	4550 6000 4550 4150
Wire Wire Line
	4550 4150 4650 4150
Connection ~ 6300 6000
Wire Wire Line
	6300 5500 6300 5600
$Comp
L power:+3.3V #PWR07
U 1 1 61DCA94C
P 3850 5500
F 0 "#PWR07" H 3850 5350 50  0001 C CNN
F 1 "+3.3V" H 3865 5673 50  0000 C CNN
F 2 "" H 3850 5500 50  0001 C CNN
F 3 "" H 3850 5500 50  0001 C CNN
	1    3850 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61DCB1B1
P 3850 5850
F 0 "R10" H 3920 5896 50  0000 L CNN
F 1 "DNP" H 3920 5805 50  0000 L CNN
F 2 "" V 3780 5850 50  0001 C CNN
F 3 "~" H 3850 5850 50  0001 C CNN
	1    3850 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 61DCBA27
P 3850 6750
F 0 "R11" H 3920 6796 50  0000 L CNN
F 1 "5.1k" V 3850 6650 50  0000 L CNN
F 2 "" V 3780 6750 50  0001 C CNN
F 3 "~" H 3850 6750 50  0001 C CNN
	1    3850 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5500 3850 5700
Wire Wire Line
	3850 6000 3850 6300
Wire Wire Line
	3850 6300 4100 6300
Wire Wire Line
	4100 6300 4100 4350
Wire Wire Line
	4100 4350 4650 4350
Connection ~ 3850 6300
Wire Wire Line
	3850 6300 3850 6600
$Comp
L Device:R R19
U 1 1 61DDE228
P 6550 6750
F 0 "R19" V 6450 6700 50  0000 L CNN
F 1 "1k" V 6550 6700 50  0000 L CNN
F 2 "" V 6480 6750 50  0001 C CNN
F 3 "~" H 6550 6750 50  0001 C CNN
	1    6550 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 61DDE878
P 6300 6750
F 0 "R18" V 6200 6700 50  0000 L CNN
F 1 "2.4k" V 6300 6650 50  0000 L CNN
F 2 "" V 6230 6750 50  0001 C CNN
F 3 "~" H 6300 6750 50  0001 C CNN
	1    6300 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 61DDEFFB
P 6050 6750
F 0 "R16" V 5950 6700 50  0000 L CNN
F 1 "5.1k" V 6050 6650 50  0000 L CNN
F 2 "" V 5980 6750 50  0001 C CNN
F 3 "~" H 6050 6750 50  0001 C CNN
	1    6050 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 61DDF30D
P 5800 6750
F 0 "R15" V 5700 6700 50  0000 L CNN
F 1 "DNP" V 5800 6650 50  0000 L CNN
F 2 "" V 5730 6750 50  0001 C CNN
F 3 "~" H 5800 6750 50  0001 C CNN
	1    5800 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6600 6550 6450
Wire Wire Line
	6550 6450 6700 6450
Wire Wire Line
	6700 6350 6300 6350
Wire Wire Line
	6300 6350 6300 6600
Wire Wire Line
	6050 6600 6050 6250
Wire Wire Line
	6050 6250 6700 6250
Wire Wire Line
	6700 6150 5800 6150
Wire Wire Line
	5800 6150 5800 6600
Wire Wire Line
	3500 7000 3850 7000
Wire Wire Line
	6550 7000 6550 6900
Connection ~ 3500 7000
Wire Wire Line
	6300 6900 6300 7000
Connection ~ 6300 7000
Wire Wire Line
	6300 7000 6550 7000
Wire Wire Line
	6050 6900 6050 7000
Connection ~ 6050 7000
Wire Wire Line
	6050 7000 6300 7000
Wire Wire Line
	5800 6900 5800 7000
Connection ~ 5800 7000
Wire Wire Line
	5800 7000 6050 7000
Wire Wire Line
	3850 6900 3850 7000
Connection ~ 3850 7000
Wire Wire Line
	3850 7000 5800 7000
$Comp
L Connector:Conn_01x07_Male J3
U 1 1 61E1F98E
P 9600 3600
F 0 "J3" H 9572 3624 50  0000 R CNN
F 1 "Conn_01x07_Male" H 9572 3533 50  0000 R CNN
F 2 "" H 9600 3600 50  0001 C CNN
F 3 "~" H 9600 3600 50  0001 C CNN
	1    9600 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 61E22D30
P 9250 3100
F 0 "#PWR015" H 9250 2950 50  0001 C CNN
F 1 "+3.3V" H 9265 3273 50  0000 C CNN
F 2 "" H 9250 3100 50  0001 C CNN
F 3 "" H 9250 3100 50  0001 C CNN
	1    9250 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 61E23A9A
P 9250 4100
F 0 "#PWR016" H 9250 3850 50  0001 C CNN
F 1 "GND" H 9255 3927 50  0000 C CNN
F 2 "" H 9250 4100 50  0001 C CNN
F 3 "" H 9250 4100 50  0001 C CNN
	1    9250 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 61E24077
P 8950 2950
F 0 "R24" H 9020 2996 50  0000 L CNN
F 1 "10k" H 9020 2905 50  0000 L CNN
F 2 "" V 8880 2950 50  0001 C CNN
F 3 "~" H 8950 2950 50  0001 C CNN
	1    8950 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 61E25ED1
P 8700 2950
F 0 "R23" H 8770 2996 50  0000 L CNN
F 1 "10k" H 8770 2905 50  0000 L CNN
F 2 "" V 8630 2950 50  0001 C CNN
F 3 "~" H 8700 2950 50  0001 C CNN
	1    8700 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 61E2637E
P 8200 2950
F 0 "R21" H 8270 2996 50  0000 L CNN
F 1 "10k" H 8270 2905 50  0000 L CNN
F 2 "" V 8130 2950 50  0001 C CNN
F 3 "~" H 8200 2950 50  0001 C CNN
	1    8200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3250 7050 3250
Wire Wire Line
	7050 3250 7050 3400
Wire Wire Line
	7050 3400 8200 3400
Wire Wire Line
	6850 3550 6850 3500
Wire Wire Line
	6850 3500 8450 3500
Wire Wire Line
	4650 3950 4400 3950
Wire Wire Line
	4400 3950 4400 5550
Wire Wire Line
	4400 5550 6950 5550
Wire Wire Line
	6950 5550 6950 3600
Wire Wire Line
	6950 3600 8700 3600
Wire Wire Line
	6550 3050 7150 3050
Wire Wire Line
	7150 3050 7150 3700
Wire Wire Line
	7150 3700 8950 3700
Wire Wire Line
	6550 2950 7300 2950
Wire Wire Line
	7300 2950 7300 3800
Wire Wire Line
	7300 3800 9400 3800
Wire Wire Line
	9400 3900 9250 3900
Wire Wire Line
	9250 3900 9250 4100
Wire Wire Line
	9250 3100 9250 3300
Wire Wire Line
	9250 3300 9400 3300
$Comp
L power:+3.3V #PWR014
U 1 1 61E63927
P 8200 2600
F 0 "#PWR014" H 8200 2450 50  0001 C CNN
F 1 "+3.3V" H 8215 2773 50  0000 C CNN
F 2 "" H 8200 2600 50  0001 C CNN
F 3 "" H 8200 2600 50  0001 C CNN
	1    8200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2600 8200 2700
Wire Wire Line
	8200 2700 8450 2700
Wire Wire Line
	8950 2700 8950 2800
Connection ~ 8200 2700
Wire Wire Line
	8200 2700 8200 2800
Wire Wire Line
	8700 2800 8700 2700
Connection ~ 8700 2700
Wire Wire Line
	8700 2700 8950 2700
Wire Wire Line
	8450 2700 8450 2800
Connection ~ 8450 2700
Wire Wire Line
	8450 2700 8700 2700
Wire Wire Line
	8200 3100 8200 3400
Connection ~ 8200 3400
Wire Wire Line
	8200 3400 9400 3400
Wire Wire Line
	8450 3100 8450 3500
Connection ~ 8450 3500
Wire Wire Line
	8450 3500 9400 3500
Wire Wire Line
	8700 3100 8700 3600
Connection ~ 8700 3600
Wire Wire Line
	8700 3600 9400 3600
Wire Wire Line
	8950 3100 8950 3700
Connection ~ 8950 3700
Wire Wire Line
	8950 3700 9400 3700
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 61EB267A
P 8500 1050
F 0 "J2" H 8528 1026 50  0000 L CNN
F 1 "Conn_01x02_Female" H 8528 935 50  0000 L CNN
F 2 "" H 8500 1050 50  0001 C CNN
F 3 "~" H 8500 1050 50  0001 C CNN
	1    8500 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 61EB40A7
P 8150 1350
F 0 "#PWR013" H 8150 1100 50  0001 C CNN
F 1 "GND" H 8155 1177 50  0000 C CNN
F 2 "" H 8150 1350 50  0001 C CNN
F 3 "" H 8150 1350 50  0001 C CNN
	1    8150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1150 8150 1150
Wire Wire Line
	8150 1150 8150 1350
Wire Wire Line
	8300 1050 6950 1050
Connection ~ 6950 1050
$Comp
L Device:C C3
U 1 1 61CD7765
P 2850 1300
F 0 "C3" H 2750 1400 50  0000 L CNN
F 1 "0.47u" H 2750 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2888 1150 50  0001 C CNN
F 3 "~" H 2850 1300 50  0001 C CNN
	1    2850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3550 6850 3550
$Comp
L Device:R R20
U 1 1 61EE2DBE
P 6800 4550
F 0 "R20" H 6730 4504 50  0000 R CNN
F 1 "2.4k" H 6730 4595 50  0000 R CNN
F 2 "" V 6730 4550 50  0001 C CNN
F 3 "~" H 6800 4550 50  0001 C CNN
	1    6800 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 61EE60C8
P 6800 4100
F 0 "D2" V 6839 3982 50  0000 R CNN
F 1 "LED" V 6748 3982 50  0000 R CNN
F 2 "" H 6800 4100 50  0001 C CNN
F 3 "~" H 6800 4100 50  0001 C CNN
	1    6800 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 3850 6800 3850
Wire Wire Line
	6800 3850 6800 3950
Wire Wire Line
	6800 4250 6800 4400
Wire Wire Line
	6800 4700 6800 4950
Wire Wire Line
	6800 4950 6650 4950
Connection ~ 6650 4950
NoConn ~ 2000 2150
NoConn ~ 2000 2250
$Comp
L Device:R R22
U 1 1 61E2612D
P 8450 2950
F 0 "R22" H 8520 2996 50  0000 L CNN
F 1 "10k" H 8520 2905 50  0000 L CNN
F 2 "" V 8380 2950 50  0001 C CNN
F 3 "~" H 8450 2950 50  0001 C CNN
	1    8450 2950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
