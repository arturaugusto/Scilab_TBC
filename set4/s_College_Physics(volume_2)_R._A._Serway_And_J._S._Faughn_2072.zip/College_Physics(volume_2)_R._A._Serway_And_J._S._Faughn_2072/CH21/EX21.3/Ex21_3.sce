errcatch(-1,"stop");mode(2);//Example 21.3
;
L=25*10^-3//In H
w=377
X_L=w*L//In ohm
disp(X_L,"Resistance in ohm=")
I_rms=150/X_L//In A
disp(I_rms,"Current in Amps=")

exit();
