EESchema Schematic File Version 4
EELAYER 29 0
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
L Connector:Conn_01x02_Male J2
U 1 1 5C9AB5FB
P 750 7050
F 0 "J2" H 858 7231 50  0000 C CNN
F 1 "Power Connector" H 858 7140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 750 7050 50  0001 C CNN
F 3 "~" H 750 7050 50  0001 C CNN
	1    750  7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5C9AD66D
P 950 7150
F 0 "#PWR0114" H 950 6900 50  0001 C CNN
F 1 "GND" H 955 6977 50  0000 C CNN
F 2 "" H 950 7150 50  0001 C CNN
F 3 "" H 950 7150 50  0001 C CNN
	1    950  7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C9CEAB1
P 2000 7200
F 0 "C3" H 2118 7246 50  0000 L CNN
F 1 "0.33u" H 2118 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P5.00mm" H 2038 7050 50  0001 C CNN
F 3 "~" H 2000 7200 50  0001 C CNN
	1    2000 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5CA35EA1
P 1850 7050
F 0 "F1" V 2047 7050 50  0000 C CNN
F 1 "250mA" V 1956 7050 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 1780 7050 50  0001 C CNN
F 3 "~" H 1850 7050 50  0001 C CNN
	1    1850 7050
	0    -1   -1   0   
$EndComp
$Comp
L Relay:G6H-2 K1
U 1 1 5CA97785
P 10300 3400
F 0 "K1" V 11067 3400 50  0000 C CNN
F 1 "G6H-2" V 10976 3400 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G6H-2" H 10750 3300 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/C300/G6H%23OMR.pdf" H 10950 3550 50  0001 C CNN
	1    10300 3400
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4004 D1
U 1 1 5CAC4398
P 10300 4250
F 0 "D1" H 10300 4466 50  0000 C CNN
F 1 "1N4004" H 10300 4375 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 10300 4075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10300 4250 50  0001 C CNN
	1    10300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 4250 10600 4250
Wire Wire Line
	10600 4250 10600 3800
Wire Wire Line
	10150 4250 10000 4250
Wire Wire Line
	10000 4250 10000 3800
$Comp
L power:VCC #PWR0104
U 1 1 5CACBD6A
P 10000 3800
F 0 "#PWR0104" H 10000 3650 50  0001 C CNN
F 1 "VCC" H 10017 3973 50  0000 C CNN
F 2 "" H 10000 3800 50  0001 C CNN
F 3 "" H 10000 3800 50  0001 C CNN
	1    10000 3800
	1    0    0    -1  
$EndComp
Connection ~ 10000 3800
Connection ~ 2000 7050
$Comp
L power:GND #PWR0113
U 1 1 5C9A3BEA
P 7100 1850
F 0 "#PWR0113" H 7100 1600 50  0001 C CNN
F 1 "GND" H 7105 1677 50  0000 C CNN
F 2 "" H 7100 1850 50  0001 C CNN
F 3 "" H 7100 1850 50  0001 C CNN
	1    7100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2550 4800 2550
Connection ~ 5100 2550
Wire Wire Line
	5100 2700 5100 2550
Wire Wire Line
	5700 3300 5850 3300
$Comp
L power:GND #PWR0119
U 1 1 5CA6E7BB
P 5700 3300
F 0 "#PWR0119" H 5700 3050 50  0001 C CNN
F 1 "GND" H 5705 3127 50  0000 C CNN
F 2 "" H 5700 3300 50  0001 C CNN
F 3 "" H 5700 3300 50  0001 C CNN
	1    5700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3200 5850 3200
Wire Wire Line
	1100 1250 1450 1250
$Comp
L power:GND #PWR0117
U 1 1 5CA2B308
P 2600 4850
F 0 "#PWR0117" H 2600 4600 50  0001 C CNN
F 1 "GND" H 2605 4677 50  0000 C CNN
F 2 "" H 2600 4850 50  0001 C CNN
F 3 "" H 2600 4850 50  0001 C CNN
	1    2600 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5CA19278
P 2400 4750
F 0 "J5" H 2508 5031 50  0000 C CNN
F 1 "LED Connector" H 2508 4940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2400 4750 50  0001 C CNN
F 3 "~" H 2400 4750 50  0001 C CNN
	1    2400 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4650 3800 4650
Wire Wire Line
	3850 4750 2600 4750
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CA365EF
P 6050 3300
F 0 "J1" H 6158 3481 50  0000 C CNN
F 1 "Reset" H 6158 3390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6050 3300 50  0001 C CNN
F 3 "~" H 6050 3300 50  0001 C CNN
	1    6050 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 4400 3850 4750
Wire Wire Line
	4400 4400 3850 4400
Wire Wire Line
	3800 4300 4400 4300
Wire Wire Line
	3800 4650 3800 4300
Wire Wire Line
	3000 5950 4100 5950
$Comp
L power:GND #PWR0116
U 1 1 5CA14CBD
P 4100 5950
F 0 "#PWR0116" H 4100 5700 50  0001 C CNN
F 1 "GND" H 4105 5777 50  0000 C CNN
F 2 "" H 4100 5950 50  0001 C CNN
F 3 "" H 4100 5950 50  0001 C CNN
	1    4100 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6550 3000 6550
Wire Wire Line
	5800 4000 5800 6550
Wire Wire Line
	5400 4000 5800 4000
Wire Wire Line
	5750 3900 5400 3900
Wire Wire Line
	5750 6450 5750 3900
Wire Wire Line
	3000 6450 5750 6450
Wire Wire Line
	3700 4200 4400 4200
Wire Wire Line
	3700 6350 3700 4200
Wire Wire Line
	3000 6350 3700 6350
Wire Wire Line
	3650 3800 4400 3800
Wire Wire Line
	3650 6250 3650 3800
Wire Wire Line
	3000 6250 3650 6250
Wire Wire Line
	3600 6150 3000 6150
Wire Wire Line
	3600 3700 3600 6150
Wire Wire Line
	4400 3700 3600 3700
Wire Wire Line
	3550 3600 4400 3600
Wire Wire Line
	3550 6050 3550 3600
Wire Wire Line
	3000 6050 3550 6050
Wire Wire Line
	3500 5850 3500 1250
Wire Wire Line
	3000 5850 3500 5850
$Comp
L Connector:Conn_01x08_Male J6
U 1 1 5C9F5A83
P 2800 6150
F 0 "J6" H 2908 6631 50  0000 C CNN
F 1 "Buttons" H 2908 6540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2800 6150 50  0001 C CNN
F 3 "~" H 2800 6150 50  0001 C CNN
	1    2800 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3800 6350 3800
Wire Wire Line
	5400 3700 6250 3700
Wire Wire Line
	4000 3900 4000 2400
Wire Wire Line
	5700 4200 5700 5050
Wire Wire Line
	5700 4200 5400 4200
Wire Wire Line
	6600 5050 5700 5050
Wire Wire Line
	6600 4700 6600 5050
Wire Wire Line
	6350 4700 6600 4700
Wire Wire Line
	5600 4100 5400 4100
Wire Wire Line
	5600 5150 5600 4100
Wire Wire Line
	6700 5150 5600 5150
Wire Wire Line
	6700 4600 6700 5150
Wire Wire Line
	6350 4600 6700 4600
Wire Wire Line
	6600 2550 5100 2550
Wire Wire Line
	6600 4500 6600 2550
Wire Wire Line
	6350 4500 6600 4500
Wire Wire Line
	6350 4400 6850 4400
$Comp
L power:GND #PWR0115
U 1 1 5C9D6B21
P 6850 4400
F 0 "#PWR0115" H 6850 4150 50  0001 C CNN
F 1 "GND" H 6855 4227 50  0000 C CNN
F 2 "" H 6850 4400 50  0001 C CNN
F 3 "" H 6850 4400 50  0001 C CNN
	1    6850 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 5C9D57C3
P 6150 4500
F 0 "J7" H 6258 4781 50  0000 C CNN
F 1 "LCD Connector" H 6258 4690 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6150 4500 50  0001 C CNN
F 3 "~" H 6150 4500 50  0001 C CNN
	1    6150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3400 4400 3400
Wire Wire Line
	3400 4150 3400 3400
Wire Wire Line
	2500 7350 2900 7350
Connection ~ 2500 7350
Wire Wire Line
	2000 7350 2500 7350
Connection ~ 2900 7050
$Comp
L Device:C C4
U 1 1 5C9CF211
P 2900 7200
F 0 "C4" H 3018 7246 50  0000 L CNN
F 1 "0.1u" H 3018 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2938 7050 50  0001 C CNN
F 3 "~" H 2900 7200 50  0001 C CNN
	1    2900 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 7050 2200 7050
Wire Wire Line
	1200 4050 1200 3300
Wire Wire Line
	2800 4050 1200 4050
Connection ~ 2400 3400
Wire Wire Line
	2400 4250 2800 4250
Wire Wire Line
	2400 3400 2400 4250
Connection ~ 2000 1550
Wire Wire Line
	2400 3400 2800 3400
Wire Wire Line
	2400 1550 2400 3400
Wire Wire Line
	2000 1550 2400 1550
Wire Wire Line
	2000 1250 3500 1250
Connection ~ 2000 1250
$Comp
L Device:R R1
U 1 1 5C93043E
P 2000 1400
F 0 "R1" H 1930 1354 50  0000 R CNN
F 1 "5k" H 1930 1445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1930 1400 50  0001 C CNN
F 3 "~" H 2000 1400 50  0001 C CNN
	1    2000 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5C92FD4E
P 2000 1700
F 0 "R2" H 2070 1746 50  0000 L CNN
F 1 "1k" H 2070 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1930 1700 50  0001 C CNN
F 3 "~" H 2000 1700 50  0001 C CNN
	1    2000 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1250 2000 1250
$Comp
L power:GND #PWR0107
U 1 1 5C9321E5
P 2000 1850
F 0 "#PWR0107" H 2000 1600 50  0001 C CNN
F 1 "GND" H 2005 1677 50  0000 C CNN
F 2 "" H 2000 1850 50  0001 C CNN
F 3 "" H 2000 1850 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U2
U 2 1 5C91C060
P 3100 3300
F 0 "U2" H 3100 3667 50  0000 C CNN
F 1 "LM339" H 3100 3576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3050 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 3150 3500 50  0001 C CNN
	2    3100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3300 4400 3300
$Comp
L Comparator:LM339 U2
U 1 1 5C9B19E2
P 3100 4150
F 0 "U2" H 3100 4517 50  0000 C CNN
F 1 "LM339" H 3100 4426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3050 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 3150 4350 50  0001 C CNN
	1    3100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3200 2800 3200
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5C9ADB57
P 1000 3200
F 0 "J3" H 1108 3381 50  0000 C CNN
F 1 "Wheel Sensors" H 1108 3290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1000 3200 50  0001 C CNN
F 3 "~" H 1000 3200 50  0001 C CNN
	1    1000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3900 4000 3900
Connection ~ 1450 1250
$Comp
L power:VCC #PWR0108
U 1 1 5C987913
P 1100 1250
F 0 "#PWR0108" H 1100 1100 50  0001 C CNN
F 1 "VCC" H 1117 1423 50  0000 C CNN
F 2 "" H 1100 1250 50  0001 C CNN
F 3 "" H 1100 1250 50  0001 C CNN
	1    1100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C985947
P 1450 1850
F 0 "#PWR0103" H 1450 1600 50  0001 C CNN
F 1 "GND" H 1455 1677 50  0000 C CNN
F 2 "" H 1450 1850 50  0001 C CNN
F 3 "" H 1450 1850 50  0001 C CNN
	1    1450 1850
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U2
U 5 1 5C982ACC
P 1550 1550
F 0 "U2" H 1508 1596 50  0000 L CNN
F 1 "LM339" H 1508 1505 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1500 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 1600 1750 50  0001 C CNN
	5    1550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5C956B3D
P 7450 4400
F 0 "#PWR0111" H 7450 4150 50  0001 C CNN
F 1 "GND" H 7455 4227 50  0000 C CNN
F 2 "" H 7450 4400 50  0001 C CNN
F 3 "" H 7450 4400 50  0001 C CNN
	1    7450 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5C956B35
P 7450 4250
F 0 "C2" H 7568 4296 50  0000 L CNN
F 1 "100u" H 7568 4205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7488 4100 50  0001 C CNN
F 3 "~" H 7450 4250 50  0001 C CNN
	1    7450 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C956B2F
P 7300 4100
F 0 "R4" V 7093 4100 50  0000 C CNN
F 1 "1k" V 7184 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7230 4100 50  0001 C CNN
F 3 "~" H 7300 4100 50  0001 C CNN
	1    7300 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2200 3850 2200
Wire Wire Line
	3950 4100 4400 4100
Wire Wire Line
	3950 2300 3950 4100
Wire Wire Line
	6850 2300 3950 2300
Wire Wire Line
	3850 4000 4400 4000
Wire Wire Line
	3850 2200 3850 4000
$Comp
L Device:R R3
U 1 1 5C949788
P 7200 3250
F 0 "R3" V 6993 3250 50  0000 C CNN
F 1 "1k" V 7084 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7130 3250 50  0001 C CNN
F 3 "~" H 7200 3250 50  0001 C CNN
	1    7200 3250
	0    1    1    0   
$EndComp
$Comp
L Device:CP C1
U 1 1 5C94A8E9
P 7350 3400
F 0 "C1" H 7468 3446 50  0000 L CNN
F 1 "100u" H 7468 3355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7388 3250 50  0001 C CNN
F 3 "~" H 7350 3400 50  0001 C CNN
	1    7350 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C94AF6C
P 7350 3550
F 0 "#PWR0110" H 7350 3300 50  0001 C CNN
F 1 "GND" H 7355 3377 50  0000 C CNN
F 2 "" H 7350 3550 50  0001 C CNN
F 3 "" H 7350 3550 50  0001 C CNN
	1    7350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3500 4100 3500
$Comp
L power:GND #PWR0109
U 1 1 5C93B819
P 2500 7350
F 0 "#PWR0109" H 2500 7100 50  0001 C CNN
F 1 "GND" H 2505 7177 50  0000 C CNN
F 2 "" H 2500 7350 50  0001 C CNN
F 3 "" H 2500 7350 50  0001 C CNN
	1    2500 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7050 2900 7050
$Comp
L power:VCC #PWR0102
U 1 1 5C926FC9
P 2900 7050
F 0 "#PWR0102" H 2900 6900 50  0001 C CNN
F 1 "VCC" H 2917 7223 50  0000 C CNN
F 2 "" H 2900 7050 50  0001 C CNN
F 3 "" H 2900 7050 50  0001 C CNN
	1    2900 7050
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 5C924B15
P 2500 7050
F 0 "U1" H 2500 7292 50  0000 C CNN
F 1 "LM7805_TO220" H 2500 7201 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2500 7275 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 2500 7000 50  0001 C CNN
	1    2500 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4700 5000 5050
$Comp
L power:GND #PWR0101
U 1 1 5C923ECB
P 5000 5050
F 0 "#PWR0101" H 5000 4800 50  0001 C CNN
F 1 "GND" H 5005 4877 50  0000 C CNN
F 2 "" H 5000 5050 50  0001 C CNN
F 3 "" H 5000 5050 50  0001 C CNN
	1    5000 5050
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C91460E
P 4900 3700
F 0 "A1" H 4900 2611 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 4900 2520 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5050 2750 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 4900 2700 50  0001 C CNN
	1    4900 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5CB11FD3
P 6800 1950
F 0 "#PWR0105" H 6800 1700 50  0001 C CNN
F 1 "GND" H 6805 1777 50  0000 C CNN
F 2 "" H 6800 1950 50  0001 C CNN
F 3 "" H 6800 1950 50  0001 C CNN
	1    6800 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5CB35637
P 10600 4850
F 0 "#PWR0106" H 10600 4600 50  0001 C CNN
F 1 "GND" H 10605 4677 50  0000 C CNN
F 2 "" H 10600 4850 50  0001 C CNN
F 3 "" H 10600 4850 50  0001 C CNN
	1    10600 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5CB35E70
P 10150 4650
F 0 "R9" V 9943 4650 50  0000 C CNN
F 1 "1k" V 10034 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10080 4650 50  0001 C CNN
F 3 "~" H 10150 4650 50  0001 C CNN
	1    10150 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	10600 4450 10600 4250
Connection ~ 10600 4250
Wire Wire Line
	4100 5750 10000 5750
Wire Wire Line
	4100 3500 4100 5750
Wire Wire Line
	6950 4100 7150 4100
Wire Wire Line
	6950 2200 6950 4100
Wire Wire Line
	6850 2300 6850 3250
Wire Wire Line
	6850 3250 7050 3250
$Comp
L power:GND #PWR0112
U 1 1 5CB77EC5
P 7950 4400
F 0 "#PWR0112" H 7950 4150 50  0001 C CNN
F 1 "GND" H 7955 4227 50  0000 C CNN
F 2 "" H 7950 4400 50  0001 C CNN
F 3 "" H 7950 4400 50  0001 C CNN
	1    7950 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 5CB77ECB
P 7950 4250
F 0 "C6" H 8068 4296 50  0000 L CNN
F 1 "2.2u" H 8068 4205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7988 4100 50  0001 C CNN
F 3 "~" H 7950 4250 50  0001 C CNN
	1    7950 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5CB77ED1
P 7800 4100
F 0 "R8" V 7593 4100 50  0000 C CNN
F 1 "1k" V 7684 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7730 4100 50  0001 C CNN
F 3 "~" H 7800 4100 50  0001 C CNN
	1    7800 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 4100 7650 4100
$Comp
L power:GND #PWR0118
U 1 1 5CB8157F
P 7850 3550
F 0 "#PWR0118" H 7850 3300 50  0001 C CNN
F 1 "GND" H 7855 3377 50  0000 C CNN
F 2 "" H 7850 3550 50  0001 C CNN
F 3 "" H 7850 3550 50  0001 C CNN
	1    7850 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 5CB81585
P 7850 3400
F 0 "C5" H 7968 3446 50  0000 L CNN
F 1 "2.2u" H 7968 3355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7888 3250 50  0001 C CNN
F 3 "~" H 7850 3400 50  0001 C CNN
	1    7850 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5CB8158B
P 7700 3250
F 0 "R7" V 7493 3250 50  0000 C CNN
F 1 "1k" V 7584 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7630 3250 50  0001 C CNN
F 3 "~" H 7700 3250 50  0001 C CNN
	1    7700 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 3250 7550 3250
Wire Wire Line
	7950 4100 9600 4100
Wire Wire Line
	9600 4100 9600 3300
Wire Wire Line
	9600 3300 10000 3300
Connection ~ 7950 4100
Wire Wire Line
	10000 2900 9450 2900
Wire Wire Line
	9450 2900 9450 3250
Wire Wire Line
	9450 3250 7850 3250
Connection ~ 7850 3250
Wire Wire Line
	6500 1350 6500 1650
Wire Wire Line
	4000 2400 7550 2400
Wire Wire Line
	7550 2400 7550 1450
Wire Wire Line
	7550 1450 7100 1450
Wire Wire Line
	5700 1350 6500 1350
Wire Wire Line
	5700 1150 9800 1150
$Comp
L Connector:Conn_01x05_Male J4
U 1 1 5C99A7FB
P 5500 1150
F 0 "J4" H 5608 1531 50  0000 C CNN
F 1 "Pedal Connector" H 5608 1440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 5500 1150 50  0001 C CNN
F 3 "~" H 5500 1150 50  0001 C CNN
	1    5500 1150
	1    0    0    -1  
$EndComp
Connection ~ 3500 1250
Wire Wire Line
	3500 1250 4800 1250
Wire Wire Line
	4800 1250 4800 2550
Wire Wire Line
	11050 3400 11050 1050
Wire Wire Line
	10600 3400 11050 3400
Wire Wire Line
	10800 1250 10800 3000
Wire Wire Line
	10800 3000 10600 3000
Wire Wire Line
	9800 1150 9800 3100
Wire Wire Line
	9800 3100 10000 3100
Wire Wire Line
	5700 950  9700 950 
Wire Wire Line
	9700 950  9700 3500
Wire Wire Line
	9700 3500 10000 3500
$Comp
L Device:R R5
U 1 1 5C99DFEB
P 6650 1650
F 0 "R5" V 6443 1650 50  0000 C CNN
F 1 "10k" V 6534 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6580 1650 50  0001 C CNN
F 3 "~" H 6650 1650 50  0001 C CNN
	1    6650 1650
	0    1    1    0   
$EndComp
Connection ~ 6800 1650
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5C99EAB5
P 7000 1650
F 0 "Q1" H 7190 1696 50  0000 L CNN
F 1 "2N3904" H 7190 1605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7200 1575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7000 1650 50  0001 L CNN
	1    7000 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5CA30311
P 6800 1800
F 0 "R6" H 6870 1846 50  0000 L CNN
F 1 "10k" H 6870 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6730 1800 50  0001 C CNN
F 3 "~" H 6800 1800 50  0001 C CNN
	1    6800 1800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U3
U 1 1 5CBC8C80
P 8700 2650
F 0 "U3" H 8700 3017 50  0000 C CNN
F 1 "LM358" H 8700 2926 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8700 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 8700 2650 50  0001 C CNN
	1    8700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1250 8400 1250
Wire Wire Line
	5700 1050 8250 1050
Wire Wire Line
	8400 2750 8400 2950
Wire Wire Line
	8400 2950 9000 2950
Wire Wire Line
	9000 2950 9000 2650
Wire Wire Line
	8400 2950 6250 2950
Wire Wire Line
	6250 2950 6250 3700
Connection ~ 8400 2950
$Comp
L Amplifier_Operational:LM358 U3
U 2 1 5CBD9A01
P 8700 1850
F 0 "U3" H 8700 2217 50  0000 C CNN
F 1 "LM358" H 8700 2126 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8700 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 8700 1850 50  0001 C CNN
	2    8700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1950 8400 2150
Wire Wire Line
	8400 2150 9000 2150
Wire Wire Line
	9000 2150 9000 1850
Wire Wire Line
	6350 3800 6350 2750
Wire Wire Line
	6350 2750 8000 2750
Wire Wire Line
	8000 2750 8000 2150
Wire Wire Line
	8000 2150 8400 2150
Connection ~ 8400 2150
Wire Wire Line
	8400 1750 8400 1250
Connection ~ 8400 1250
Wire Wire Line
	8400 1250 10800 1250
Wire Wire Line
	8400 2550 8250 2550
Wire Wire Line
	8250 2550 8250 1050
Connection ~ 8250 1050
Wire Wire Line
	8250 1050 11050 1050
$Comp
L Amplifier_Operational:LM358 U3
U 3 1 5CBF471B
P 9450 2250
F 0 "U3" H 9408 2296 50  0000 L CNN
F 1 "LM358" H 9408 2205 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9450 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 9450 2250 50  0001 C CNN
	3    9450 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5CBF8C6E
P 9350 2550
F 0 "#PWR02" H 9350 2300 50  0001 C CNN
F 1 "GND" H 9355 2377 50  0000 C CNN
F 2 "" H 9350 2550 50  0001 C CNN
F 3 "" H 9350 2550 50  0001 C CNN
	1    9350 2550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5CBF9654
P 9350 1950
F 0 "#PWR01" H 9350 1800 50  0001 C CNN
F 1 "VCC" H 9367 2123 50  0000 C CNN
F 2 "" H 9350 1950 50  0001 C CNN
F 3 "" H 9350 1950 50  0001 C CNN
	1    9350 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5CC0091C
P 1550 6600
F 0 "J8" V 1650 6750 50  0000 C CNN
F 1 "Switch Connector" V 1500 6550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1550 6600 50  0001 C CNN
F 3 "~" H 1550 6600 50  0001 C CNN
	1    1550 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 6800 1450 7050
Wire Wire Line
	950  7050 1450 7050
Wire Wire Line
	1550 6800 1550 7050
Wire Wire Line
	1550 7050 1700 7050
$Comp
L Transistor_FET:2N7000 Q2
U 1 1 5CA6C5A8
P 10500 4650
F 0 "Q2" H 10706 4696 50  0000 L CNN
F 1 "2N7000" H 10706 4605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10700 4575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 10500 4650 50  0001 L CNN
	1    10500 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CA70473
P 10300 5050
F 0 "#PWR03" H 10300 4800 50  0001 C CNN
F 1 "GND" H 10305 4877 50  0000 C CNN
F 2 "" H 10300 5050 50  0001 C CNN
F 3 "" H 10300 5050 50  0001 C CNN
	1    10300 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5CA6F6BD
P 10300 4900
F 0 "R10" H 10370 4946 50  0000 L CNN
F 1 "10k" H 10370 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10230 4900 50  0001 C CNN
F 3 "~" H 10300 4900 50  0001 C CNN
	1    10300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4650 10300 4750
Connection ~ 10300 4650
Wire Wire Line
	10000 4650 10000 5750
$EndSCHEMATC
