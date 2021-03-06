errcatch(-1,"stop");mode(2);// Exa 8.11
;
;

// Given data
Cp= 1;// in kJ/kg
H= 2.7*10^3;// total heat of vaport in flue gas in kJ/kg
CoalCalorific= 32.82*10^3;// in kJ/kg
T1= 310;// final gas flue temp. in °C
T2= 25;// boiler house temp. in °C
mC= 0.84;//mass of carbon in kg
mH2= 0.05;//mass of H2 in kg
O2_mass= 2.66*mC + 9*mH2;// in kg
Air_mass= O2_mass/0.23;// in kg
Air_mass= 1.5*Air_mass;// in kg  (as 50% excess air is supplied)
disp(Air_mass,"Actual mass of air required per kg of fuel for complete combustion in kg is : ")
// Analysis of dry flue gas by weight
CO2= 3.08;// in kg
N2= 13.24;// in kg
O2= 1.32;// in kg
total_mass= CO2+N2+O2;// in kg
CO2_per_by_mass= CO2/total_mass*100;// in %
O2_per_by_mass= O2/total_mass*100;// in %
N2_per_by_mass= N2/total_mass*100;// in %
disp(CO2_per_by_mass,"Percentage of CO2 by mass is : ")
disp(O2_per_by_mass,"Percentage of O2 by mass is : ")
disp(N2_per_by_mass,"Percentage of N2 by mass is : ")
M_wt_CO2= 44;
CO2_Per_M_com_M_wt= CO2_per_by_mass/M_wt_CO2;// % Mass composition molecular weight
M_wt_O2= 32;
O2_Per_M_com_M_wt= O2_per_by_mass/M_wt_O2;// % Mass composition molecular weight
M_wt_N2= 28;
N2_Per_M_com_M_wt= N2_per_by_mass/M_wt_N2;// % Mass composition molecular weight
total= CO2_Per_M_com_M_wt + O2_Per_M_com_M_wt + N2_Per_M_com_M_wt;
CO2_per_by_vol= CO2_Per_M_com_M_wt/total*100;// in %
O2_per_by_vol= O2_Per_M_com_M_wt/total*100;// in %
N2_per_by_vol= N2_Per_M_com_M_wt/total*100;// in %
disp(CO2_per_by_vol,"Percentage of CO2 by volume is : ")
disp(O2_per_by_vol,"Percentage of O2 by volume is : ")
disp(N2_per_by_vol,"Percentage of N2 by volume is : ")
H_w_v= 9*mH2*H;//heat carried away by water vapour in kJ
H_dry_flue= total_mass*Cp*(T1-T2);// in kJ
H_total= H_w_v+H_dry_flue;// in kJ
H_available= CoalCalorific-H_total;// in kJ
disp(H_available,"Heat available for steam generation in kJ is : ")

exit();
