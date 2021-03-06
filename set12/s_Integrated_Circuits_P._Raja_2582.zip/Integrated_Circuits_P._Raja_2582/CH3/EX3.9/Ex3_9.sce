errcatch(-1,"stop");mode(2);//Ex 3.9
;;
format('v',6);
fo=1.2;//kHz
alfa=1.414;//for butterworth filter
Ap=3-alfa;//band pass gain
RfBYRi=(Ap-1);//op-amp gain
C=0.03;//micro F(have to choose C, 0.01<C<1)
R=1/(2*%pi*fo*10^3*C*10^-6)/1000;//kohm
//For offset minimization 2*R=Rf||Ri
Rf=2*R*RfBYRi+2*R;//kohm
Ri=Rf/RfBYRi;//kohm
disp("Design values are :");
disp(C,"Capacitance(micro F)");
disp(R,"Resistance R(kohm)");
disp(Rf,"Resistance Rf(kohm)");
disp(Ri,"Resistance Ri(kohm)");

exit();
