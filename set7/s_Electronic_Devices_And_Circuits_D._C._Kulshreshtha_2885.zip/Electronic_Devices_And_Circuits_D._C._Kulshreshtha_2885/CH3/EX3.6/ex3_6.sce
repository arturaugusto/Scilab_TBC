mode(2);errcatch(-1,"stop");driver("GIF");//Find current through resistance in given figure
clear;
clc;
//soltion

//From fig
Vaa=20;//V//supply
Vt=0.7;//V//threshold voltage of diode
rf=5;//ohm //forward resistance
R=90;//ohm//given resistor

//Diode D1 and D4 are forward bias and D2 and D3 are reverse biased

Vnet=Vaa-Vt-Vt;
Rt=R+rf+rf;
I=Vnet/Rt;
printf("Current through 90 ohm resistor is %.0f mA",I*1000);

xinit('/home/fossee/Downloads/tbc_graphs/Electronic_Devices_And_Circuits_D._C._Kulshreshtha_2885/ex3_6');xend();exit();
