errcatch(-1,"stop");mode(2);

//Initialization of variables
v1=0.1316
v2=0.2941
x1=0.5
x2=0.2
x3=0.8  
d1=14.87
d2=16.34
//calculations and results
vm=(1-x3)*v1+x3*v2
phi1=(1-x3)*v1/vm
phi2=(x3)*v2/vm
Hl3=vm*phi1*phi2*(d1-d2)^2 *10^3
disp("case 3")
printf("enthalpy = %.1f kJ/mol",Hl3)


exit();
