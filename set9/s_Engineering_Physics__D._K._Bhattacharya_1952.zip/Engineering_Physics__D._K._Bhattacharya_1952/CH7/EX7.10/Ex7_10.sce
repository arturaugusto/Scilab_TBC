errcatch(-1,"stop");mode(2);// chapter 7 , Example 7.10 , pg 214
T1=300     //temperature    (in K)
e=1.6*10^-19    //charge of electron    (in C)
k=1.38*10^-23     //Boltzmann constant    (in J/K)
T2=330     //temperature   (in K)
E1=0.3     // E1=(Ec-Ef_300)    (in eV)
E2=(E1*T2)/T1    //E2=(Ec-Ef_330)    (in eV)
printf("At 330 K the Fermi energy kevel lies ")
disp(E2)
printf("(in eV) below conduction band")

exit();
