errcatch(-1,"stop");mode(2);//Exa 2.15.2
;
;

// Given data
N_c = 2.8 * 10^19;// in cm^-3
del_E = 0.25;// fermi energy in eV
KT = 0.0259;
f_F = exp(-(del_E)/KT);
disp(f_F,"The probbaility in the condition band is occupied by an electron is ");
n_o = N_c * exp(-(del_E)/KT);// in cm^-3
disp(n_o,"The thermal equilibrium electron concentration in cm^-3 is");


exit();
