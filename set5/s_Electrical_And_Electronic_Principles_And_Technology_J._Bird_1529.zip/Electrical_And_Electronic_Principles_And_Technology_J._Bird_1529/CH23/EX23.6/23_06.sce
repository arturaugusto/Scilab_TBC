errcatch(-1,"stop");mode(2);//Chapter 23, Problem 6
;
f=50;                                       //supply frequency
nr=1200/60;                                 //rotor speed
s=4;                                        //slip
ns=(nr/(1-(s/100)));                        //synchronous speed
printf("synchronous speed = %d rev/min",ns*60);

exit();
