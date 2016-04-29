errcatch(-1,"stop");mode(2);//Example12.3//
Li=6.94;//amu //atomic mass of Lithium
O=16.00;//amu //atomic mass of Oxygen
a=2;//Number of atoms 
LiO2=a*Li+O
mprintf("LiO2 = %f amu",LiO2)
Al=26.98;//amu
b=3;//Number of atoms
Al2O3=a*Al+b*O
mprintf("\nAl2O3 = %f amu",Al2O3)
Si=28.09;//amu //atomic mass of Silicon
SiO2=Si+a*O
mprintf("\nSiO2 = %f amu",SiO2)
g=4;//given
wt1=(LiO2)/(LiO2+Al2O3+g*SiO2 )*100
mprintf("\nwt1 = %f percent",wt1)
wt2=Al2O3/(LiO2+Al2O3+g*SiO2 )*100
mprintf("\nwt2 = %f percent",wt2)
wt3=(g*SiO2)/(LiO2+Al2O3+g*SiO2 )*100
mprintf("\nwt3 = %f perecent ",wt3)

exit();
