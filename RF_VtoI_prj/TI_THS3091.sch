<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=THS3091.dat>
  <DataDisplay=THS3091.dpl>
  <OpenDisplay=1>
  <Script=THS3091.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <Line -30 -40 0 80 #00007f 2 1>
  <Line -30 40 80 -40 #00007f 2 1>
  <Line 50 0 -80 -40 #00007f 2 1>
  <Line -30 -20 -20 0 #00007f 2 1>
  <Line -30 20 -20 0 #00007f 2 1>
  <Line 10 20 0 20 #00007f 2 1>
  <Line 10 -20 0 -20 #00007f 2 1>
  <Line 50 0 20 0 #00007f 2 1>
  <.PortSym 10 40 3 90>
  <.PortSym 10 -40 4 270>
  <.PortSym 70 0 2 180>
  <Text -20 10 12 #000000 0 "-">
  <Text -20 -30 12 #000000 0 "+">
  <.PortSym -50 20 5 0>
  <.PortSym -50 -20 1 0>
  <Text 21 -43 12 #000000 90 "VCC">
  <Text 21 76 12 #000000 90 "VEE">
  <.ID 50 -56 SUB>
</Symbol>
<Components>
  <GND * 1 450 330 0 0 0 0>
  <Port P 1 360 160 -23 12 0 0 "1" 1 "analog" 0>
  <Port N 1 540 160 4 -50 0 2 "5" 1 "analog" 0>
  <Port O 1 360 220 -23 12 0 0 "2" 1 "analog" 0>
  <Port VP 1 540 220 4 -50 0 2 "4" 1 "analog" 0>
  <Port VN 1 360 280 -23 12 0 0 "3" 1 "analog" 0>
  <SPICE X1 1 450 220 -26 -119 0 0 "TIamp.sp" 1 "_netP,_netN,_netO,_netVP,_netVN" 0 "no" 0 "none" 0>
</Components>
<Wires>
  <450 310 450 330 "" 0 0 0 "">
  <360 160 420 160 "" 0 0 0 "">
  <480 160 540 160 "" 0 0 0 "">
  <480 220 540 220 "" 0 0 0 "">
  <360 220 420 220 "" 0 0 0 "">
  <360 280 420 280 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
