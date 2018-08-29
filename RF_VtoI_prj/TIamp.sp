*$
*****************************************************************************
* (C) Copyright 2016 Texas Instruments Incorporated. All rights reserved.
*****************************************************************************
** This model is designed as an aid for customers of Texas Instruments.
** TI and its licensors and suppliers make no warranties, either expressed
** or implied, with respect to this model, including the warranties of
** merchantability or fitness for a particular purpose.  The model is
** provided solely on an "as is" basis.  The entire risk as to its quality
** and performance is with the customer.
*****************************************************************************
*
** Released by: WEBENCH(R) Design Center, Texas Instruments Inc.
* Part: THS3091
* Date: 28/06/2016
* Model Type: All In One
* Simulator: PSPICE
* Simulator Version: 16.2.0.p001
* EVM Order Number: N/A
* EVM Users Guide:  N/A
* Datasheet: SLOS423H –SEPTEMBER 2003–REVISED DECEMBER 2015
*
* Model Version: 1.0
*
*****************************************************************************
*
*
* Updates:
*
* Version 1.0 : Release to Web
*
*****************************************************************************

*****************************************************************************
* NOTES:
* THS3091 SUBCIRCUIT
* HIGH SPEED MONLITHIC OPERATIONAL AMPLIFIER
* THIS MODEL SIMULATES TYPICAL VALUES FOR THE FOLLOWING:
* SETTLING TIME, OUTPUT VOLTAGE LIMIT, INPUT VOLTAGE NOISE, INPUT BIAS CURRENT,
* TYPICAL VALUES FOR INPUT OFFSET VOLTAGE AND OFFSET BIAS CURRENT,
* CURRENT DRAW FROM POWER SUPPLY, OUTPUT IMPEDANCE AND LOADING EFFECTS
* BANDWIDTH IS HIGH IN GAINS OF +1V/V AND +2V/V AND LOW AT HIGHER GAINS
* SLEW RATE IS CORRECT AT 2VSTEP BUT DOES NOT INCREASE WITH STEP SIZE AS ACTUAL DEVICE DOES
* THIS MODEL WILL NOT PROVIDE ACCURATE SIMULATION OF:
* CMRR AND PSRR, INPUT CURRENT NOISE, DISTORTION, INPUT OFFSET, OPEN LOOP GAIN, OR INPUT CURRENT NOISE
*******************************************************************************************************************

.subckt THS3091 inp inn out vcc vee

.MODEL bi_pnp PNP
+ RC=100
+ CJE=20.000E-15
+ CJC=20.000E-15
+ KF=1.5e-13

.MODEL bi_npn NPN
+ RC=100
+ CJE=20.000E-15
+ CJC=20.000E-15
+ KF=1.5e-13

.MODEL D_break D
+ RS=1.0000E-1
+ CJO=1.0000E-13
+ IS=100e-15

* source THS3091
* Input stage
E_E6 INPP INP N33650 0 1
R_R24 0 N33650 700
C_C6 0 N33650 1f
V_V6 IN INN 0.9mVdc
C_C3 0 INN 630f
I_I4 INP 0 -4.5uA
I_I5 INN 0 -3uA
Q_Q15 VCC INPP N00923 BI_NPN 4
Q_Q16 N01029 N00889 IN BI_NPN 4
Q_Q17 N01060 N01060 N013920 BI_NPN 12
Q_Q21 N01060 N00923 IN BI_PNP 4
Q_Q22 VEE INP N00889 BI_PNP 4
Q_Q23 N01029 N01029 N01331 BI_PNP 12
R_R1 N01331 N01300 250
R_R2 N01429 N013920 250
I_I1 VCC N00889 DC 300uA
I_I2 N00923 VEE DC 300uA

* mirrors
X_F1 VCC N01300 VCC LLL SCHEMATIC1_F1
X_F2 N01429 VEE LLL VEE SCHEMATIC1_F2

* clamps
D_D5 LLL N29734 D_BREAK 2
D_D6 N29798 LLL D_BREAK 2
V_V7 N29734 VCC -2.3Vdc
V_V8 N29798 VEE 2.3Vdc

* frequency shaping and compensation
C_C1 eref LLL 0.66p
R_R3 eref LLL 900k
R_R11 eref INT 1000
C_C5 eref INT 400f
G_G1 INT eref LLL eref -1m

* buffer and output stages
E_E1 VCC N02648 N02361 eref -1
E_E2 N02628 VEE N02418 eref 1
D_D3 N02648 N02743 D_BREAK 8
D_D4 N028591 N02628 D_BREAK 8

R_R5 N02855 N02743 5
R_R7 N028591 N02855 5
E_E101 avg vee vcc vee 0.5
E_E102 eref 0 avg 0 1
E_E103 diff 0 vcc vee 0.5
E_E104 lshift 0 diff ddrop 1
E_E105 INT N02361 lshift 0 1
E_E106 INT N02418 lshift 0 -1

C_C2 0 OUT 0.7p
L_L1 N02855 OUT 1n
I_I3 VCC VEE 4.85mA

V_V102 ddrop 0 0.65

.ends THS3091
*$

.subckt SCHEMATIC1_F1 1 2 3 4
F_F1 3 4 VF_F1 1
VF_F1 1 2 0V
.ends SCHEMATIC1_F1
*$

.subckt SCHEMATIC1_F2 1 2 3 4
F_F2 3 4 VF_F2 1
VF_F2 1 2 0V
.ends SCHEMATIC1_F2
*$

X_1 p n o vp vn THS3091
.end
*$
