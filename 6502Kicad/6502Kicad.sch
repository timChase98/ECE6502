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
L power:+3.3V #PWR0101
U 1 1 61ED2577
P 2000 850
F 0 "#PWR0101" H 2000 700 50  0001 C CNN
F 1 "+3.3V" H 2015 1023 50  0000 C CNN
F 2 "" H 2000 850 50  0001 C CNN
F 3 "" H 2000 850 50  0001 C CNN
	1    2000 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 850  2000 900 
Wire Wire Line
	1500 1150 1550 1150
$Comp
L Device:R R2
U 1 1 61ED68C5
P 1300 1550
F 0 "R2" V 1250 1400 50  0000 C CNN
F 1 "1k" V 1300 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1230 1550 50  0001 C CNN
F 3 "~" H 1300 1550 50  0001 C CNN
	1    1300 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 1250 1550 1250
Wire Wire Line
	1150 1550 950  1550
Wire Wire Line
	950  1550 950  1500
$Comp
L power:+3.3V #PWR0103
U 1 1 61ED734A
P 950 1500
F 0 "#PWR0103" H 950 1350 50  0001 C CNN
F 1 "+3.3V" H 965 1673 50  0000 C CNN
F 2 "" H 950 1500 50  0001 C CNN
F 3 "" H 950 1500 50  0001 C CNN
	1    950  1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61ED7BED
P 1150 1650
F 0 "R1" V 1100 1500 50  0000 C CNN
F 1 "1k" V 1150 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1080 1650 50  0001 C CNN
F 3 "~" H 1150 1650 50  0001 C CNN
	1    1150 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 1250 1500 1150
Connection ~ 1500 1150
Wire Wire Line
	1550 1550 1450 1550
Wire Wire Line
	1550 1650 1500 1650
$Comp
L Device:C C1
U 1 1 61EDB332
P 1500 1850
F 0 "C1" V 1550 1900 50  0000 L CNN
F 1 "100nF" V 1550 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1538 1700 50  0001 C CNN
F 3 "~" H 1500 1850 50  0001 C CNN
	1    1500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1700 1500 1650
Connection ~ 1500 1650
Wire Wire Line
	1500 1650 1350 1650
$Comp
L 6502:SW_Push SW1
U 1 1 61EDE944
P 1350 1850
F 0 "SW1" V 1400 2100 50  0000 R CNN
F 1 "SW_Push" V 1305 1796 50  0001 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 1350 2050 50  0001 C CNN
F 3 "~" H 1350 2050 50  0001 C CNN
	1    1350 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 1700 1350 1650
Connection ~ 1350 1650
Wire Wire Line
	1350 1650 1300 1650
$Comp
L power:GND #PWR0104
U 1 1 61EE0933
P 1350 2100
F 0 "#PWR0104" H 1350 1850 50  0001 C CNN
F 1 "GND" H 1355 1927 50  0000 C CNN
F 2 "" H 1350 2100 50  0001 C CNN
F 3 "" H 1350 2100 50  0001 C CNN
	1    1350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2000 1500 2050
Wire Wire Line
	1500 2050 1350 2050
Wire Wire Line
	1350 2050 1350 2100
Wire Wire Line
	1350 2000 1350 2050
Connection ~ 1350 2050
Wire Wire Line
	950  1550 950  1650
Wire Wire Line
	950  1650 1000 1650
Connection ~ 950  1550
Wire Wire Line
	1550 2850 1450 2850
Wire Wire Line
	1550 2950 1450 2950
Wire Wire Line
	1550 3050 1450 3050
Wire Wire Line
	1550 3150 1450 3150
Wire Wire Line
	1550 3250 1450 3250
Wire Wire Line
	1550 3350 1450 3350
NoConn ~ 1450 2850
NoConn ~ 1450 2950
NoConn ~ 1450 3050
NoConn ~ 1450 3150
NoConn ~ 1450 3250
NoConn ~ 1450 3350
Text Label 2800 1150 2    50   ~ 0
BusR~W~
Wire Wire Line
	2450 1150 2800 1150
Wire Wire Line
	2800 1250 2450 1250
Entry Wire Line
	2900 1150 2800 1250
Text Label 2800 1250 2    50   ~ 0
A15
Wire Wire Line
	2800 1350 2450 1350
Entry Wire Line
	2900 1250 2800 1350
Text Label 2800 1350 2    50   ~ 0
A14
Wire Wire Line
	2800 1450 2450 1450
Entry Wire Line
	2900 1350 2800 1450
Text Label 2800 1450 2    50   ~ 0
A13
Wire Wire Line
	2800 1550 2450 1550
Entry Wire Line
	2900 1450 2800 1550
Text Label 2800 1550 2    50   ~ 0
A12
Wire Wire Line
	2800 1650 2450 1650
Entry Wire Line
	2900 1550 2800 1650
Text Label 2800 1650 2    50   ~ 0
A11
Wire Wire Line
	2800 1750 2450 1750
Entry Wire Line
	2900 1650 2800 1750
Text Label 2800 1750 2    50   ~ 0
A10
Wire Wire Line
	2800 1850 2450 1850
Entry Wire Line
	2900 1750 2800 1850
Text Label 2800 1850 2    50   ~ 0
A9
Wire Wire Line
	2800 1950 2450 1950
Entry Wire Line
	2900 1850 2800 1950
Text Label 2800 1950 2    50   ~ 0
A8
Wire Wire Line
	2800 2050 2450 2050
Entry Wire Line
	2900 1950 2800 2050
Text Label 2800 2050 2    50   ~ 0
A7
Wire Wire Line
	2800 2150 2450 2150
Entry Wire Line
	2900 2050 2800 2150
Text Label 2800 2150 2    50   ~ 0
A6
Wire Wire Line
	2800 2250 2450 2250
Entry Wire Line
	2900 2150 2800 2250
Text Label 2800 2250 2    50   ~ 0
A5
Wire Wire Line
	2800 2350 2450 2350
Entry Wire Line
	2900 2250 2800 2350
Text Label 2800 2350 2    50   ~ 0
A4
Wire Wire Line
	2800 2450 2450 2450
Entry Wire Line
	2900 2350 2800 2450
Text Label 2800 2450 2    50   ~ 0
A3
Wire Wire Line
	2800 2550 2450 2550
Entry Wire Line
	2900 2450 2800 2550
Wire Wire Line
	2800 2650 2450 2650
Entry Wire Line
	2900 2550 2800 2650
Text Label 2800 2650 2    50   ~ 0
A1
Wire Wire Line
	2800 2750 2450 2750
Entry Wire Line
	2900 2650 2800 2750
Text Label 2800 2750 2    50   ~ 0
A0
Text Label 2800 2550 2    50   ~ 0
A2
Entry Wire Line
	2850 2850 2950 2750
Wire Wire Line
	2850 2850 2450 2850
Text Label 2800 2850 2    50   ~ 0
D7
Entry Wire Line
	2850 2950 2950 2850
Wire Wire Line
	2850 2950 2450 2950
Text Label 2800 2950 2    50   ~ 0
D6
Entry Wire Line
	2850 3050 2950 2950
Wire Wire Line
	2850 3050 2450 3050
Text Label 2800 3050 2    50   ~ 0
D5
Entry Wire Line
	2850 3150 2950 3050
Wire Wire Line
	2850 3150 2450 3150
Entry Wire Line
	2850 3250 2950 3150
Wire Wire Line
	2850 3250 2450 3250
Text Label 2800 3250 2    50   ~ 0
D3
Entry Wire Line
	2850 3350 2950 3250
Wire Wire Line
	2850 3350 2450 3350
Entry Wire Line
	2850 3450 2950 3350
Wire Wire Line
	2850 3450 2450 3450
Text Label 2800 3450 2    50   ~ 0
D1
Entry Wire Line
	2850 3550 2950 3450
Wire Wire Line
	2850 3550 2450 3550
Text Label 2800 3550 2    50   ~ 0
D0
Text Label 2800 3150 2    50   ~ 0
D4
Text Label 2800 3350 2    50   ~ 0
D2
Text Label 3350 1050 2    50   ~ 0
Addr[15..0]
Text Label 3350 1150 2    50   ~ 0
Data[7..0]
Wire Bus Line
	2950 1150 3350 1150
Wire Bus Line
	2900 1050 3350 1050
$Comp
L Device:C C?
U 1 1 61F1628D
P 1300 900
F 0 "C?" V 1250 950 50  0000 L CNN
F 1 "100nF" V 1250 600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1338 750 50  0001 C CNN
F 3 "~" H 1300 900 50  0001 C CNN
	1    1300 900 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61F174A5
P 1100 950
F 0 "#PWR?" H 1100 700 50  0001 C CNN
F 1 "GND" H 1105 777 50  0000 C CNN
F 2 "" H 1100 950 50  0001 C CNN
F 3 "" H 1100 950 50  0001 C CNN
	1    1100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 950  1100 900 
Wire Wire Line
	2000 900  1500 900 
Connection ~ 2000 900 
Wire Wire Line
	2000 900  2000 950 
Wire Wire Line
	1500 900  1500 1150
Wire Wire Line
	1500 900  1450 900 
Connection ~ 1500 900 
Wire Wire Line
	1100 900  1150 900 
Wire Wire Line
	1300 1450 1550 1450
Text Label 1300 1450 0    50   ~ 0
Clk
Wire Wire Line
	1300 1350 1550 1350
Text Label 1300 1350 0    50   ~ 0
~IRQ
$Comp
L 6502:W65C02S U?
U 1 1 61ECCCF2
P 2000 2300
F 0 "U?" H 1700 3600 50  0000 C CNN
F 1 "W65C02S" H 2200 3600 50  0000 C CNN
F 2 "" H 2100 3600 50  0001 C CNN
F 3 "" H 2100 3600 50  0001 C CNN
	1    2000 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ECFC82
P 2000 3750
F 0 "#PWR?" H 2000 3500 50  0001 C CNN
F 1 "GND" H 2005 3577 50  0000 C CNN
F 2 "" H 2000 3750 50  0001 C CNN
F 3 "" H 2000 3750 50  0001 C CNN
	1    2000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3750 2000 3700
Wire Bus Line
	2950 1150 2950 3450
Wire Bus Line
	2900 1050 2900 2650
$EndSCHEMATC
