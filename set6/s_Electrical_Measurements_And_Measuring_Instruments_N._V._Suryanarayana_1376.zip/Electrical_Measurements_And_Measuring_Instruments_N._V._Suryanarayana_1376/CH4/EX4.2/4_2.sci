errcatch(-1,"stop");mode(2);// 4.2
;
t=600;
C=2.5*10^-12;
E=500;
e=300;
a=log10(E/e)
R=(0.4343*t)/(C*a);
printf("Insulation resistance=%.2f mega-ohm",R)

exit();
