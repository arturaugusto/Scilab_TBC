mode(2);errcatch(-1,"stop");driver("GIF");//Chapter 2, Exmaple 7, page 69
//Electric feild induced at x
clc
clear
e0 = 8.85418*10**-12 //Epselon nought
q = 1 // C/m
C = (q/(2*%pi*e0))
//Based on figure 2.33
E = C-(C*(1/3+1/7))+(C*(1+1/5+1/9))+(C*(1/5+1/9))-(C*(1/3+1/7))
printf("Electric Feild = %e V/m \n",E)

//Answers might vary due to round off error

xinit('/home/fossee/Downloads/tbc_graphs/High_Voltage_Engineering_Theory_And_Practice_M._Khalifa_3369/Ex2_7');xend();exit();
