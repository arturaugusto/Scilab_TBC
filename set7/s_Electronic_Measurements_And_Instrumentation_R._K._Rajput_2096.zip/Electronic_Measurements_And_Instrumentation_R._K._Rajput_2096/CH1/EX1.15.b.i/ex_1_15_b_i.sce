errcatch(-1,"stop");mode(2);//Example 1.15.b.i// loading error
;
;

//given data :
Rv=125; // internal resistance in kilo-ohm
V=180; // in volts
I=6; // im mili-ampere
Rt=V/I;
Ra=Rt;
Rat=(Rt*Rv)/(Rv-Rt);
Le=((Rat-Ra)/Rat)*100;
disp(Le,"percentage loading error,Le(%) = ")

exit();
