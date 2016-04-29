mode(2);errcatch(-1,"stop");driver("GIF");//Example 9.4.3:plot the varaition of average load voltage with firing angle
clc;
clear;

alpha=[0;30;60;90];//firing angle in degree
for i=1:4
    ea(i)=(2/%pi)*cosd(alpha(i));//V
end
plot2d(alpha,ea);//
ylabel("Average load voltage(in terms of Vm)")
xlabel("Firing angle (alpha)")
xtitle("Variation of Ea Vs alpha for SAC")

xinit('/home/fossee/Downloads/tbc_graphs/Introduction_To_Electric_Drives_J._S._Katre_2207/ex_9_4_3');xend();exit();
