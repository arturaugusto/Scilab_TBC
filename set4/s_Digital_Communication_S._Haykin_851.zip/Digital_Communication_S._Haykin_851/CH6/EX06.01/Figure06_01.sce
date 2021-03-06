mode(2);errcatch(-1,"stop");driver("GIF");//clear//
//Caption:Nonreturn-to-zero bipolar format
//Figure 6.1(c):Discrete PAM Signals Generation
// [3].BiPolar NRZ
//page 235
clear;

clc;
x = [0 1 1 0 0 1 0 0 1 1];
binary_negative = [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1];
binary_zero = [0 0 0 0 0 0 0 0 0 0];
binary_positive = [1 1 1 1 1 1 1 1 1 1];
L = length(x);
L1 = length(binary_negative);
total_duration = L*L1;
//plotting
a =gca();
a.data_bounds =[0 -2;L*L1 2];
for i =1:L
  if(x(i)==0)
    plot([i*L-L+1:i*L],binary_zero);
    poly1= a.children(1).children(1);
    poly1.thickness =3;
  elseif((x(i)==1)&(x(i-1)~=1))
    plot([i*L-L+1:i*L],binary_positive);
    poly1= a.children(1).children(1);
    poly1.thickness =3;
  else
    plot([i*L-L+1:i*L],binary_negative);
    poly1= a.children(1).children(1);
    poly1.thickness =3;
  end
end
xgrid(1)
title('BiPolar NRZ')

xinit('/home/fossee/Downloads/tbc_graphs/Digital_Communication_S._Haykin_851/Figure06_01');xend();exit();
