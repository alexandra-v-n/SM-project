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
L HC-SR04:HC-SR04 U1
U 1 1 5DE6C59D
P 8650 3150
F 0 "U1" H 9080 3146 50  0000 L CNN
F 1 "HC-SR04" H 9080 3055 50  0000 L CNN
F 2 "XCVR_HC-SR04" H 8650 3150 50  0001 L BNN
F 3 "None" H 8650 3150 50  0001 L BNN
F 4 "OSEPP Electronics" H 8650 3150 50  0001 L BNN "Field4"
F 5 "None" H 8650 3150 50  0001 L BNN "Field5"
F 6 "Multiple Function Sensor Development Tools Ultrasonic Sensor Module" H 8650 3150 50  0001 L BNN "Field6"
F 7 "Unavailable" H 8650 3150 50  0001 L BNN "Field7"
F 8 "HC-SR04" H 8650 3150 50  0001 L BNN "Field8"
	1    8650 3150
	1    0    0    -1  
$EndComp
$Comp
L HC-SR04:HC-SR04 U2
U 1 1 5DE6D770
P 8650 4150
F 0 "U2" H 9080 4146 50  0000 L CNN
F 1 "HC-SR04" H 9080 4055 50  0000 L CNN
F 2 "XCVR_HC-SR04" H 8650 4150 50  0001 L BNN
F 3 "None" H 8650 4150 50  0001 L BNN
F 4 "OSEPP Electronics" H 8650 4150 50  0001 L BNN "Field4"
F 5 "None" H 8650 4150 50  0001 L BNN "Field5"
F 6 "Multiple Function Sensor Development Tools Ultrasonic Sensor Module" H 8650 4150 50  0001 L BNN "Field6"
F 7 "Unavailable" H 8650 4150 50  0001 L BNN "Field7"
F 8 "HC-SR04" H 8650 4150 50  0001 L BNN "Field8"
	1    8650 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell B1
U 1 1 5DE6F838
P 7600 2700
F 0 "B1" H 7718 2796 50  0001 L CNN
F 1 "Battery_Cell" H 7718 2750 50  0000 L CNN
F 2 "" V 7600 2760 50  0001 C CNN
F 3 "~" V 7600 2760 50  0001 C CNN
	1    7600 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5DE73B44
P 8450 4050
F 0 "#PWR0103" H 8450 3900 50  0001 C CNN
F 1 "+5V" V 8465 4178 50  0000 L CNN
F 2 "" H 8450 4050 50  0001 C CNN
F 3 "" H 8450 4050 50  0001 C CNN
	1    8450 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5DE7417A
P 8450 3050
F 0 "#PWR0104" H 8450 2900 50  0001 C CNN
F 1 "+5V" V 8465 3178 50  0000 L CNN
F 2 "" H 8450 3050 50  0001 C CNN
F 3 "" H 8450 3050 50  0001 C CNN
	1    8450 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR0105
U 1 1 5DE748D7
P 8450 3350
F 0 "#PWR0105" H 8450 3100 50  0001 C CNN
F 1 "Earth" H 8450 3200 50  0001 C CNN
F 2 "" H 8450 3350 50  0001 C CNN
F 3 "~" H 8450 3350 50  0001 C CNN
	1    8450 3350
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0106
U 1 1 5DE75523
P 8450 4350
F 0 "#PWR0106" H 8450 4100 50  0001 C CNN
F 1 "Earth" H 8450 4200 50  0001 C CNN
F 2 "" H 8450 4350 50  0001 C CNN
F 3 "~" H 8450 4350 50  0001 C CNN
	1    8450 4350
	1    0    0    -1  
$EndComp
NoConn ~ 13450 2500
$Comp
L promicro:ProMicro U3
U 1 1 5DE772CD
P 4350 3200
F 0 "U3" H 4350 4237 60  0000 C CNN
F 1 "ProMicro" H 4350 4131 60  0000 C CNN
F 2 "" H 4450 2150 60  0000 C CNN
F 3 "" H 4450 2150 60  0000 C CNN
	1    4350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2500 7600 1800
Wire Wire Line
	7600 1800 5050 1800
Wire Wire Line
	5050 1800 5050 2450
Wire Wire Line
	5350 2800 5350 2550
Wire Wire Line
	5350 2550 5050 2550
Wire Wire Line
	3100 5250 3100 3450
Wire Wire Line
	3100 3450 3650 3450
Wire Wire Line
	5350 3250 5350 4100
Wire Wire Line
	5350 4100 3450 4100
Wire Wire Line
	8450 3150 7600 3150
Wire Wire Line
	7600 3150 7600 3400
Wire Wire Line
	5550 4250 2550 4250
Wire Wire Line
	2550 4250 2550 3350
Wire Wire Line
	2550 3350 3650 3350
Wire Wire Line
	3450 4100 3450 3250
Wire Wire Line
	3450 3250 3650 3250
Wire Wire Line
	5650 4250 5650 4650
Wire Wire Line
	5650 4650 3300 4650
Wire Wire Line
	3300 4650 3300 3150
Wire Wire Line
	3300 3150 3650 3150
Wire Wire Line
	2900 3050 3650 3050
Wire Wire Line
	7100 4150 7100 4850
Wire Wire Line
	8450 4150 7100 4150
Wire Wire Line
	7600 2800 5350 2800
Wire Wire Line
	7100 4850 6550 4850
Wire Wire Line
	6550 4950 6550 4850
Wire Wire Line
	6550 4950 2900 4950
Wire Wire Line
	2900 3050 2900 4950
Wire Wire Line
	8450 4250 5650 4250
Wire Wire Line
	7600 3400 5550 3400
Wire Wire Line
	5550 3400 5550 4250
Wire Wire Line
	5350 3250 8450 3250
NoConn ~ 5050 2650
NoConn ~ 5050 2750
NoConn ~ 5050 2850
NoConn ~ 5050 2950
NoConn ~ 5050 3050
NoConn ~ 5050 3150
NoConn ~ 5050 3250
NoConn ~ 5050 3350
NoConn ~ 5050 3450
NoConn ~ 5050 3550
NoConn ~ 3650 3550
NoConn ~ 3650 2950
NoConn ~ 3650 2850
NoConn ~ 3650 2750
NoConn ~ 3650 2650
NoConn ~ 3650 2550
NoConn ~ 3650 2450
$Comp
L Z30C1T8460001:Z30C1T8460001 M1
U 1 1 5DE83EC6
P 5200 6150
F 0 "M1" H 5200 6520 50  0000 C CNN
F 1 "Z30C1T8460001" H 5200 6429 50  0000 C CNN
F 2 "XDCR_Z30C1T8460001" H 5200 6150 50  0001 L BNN
F 3 "Jinlong Machinery" H 5200 6150 50  0001 L BNN
F 4 "Jinlong Machinery &amp; Electronics" H 5200 6150 50  0001 L BNN "Field4"
F 5 "Unavailable" H 5200 6150 50  0001 L BNN "Field5"
F 6 "Z30C1T8460001" H 5200 6150 50  0001 L BNN "Field6"
F 7 "Smd Vibration Motor 3mm Low Prof" H 5200 6150 50  0001 L BNN "Field7"
F 8 "None" H 5200 6150 50  0001 L BNN "Field8"
	1    5200 6150
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0101
U 1 1 5DE84ED6
P 4800 6250
F 0 "#PWR0101" H 4800 6000 50  0001 C CNN
F 1 "Earth" H 4800 6100 50  0001 C CNN
F 2 "" H 4800 6250 50  0001 C CNN
F 3 "~" H 4800 6250 50  0001 C CNN
	1    4800 6250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5DE85789
P 4800 6050
F 0 "#PWR0102" H 4800 5900 50  0001 C CNN
F 1 "+5V" V 4815 6178 50  0000 L CNN
F 2 "" H 4800 6050 50  0001 C CNN
F 3 "" H 4800 6050 50  0001 C CNN
	1    4800 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 5250 5600 6150
Wire Wire Line
	3100 5250 5600 5250
$EndSCHEMATC
