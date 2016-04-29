errcatch(-1,"stop");mode(2);//Example 4_6
;
;
//To calculate the lattice constant
M=55.85                           //units in a.m.u
density=7860                     //units in kg/m^3
n=2
N=6.02*10^26                   //units in kg/mol
a=(((n*M)/(density*N))^(1/3))*10^9
printf("lattice constant is %.3f angstrom",a)

exit();
