errcatch(-1,"stop");mode(2);
//initialisation
p1=6//atm
p2=2//atm
ph=89//kg/m^3
v=30/1000//ml
t1=10//c
t3=31.5//c
T1=273+t1
t2=150//c
w1=0.210//kg
//calculations
m=(p1-p2)*273*ph*v/(T1*1000)
t4=(t1+t3)/2
h=m*(t2-t4)
H=w1*1000*4.18*(t3-t1)
c=H/h
//results
printf(' specific heat= % 1f j/kg*k',c)

exit();
