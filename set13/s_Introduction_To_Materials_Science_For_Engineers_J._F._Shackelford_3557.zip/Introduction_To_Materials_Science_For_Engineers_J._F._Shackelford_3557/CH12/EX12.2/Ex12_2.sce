errcatch(-1,"stop");mode(2);//Example12.2//
Na=22.99;//amu //atomic mass of sodium
O=16.00;//amu //atomic mass of Oxygen
a=2;//Number of atoms
Na2O=c*Na+O
mprintf("Na2O = %f amu",Na2O)
d=3;//Number of atoms
C=12.00;//amu //atomic mass of Carbon
Na2CO3=c*Na+C+d*O
mprintf("\nNa2CO3 = %f amu",Na2CO3)
Ca=40.08;//amu //atomic mass of calcium
CaO=Ca+O
mprintf("\nCaO = %f amu",CaO)
CaCO3=Ca+C+d*O
mprintf("\nCaCO3 = %f amu",CaCO3)
a1=150;//Kg //kilogram
Na2Co=a1*(Na2CO3/Na2O)
mprintf("\nNa2Co = %i kg",Na2Co)
b=100;//kg //kilogram
CaCo=b*(CaCO3/CaO)
mprintf("\nCaCo = %i kg",CaCo)
mprintf("\nSio2 required = 750Kg")
SiO2=750;//kg //Kiligram
wt1=(Na2Co/(Na2Co+CaCo+SiO2))*100
mprintf("\nwt1 = %f wt percent Na2CO3",wt1)
wt2=(CaCo/(Na2Co+CaCo+SiO2))*100
mprintf("\nwt2 = %f wt percent CaCO3",wt2)
wt3=SiO2/(Na2Co+CaCo+SiO2)*100
mprintf("\nwt3 = %f wt percent SiO2",wt3)


exit();
