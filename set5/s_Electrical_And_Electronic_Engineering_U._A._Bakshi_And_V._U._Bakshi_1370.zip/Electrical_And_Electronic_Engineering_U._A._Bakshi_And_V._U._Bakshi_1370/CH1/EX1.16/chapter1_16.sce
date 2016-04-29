errcatch(-1,"stop");mode(2);//example1.16

disp("Case 1: R=10ohm")
disp("V=(V_m)sin(wt)")
v=150*sqrt(2)
format(7)
disp("(V_m)[in V]=sqrt(2)*V_rms=")
i=212.13/10
disp(i,"(I_m)[in A]=(V_m)/R=")
disp("In pure resistive circuit, currents is in phase with the voltage.")
disp("Therefore,  psi=phase difference= 0 degree")
disp("Therefore,  i=(I_m)sin(wt)=(I_m)sin(2*pi*f*t)")
disp("Therefore,  i(in A) = 21.213sin(100*pi*t)")
disp("The phasor diagram is shown in the fig. 1.85(a)")
disp("Case 2:  L=0.2 ohm")
x=2*%pi*50*0.2
format(6)
disp(x,"Inductive reactance, (X_L)[in ohm]=wL=(2*pi*f*L)=")
i=212/13/62.83
format(5)
disp("Therefore,  (I_m)[in A]=(V_m)/(X_L)=")
disp("In pure inductive circuit, current lags voltage by 90 degree.")
disp("Therefore,  psi=phase difference = -90 degree =(pi/2)rad")
disp("Therefore,  i=(I_m)sin(wt-psi)  i.e.  i(in A)=3.37sin((100*pi*t)-(pi/2))")
disp("The phasor dig in shown in the fig 1.85(b).")
disp("Case 3:  C=50 micro-F")
c=1/(2*%pi*50*50*10^-6)
format(6)
disp(c,"Capacitive reactance,  X_c(in ohm)=1/wC=1/(2*pi*f*C)=")
i=212.13/63.66
format(5)
disp(i,"I_m(in A)=(V_m)/(X_c)=")
disp("In pure capacitive circuit, current leads voltage by 90 degree.")
disp("Therefore  psi=phase difference =90 degree= (pi/2)radian")
disp("Therefore,  i=(I_m)sin(wt+psi)")
disp("Therefore,  i(in A)=3.33sin((100*pi*t)+(pi/2))")
disp("The phasor dig is as shown in the fig 1.85(c).")
disp("All the phasor dig represent r.m.s values of voltage and current")

exit();
