errcatch(-1,"stop");mode(2);//Example5.30 // To find Slew rate of an op-amp
;
;

Iq = 21 ; // uA  // bias current
Cm = 31  ; // pF  // internal frequency compensated capacitor
Slewrate = (Iq/Cm);
disp('the Slew rate of an op-amp is = '+string(Slewrate)+' V/u sec');


exit();
