errcatch(-1,"stop");mode(2);//Ex11_13

vc = 9//collector voltage
ic = 3*10^-3//collector current
Pd = vc*ic//power dissipated at collector junction
disp("vc = "+string(vc)+"V")
disp("ic = "+string(ic)+"A")
disp("Pd = vc*ic = "+string(Pd)+"W")

exit();
