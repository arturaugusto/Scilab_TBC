errcatch(-1,"stop");mode(2);// Exa 1.2
;
;

// Given data
Rf= 200;// in kohm
R1= 2;// in kohm
vin=2.5;// in mV
vin=vin*10^-3;// in volt
G= -Rf/R1;
vo= G*vin;// in V
disp(vo,"The output voltage in volt is : ")

exit();
