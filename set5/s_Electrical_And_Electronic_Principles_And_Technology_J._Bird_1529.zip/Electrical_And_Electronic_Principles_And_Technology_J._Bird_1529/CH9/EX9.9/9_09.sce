errcatch(-1,"stop");mode(2);//Chapter 9, Problem 9
;
L=12;                           //inductance
dI=4;                           //change in current
dt=1;                           //change in time
E=-L*(dI/dt);                   //calculating induced emf
printf("Induced emf E = %d V",E);

exit();
