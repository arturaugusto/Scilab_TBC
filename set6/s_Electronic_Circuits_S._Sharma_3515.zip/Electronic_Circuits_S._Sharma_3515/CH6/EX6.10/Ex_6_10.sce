errcatch(-1,"stop");mode(2);// Exa 6.10
format('v',8);
;
;

// Given data
R1= 220;// in kohm
R1=R1*10^3;// in ohm
R2=R1;// in ohm
C1= 250;// in pF
C1= C1*10^-12;// in F
C2=C1;// in F
f= 1/(2*%pi*R1*C1);
disp(f,"Frequency of oscilltions in Hz is : ")

exit();
