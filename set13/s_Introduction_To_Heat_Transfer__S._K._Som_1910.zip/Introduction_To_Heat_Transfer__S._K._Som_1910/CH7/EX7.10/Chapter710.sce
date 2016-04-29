errcatch(-1,"stop");mode(2);// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
;
;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 10")
//Air at one atmospheric pressure and temprature(Tbi=75°C) enters a tube of internal diameter(D)=4.0mm with average velocity(U)=2m/s
Tbi=75;
D=4*10^-3;
U=2;
//The heated tube length is L=0.04m and a constant heat flux is imposed by the tube surface on the air over the entire length.
L=0.04;
//An exit bulk mean temprature(Tbo)=125°C is required.
Tbo=125;
//The properties of air 100°C are density(rho=0.95kg/m^3),Prandtl number(Pr=0.70),conductivity(k=0.03W/(m*K)),viscosity(mu=2.18*10^-5kg/(m*s)),specific heat(cp=1.01kJ/(kg/K))
rho=0.95;
Pr=0.70;
k=0.03;
mu=2.18*10^-5;
cp=1.01*10^3;
//Re is the reynolds number 
disp("Reynold number is")
Re=rho*U*D/mu
//Leh is the hydrodynamic entrance length
disp("Therefore the flow is laminar.The hydrodynamic entrance length in m is")
Leh=0.05*Re*D
//Let is thermal entrance length
disp("The thermal entrance length in m is")
Let=0.05*Re*Pr*D
disp("The thermal entrance length is greater than the tube length Therefore the flow is hydrodynamically developed but not thermally developed" )
//We calculate the inverse graetz number at x=L=0.04m
x=0.04;
//Gr_1 is inverse of graetz number
disp("The inverse of graetz number Gr_1 is")
Gr_1=(x/D)*(1/(Re*Pr))
//For constant surface heat flux nusselt number is Nu=4.7 and Graetz number is Gr=4.1*10^-2
Nu=4.7;
Gr=4.1*10^-2;
//hL is the local heat transfer coefficient
disp("Therefore the local heat transfer coefficient in W/(m^2*K) is")
hL=Nu*(k/D)
//from an energy balance qw*pi*D*L=mdot*cp*(Tbo-Tbi)
//mdot is the mass flow rate
disp("The mass flow rate of air in kg/s is")
mdot=rho*(%pi/4)*D^2*U
//qw is the surface heat flux
disp("Therefore surafce heat flux qw in W/m^2 is")
qw=[mdot*cp*(Tbo-Tbi)]/(%pi*D*L)
//Let Twe be the surface temprature at the exit plane.Then we can write hL*(Twe-Tbo)=qw
disp("The tube surface temprature at the exit plane in °C is ")
Twe=Tbo+(qw/hL)












exit();
