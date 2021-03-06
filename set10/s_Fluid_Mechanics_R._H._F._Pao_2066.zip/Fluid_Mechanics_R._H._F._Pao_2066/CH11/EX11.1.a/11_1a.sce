errcatch(-1,"stop");mode(2);

//Initialization of variables
rho=1.94 //slugs/ft^3
mu=2.34e-5 //lb-sec/ft^2
y=5 //ft
T=25 //ft
d=10 //ft
slope=3/2 
g=32.2 //ft/s^2
S=0.001
//calculations
A=y*d+ 2*0.5*y*(slope*y)
WP=d+ 2*sqrt(3^2 +2^2) /2 *y
R=A/WP
e=0.01 //ft
rr=2*R/e
f=0.019
C=sqrt(8*g/f)
V=C*sqrt(R*S)
Q=V*A
//results
printf("Discharge using Darcy equation = %.1f ft^3/s",Q)
disp("The answer is a bit different due to rounding off error in textbook")

exit();
