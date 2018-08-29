<Qucs Schematic 0.0.19>
<Properties>
  <View=76,-111,1010,665,1.08609,0,0>
  <Grid=10,10,1>
  <DataSet=Converter.dat>
  <DataDisplay=Converter.dpl>
  <OpenDisplay=1>
  <Script=Converter.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <R R1 1 260 210 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 260 260 0 0 0 0>
  <GND * 1 130 260 0 0 0 0>
  <GND * 1 560 80 0 0 0 0>
  <C C1 1 190 120 -26 17 0 0 "220 nF" 1 "" 0 "neutral" 0>
  <Vdc V2 1 510 60 -26 -56 0 2 "15 V" 1>
  <Vdc V3 1 530 210 -26 18 0 0 "15 V" 1>
  <GND * 1 580 230 0 0 0 0>
  <Sub SUB1 1 430 160 50 -56 0 0 "TI_THS3091.sch" 0>
  <Vac V1 1 130 200 18 -26 0 1 "0.1 V" 1 "1 MHz" 0 "0" 0 "0" 0>
  <.AC AC1 1 130 320 0 39 0 0 "lin" 1 "1 MHz" 1 "100 MHz" 1 "100" 1 "no" 0>
  <Eqn Eqn1 1 160 470 -30 16 0 0 "I_meas=Vout.v/R4.R" 1 "yes" 0>
  <.DC DC1 1 130 30 0 39 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn2 1 660 -10 -30 16 0 0 "Rf=511" 1 "yes" 0>
  <Eqn Eqn3 1 660 60 -30 16 0 0 "Rg=Rf/9" 1 "yes" 0>
  <Eqn Eqn4 1 760 -10 -30 16 0 0 "I_coil=I_meas+Pr1.i" 1 "yes" 0>
  <Eqn Eqn5 1 760 60 -30 16 0 0 "Lg=6*Rg*10^-9" 1 "yes" 0>
  <L L2 1 800 210 10 -26 0 1 "150 nH" 1 "" 0>
  <L L1 1 370 470 10 -26 0 1 "Lg" 1 "" 0>
  <GND * 1 370 520 0 0 0 0>
  <GND * 1 800 440 0 0 0 0>
  <R R2 1 370 390 15 -26 0 1 "Rg" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Pr1 1 630 340 -26 -35 0 2>
  <R R3 1 730 340 -26 -53 0 2 "Rf" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R4 1 800 390 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R5 1 800 290 15 -26 0 1 "0.1 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C2 1 910 250 17 -26 0 1 "25 pF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <260 240 260 260 "" 0 0 0 "">
  <260 120 260 180 "" 0 0 0 "">
  <220 120 260 120 "" 0 0 0 "">
  <260 120 370 120 "" 0 0 0 "">
  <440 60 440 120 "" 0 0 0 "">
  <440 60 480 60 "" 0 0 0 "">
  <540 60 560 60 "" 0 0 0 "">
  <560 60 560 80 "" 0 0 0 "">
  <560 210 580 210 "" 0 0 0 "">
  <580 210 580 230 "" 0 0 0 "">
  <440 210 500 210 "" 0 0 0 "">
  <440 200 440 210 "" 0 0 0 "">
  <370 120 370 140 "" 0 0 0 "">
  <370 140 380 140 "" 0 0 0 "">
  <130 230 130 260 "" 0 0 0 "">
  <130 120 160 120 "" 0 0 0 "">
  <130 120 130 170 "" 0 0 0 "">
  <500 160 800 160 "" 0 0 0 "">
  <800 160 800 180 "Vdr" 860 170 20 "">
  <370 180 380 180 "" 0 0 0 "">
  <370 500 370 520 "" 0 0 0 "">
  <800 420 800 440 "" 0 0 0 "">
  <800 340 800 360 "Vout" 720 370 13 "">
  <370 420 370 440 "" 0 0 0 "">
  <760 340 800 340 "" 0 0 0 "">
  <660 340 700 340 "" 0 0 0 "">
  <370 180 370 340 "" 0 0 0 "">
  <370 340 370 360 "" 0 0 0 "">
  <370 340 600 340 "" 0 0 0 "">
  <800 240 800 260 "" 0 0 0 "">
  <800 320 800 340 "" 0 0 0 "">
  <800 160 910 160 "" 0 0 0 "">
  <910 160 910 220 "" 0 0 0 "">
  <800 340 910 340 "" 0 0 0 "">
  <910 280 910 340 "" 0 0 0 "">
  <260 120 260 120 "Vin" 290 90 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
