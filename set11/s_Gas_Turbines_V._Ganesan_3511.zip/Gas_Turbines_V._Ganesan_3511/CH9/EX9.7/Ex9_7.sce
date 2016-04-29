errcatch(-1,"stop");mode(2);;
rp=4; // Overall pressure ratio
m=3; // mass flow rate in kg/s
eff_pc=0.88; // Polytropic efficiency
Del_Tstage=25; // The stagnation temperature pressure rise in kelvin
c1=165; // Absolute velocity in m/s
alpha_1=20; // air angle from axial direction in degree
wf=0.83; // Workdone factor
D=18; // Mean diameter of the last stage rotor in cm
P01=1.01; // Ambient pressure in bar
T01=288; // Ambient temperature in kelvin
Cp=1005; // Specific heat in J/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

n=1/(1-(r-1)/(r*eff_pc));
T02=T01*(rp)^((n-1)/n); // Total pressure at stage 2
Del_Toverall= T02-T01; // Overall temperature difference
Ns=Del_Toverall/Del_Tstage; // Number of stages
eff_C=((rp^((r-1)/r)-1)/(rp^((r-1)/(r*eff_pc))-1));// Efficiency of compressor
rp1=(1+(eff_C*Del_Tstage/T01))^(r/(r-1)); // Pressure ratio acrocc first stage
Del_Tstage1=Del_Toverall/Ns; // Temperature rise across stage 1
T0ls=T02-Del_Tstage1; // Temperature at inlet to last stage
rpls=(1+(eff_C*Del_Tstage1/T0ls))^(r/(r-1)); // Pressure ratio acrocc last stage
// For symmetrical blade, R=0.5
beta_2=alpha_1; 
ca=c1*cosd (alpha_1); // Axial velocity
beta_1=atand(sqrt(((Cp*Del_Tstage1/(wf*ca))/ca)+(tand(beta_2))^2)); // blade angle
u=ca*(tand(beta_1)+tand(beta_2)); // mean velocity of blade
N=60*u/(3.14*D*10^-2*60); // Speed in rps
Po=rp/rpls; // Total pressure at inlet to the last stage
T0=T0ls; // Total temperature to the last stage
Tst=T0-c1^2/(2*Cp); // Static temperature
Pst=Po/(T0/Tst)^((r-1)/r); // Static pressure
row=(Pst*10^5)/(R*Tst); // Density
h=m/(ca*row*3.14*D*10^-2);// Length of last stage

disp (Ns,"Number of stages = ");
disp (rp1,"Pressure ratio across first stage = ");
disp ("   (roundoff error)",rpls,"Temperature at inlet to last stage = ");
disp ("degree   (roundoff error)",beta_1,"beta1=" );
disp ("rps   (roundoff error)",N,"Speed = ");
disp ("cm   (roundoff error)",h*100,"Length of last stage = ");

exit();
