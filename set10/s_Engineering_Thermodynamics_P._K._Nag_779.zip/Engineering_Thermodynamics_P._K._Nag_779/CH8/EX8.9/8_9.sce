errcatch(-1,"stop");mode(2);T2 = 1063;
T1 = 1073;
m = 2; cp = 1.1;
I = m*cp*((T1-T2)-T0*(log(T1/T2)));
disp("kW",I,"The irrevesibility rate is")
// At lower temperature
T1_ = 353; T2_ = 343;
I_ = m*cp*((T1_-T2_)-T0*(log(T1_/T2_)));
disp("kW",I_,"The irrevesibility rate at lower temperature is")
exit();
