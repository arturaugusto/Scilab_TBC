mode(2);errcatch(-1,"stop");driver("GIF");// Exa 6.7
format('v',6)
clc;
clear;

// Given data
V_CC= 12;// in V
R_C= 3;// in kΩ
V_CE= 0:0.1:12;// in V
I_C= (V_CC-V_CE)/R_C;// in mA
plot(V_CE,I_C);
xlabel("V_CE in volts")
ylabel("I_C in mA")
title("DC load line")
disp("DC load line shown in figure.")

xinit('/home/fossee/Downloads/tbc_graphs/Electonic_Devices_S._Sharma_2342/EX6_7');xend();exit();
