errcatch(-1,"stop");mode(2);// sum 3-7
;
;
a=23*10^-6;
E=70*10^3;
l=750;
sig=35;
delT=((sig*l/E)+0.8)/(l*a);

  // printing data in scilab o/p window
  printf("delT is %f degC     ",delT);
exit();
