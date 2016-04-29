errcatch(-1,"stop");mode(2);;
ma=18.2; // Massflow rater in m/s
Mi=0.6; // Mach number 
pa=0.55; // Ambient pressure in bar
Ta=255; // Ambient temperature in kelvin
rp=5; // Pressure ratio
T03=1273; // Maximum temperature in kelvin
eff_c=0.81; // Compressor efficiency
eff_T=0.85; // Turbine efficiency
eff_nozzle=0.915; // Nozzle efficiency
eff_ram=0.9; // Intake duct efficiency
CV=45870; // Low calorific value in kJ/kg
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
R=284.6; // Characteristic gas constant in J/kg K

ci=Mi*sqrt(r*R*Ta);
T_01=Ta+ci^2/(2*Cpa*10^3);
T01=T_01;
p_01=pa*(T01/Ta)^(r/(r-01));
p01=eff_ram*(p_01-pa)+pa;
p02=rp*p01;
T02=T01*(1+((rp^((r-1)/r))-1)/eff_c);
Wc=ma*Cpa*(T02-T01);
WT=Wc;
mf=ma/((CV/(Cpg*(T03-T02)))-1);
f1=mf/ma;
T04=T03-(WT/((ma+mf)*Cpg));
rp_T=(1/(1-((1-(T04/T03))/eff_T)))^(r/(r-1));
p03=p02;
p04=p03/rp_T;
p04_pc=1/(1-((rg-1)/((rg+1)*eff_nozzle)))^(rg/(rg-1));
pc=p04_pc/p04;
Tc=T04*(1/p04_pc)^((rg-1)/rg);
cj=sqrt (r*R*Tc);
row_c=pc*10^5/(R*Tc);
An=(ma+mf)/(row_c*cj);
F=(ma+mf)*cj-ma*ci+An*(pc-pa);
Fp=F*ci;

disp ("kW   (roundoff error)",Wc,"Work of compression = ");
disp ("kW   (roundoff error)",WT,"Power output of the turbine = ");
disp (f1,"Fuel-Air ratio = ");
disp ("N   (roundoff error)",F,"Thrust = ");
disp ("kW   (roundoff error)",Fp/1000,"Thrust power = ");

exit();
