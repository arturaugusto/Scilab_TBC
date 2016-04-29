errcatch(-1,"stop");mode(2);
//Example 2.6 // deflection sensitivity
;
;

//given data :
Va=2500; // in volts
ld=0.02; // in m
d=.005; // in m
L=.2; // in m
D=.03; // in m
Vd=(2*d*Va*D)/(L*ld);
S=(D/Vd)*1000;
disp(S,"deflection sensitivity,S(mm/V) = ")

exit();
