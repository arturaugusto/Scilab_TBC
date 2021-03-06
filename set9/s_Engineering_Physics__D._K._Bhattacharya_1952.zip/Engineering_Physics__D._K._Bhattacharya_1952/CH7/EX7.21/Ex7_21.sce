errcatch(-1,"stop");mode(2);// chapter 7 , Example 7.21 , pg 218
e=1.6*10^-19    // charge of electron   (in C)
I=5*10^-3     // current  (in mA)
V=1.35   // voltage   (in V)
Vh=20*10^-3    //Hall voltage   (in V)
B=0.45    //magnetic induction   (in T)
l=10^-2   //length   (in m)
b=5*10^-3    //breadth   (in m)
d=10^-3     //thickness    (in m)
R=V/I     //resistance    (in ohm)
A=b*d    //area   (in m^2)
rho= (R*A)/l    //resistivity    (in ohm*m)
E=Vh/d      //Hall electric field  (in V/m)
J=I/A     //current density   (in A/m^2)
Rh=E/(B*J)    //Hall coefficient 
Un=Rh/rho    //electron mobility   (in m^2/(V*S))
printf("Hall coefficient =")
printf("Rh=%.3f  m^3/C \n",Rh)
printf("Electron mobility=")
printf("Un=%.2f m^2/(V*S)",Un)

exit();
