errcatch(-1,"stop");mode(2);//Exa 12.1
;
;

format('v',6);
//Given data :
f=50;//Supply frequency in Hz
C=4.5*10^-6;//in Farad
Omega_L=1/3/2/%pi/f/C;//in ohm
disp(Omega_L,"Reactance of coil (ohm) :");

exit();
