errcatch(-1,"stop");mode(2);//Ex:1.18
;
;

p=1.724*10^-8;//in ohm-meter
l=20;//in meters
a=1*10^-6;//in sq. meter
i=5;//in amperes
r=(p*l)/a;
v=i*r;
printf("Voltage dropped = %f volts",v);
exit();
