errcatch(-1,"stop");mode(2);;
T03=1200; // Maximum turbine inblet temperature in kelvin
rc=4.25; // Pressure ratio across compressor
ma=25; // Mass flow rate in kg/s
eff_C=0.87; // Isentropic efficiency of the compressor
eff_T=0.915; // Isentropic efficiency of turbine
eff_n=0.965; // Propelling nozzle efficiency
eff_Tr=0.985; // Transmission efficiency
del_pcomb=0.21; // Combustion chamber pressure loss in bar
Cpa=1.005; // Specific heat at constant pressure of air in kJ/kg K
ra=1.4; // Specific heat ratio of air
Cpg=1.147; // Specific heat of fuel in kJ/kg K
rg=1.33; // Specific heat of fuel
T01=293; // Ambient temperature in kelvin
p01=1; // Ambient pressure in bar
A_F=50; // Air Fuel ratio
p02=rc/p01;

T02=(T01*((rc)^((ra-1)/ra)-1)/eff_C)+T01; // Actual temperature at state 2
T04=T03-((Cpa*(T02-T01))/(eff_Tr*Cpg)); // Temperature at state 4
rt=(1/(1-((T03-T04)/(eff_T*T03))))^(1/((rg-1)/rg)); // Pressure ratio across turbine
p04=(p02-del_pcomb)/rt; // Pressure at 4
p5=p01;
T_5=T04/(p04/p5)^((rg-1)/rg); // Temperature at 5
T5=T04-eff_n*(T04-T_5); 
c5=sqrt (2*Cpg*10^3*(T04-T5)); 
F=ma*c5; // Total design thrust
p04_pc=1/(1-((1/eff_n)*((rg-1)/(rg+1))))^(rg/(rg-1))
pc=p04*(1/p04_pc); 
Tc=T04*(1/p04_pc)^((rg-1)/rg);
R=Cpg*10^3*(rg-1)/rg;
cj=sqrt (rg*R*Tc);
row_c=(pc*10^5)/(R*Tc);
A=ma/(row_c*cj); // Area of the propelling nozzle
d=sqrt (4*A/3.14); // Diameter of the nozzle
pa=p01;
Fp=(pc-pa)*10^5*A;// Pressure thrust
Fm=ma*cj;
Ft=Fp+Fm; // Total thrust
sfc=(ma/A_F)*3600/Ft;

disp ("N   (roundoff error)",F," Total design thrust/s = ");
disp ("N   (roundoff error)",Ft,"Total thrust /s = ");
disp ("kg/ N thrust h",sfc, "Specific fuel consumption = ");

exit();
