errcatch(-1,"stop");mode(2);; ; 

Beta = 8000;
Re = 390;
ri = 5*(10^(3));

Av = (Re+(Beta*Re))/(ri+(Re+Beta*Re));
disp(Av,"ac voltage gain(Av) :");


exit();
