errcatch(-1,"stop");mode(2);// Exa 13.10
;
;

// Given data
C = 10;// in µF
C = C*10^-6;// in F
T_ON = 5;// in sec
R = T_ON/(1.1*C);// in ohm
disp(R,"The resistor value in  ohm is");

exit();
