errcatch(-1,"stop");mode(2);

//Initialization of variables
T1=584.6 //R
g=32.2 //ft/s^2
k=1.4
R=53.3 //ft-lb/lb R
V1=600 //ft/s
T2=519.6 //R
pa=14.7 //psi
p1=50 //psia
//calculations
Nm1=V1/(sqrt(k*g*R*T1))
Nm22= ((1+ (k-1)/2 *Nm1^2)/(T2/T1) -1)*(2/(k-1))
Nm2=sqrt(Nm22)
pr=((1+ (k-1)/2 *Nm1^2)/(1+ (k-1)/2 *Nm2^2))^(k/(k-1))
p2=pr*(p1+pa)
rho1=(p1+pa)*144/(g*R*T1)
rho2=p2*144/(g*R*T2)
//results
printf("Density of air at station 1 = %.5f slug/ft^3",rho1)
printf("\n Density of air at station 2 = %.5f slug/ft^3",rho2)

exit();
