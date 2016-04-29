errcatch(-1,"stop");mode(2);;
Wplant=1850; // Plant work output in KW
p01=1; // Ambient pressure in bar
T01=27+273; // Ambient temperature in kelvin
T03=720+273; // Maximum cycle temperature in kelvin
rp=2.5; // Pressure ratio
eff_T=0.80; // Turbine and compressor efficiency
eff_reg=0.75; // Regenerator effectiveness
eff_comb=0.98; // Combustion efficiency 
CV=43.1; // Calorific value in MJ/kg
del_p=0.03; // Pressure drop
p02=6.25; // Pressure in bar
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air

T_07=T01*rp^((r-1)/r);
T07=T01+(T_07-T01)/eff_T;
T02=T07;
WLPC=Cpa*(T07-T01); // Work of low pressure compressor
WHPT=WLPC;
T09=T03-WHPT/Cpg;
T_09=T03-(T03-T09)/eff_T;
p03=(1-del_p)^2*p02
p09=p03/(T03/T_09)^(rg/(rg-1));
p10=p09*(1-del_p);
T10=T03;
p04=p01+del_p;
T_04=T10*(p04/p10)^((rg-1)/rg);
T04=T10-eff_T*(T10-T_04);
Wlpt=Cpg*(T10-T04);
WN=Wlpt-WHPT;
ma=Wplant/WN;
T05=T02+eff_reg*(T04-T02);
Q=Cpg*(T03-T05+T10-T09);
eff_th=WN/Q;
WHPT_1=ma*WHPT;
Wlpt_1=ma*Wlpt;
mf=ma*Q*3600/(eff_comb*CV*10^3);
sfc=mf/Wplant;

disp ("K",T_07,"T_07 = ");
disp ("K",T07,"T07 = ");
disp ("K",T09,"T09 = ");
disp ("K",T_09,"T_09 = ");
disp ("K",T_04,"T_04 = ");
disp ("K",T04,"T04 = ");
disp ("K",T05,"T05 = ");
disp ("bar",p03,"P03 = ");
disp ("bar",p09,"P09 = ");
disp ("bar",p10,"P10 = ");
disp ("kg/s",ma,"Mass flow rate = ");
disp ("%",eff_th*100,"The overall efficiency = ");
disp ("kg of fuel/kW h",sfc,"Specific fuel consumption = ");

exit();
