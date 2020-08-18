<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,1035,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=Antenna.dat>
  <DataDisplay=Antenna.dpl>
  <OpenDisplay=1>
  <Script=Antenna.m>
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
  <GND * 1 130 340 0 0 0 0>
  <Vac V3 1 130 280 18 -26 0 1 "7.6 V" 1 "1 MHz" 0 "0" 0 "0" 0>
  <.AC AC1 1 130 400 0 39 0 0 "lin" 1 "1 MHz" 1 "40 MHz" 1 "300" 1 "no" 0>
  <Eqn Eqn1 1 160 550 -30 16 0 0 "I_meas=Vout/R4.R" 1 "yes" 0>
  <.DC DC1 1 130 110 0 39 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn4 1 760 70 -30 16 0 0 "I_coil=Pr1.i" 1 "yes" 0>
  <Eqn Eqn6 1 510 530 -30 16 0 0 "Vout=Pr2.v" 1 "yes" 0>
  <Eqn Eqn7 1 630 530 -30 16 0 0 "Gain=dB(Vout/Vin.v)" 1 "yes" 0>
  <L L1 1 800 250 10 -26 0 1 "270 nH" 1 "" 0>
  <R R5 1 800 330 15 -26 0 1 "0.1 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 800 560 0 0 0 0>
  <VProbe Pr2 1 920 510 -16 28 0 3>
  <IProbe Pr1 1 800 410 -42 -26 0 3>
  <R R4 1 800 510 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C2 1 910 330 17 -26 0 1 "9 pF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <130 310 130 340 "" 0 0 0 "">
  <130 200 130 250 "" 0 0 0 "">
  <910 200 910 300 "" 0 0 0 "">
  <800 200 910 200 "" 0 0 0 "">
  <800 200 800 220 "" 0 0 0 "">
  <800 280 800 300 "" 0 0 0 "">
  <910 360 910 460 "" 0 0 0 "">
  <800 460 910 460 "" 0 0 0 "">
  <900 520 900 550 "" 0 0 0 "">
  <800 540 800 550 "" 0 0 0 "">
  <800 550 800 560 "" 0 0 0 "">
  <800 550 900 550 "" 0 0 0 "">
  <900 470 900 500 "" 0 0 0 "">
  <800 460 800 470 "" 0 0 0 "">
  <800 470 800 480 "" 0 0 0 "">
  <800 470 900 470 "" 0 0 0 "">
  <800 360 800 380 "" 0 0 0 "">
  <800 440 800 460 "" 0 0 0 "">
  <130 200 800 200 "Vin" 290 170 130 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
