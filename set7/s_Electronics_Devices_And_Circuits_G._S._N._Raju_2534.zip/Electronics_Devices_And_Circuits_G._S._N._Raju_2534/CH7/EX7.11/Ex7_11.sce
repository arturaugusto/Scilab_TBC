errcatch(-1,"stop");mode(2);//Ex7_11

TA = 30
TJ = 48
PD = 4
TR = (TJ - TA)/PD
disp("TA = "+string(TA)+"degreeC")//ambient temperature at which transistor is operated
disp("TJ = "+string(TJ)+"degreeC")//junction temperature
disp("PD = "+string(PD)+"W")//dissipated power
disp("TR = (TJ - TA)/PD = "+string(TR)+"degreeC/W")//termal resistance

exit();
