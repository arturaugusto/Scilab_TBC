errcatch(-1,"stop");mode(2);//ex14.1
R1=25*10^3;
R2=R1;
A_cl=500;    //d loop voltage gain
R_G=2*R1/(A_cl-1);
disp(R_G,'value of the external gain setting resistor in ohms')
exit();
