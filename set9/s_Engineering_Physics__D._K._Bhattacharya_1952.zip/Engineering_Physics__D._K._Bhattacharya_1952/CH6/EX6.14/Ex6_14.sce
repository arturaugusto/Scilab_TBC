errcatch(-1,"stop");mode(2);// chapter 6 , Example6 14 , pg 178
T=300    //temperature   (in K)
l=2    //length   (in m)
R=0.02    //Resistance     (in ohm)
u=4.3*10^-3    //   (in m^2/(V*s))
I=15  //current   (in A)
V=I*R    //voltage drop across wire   (in V )
E=V/l     //electric field across wire  (in V/m)
Vd=u*E    //drift velocity   (in m/s)
printf("Drift velocity (in m/s)")
disp(Vd)

exit();
