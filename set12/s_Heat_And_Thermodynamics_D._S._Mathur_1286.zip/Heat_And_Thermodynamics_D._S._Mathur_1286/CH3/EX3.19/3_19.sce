errcatch(-1,"stop");mode(2);
//initialisation
p16=80//cm
v16=432//cc
t=273//k
po=76//cm
t=16//c
t16=273+t//k
T=273//k
poxy=0.0014
cfe=0.09
t1=15//c
t2=184//c
m1=2//gm
//calculations
v0=(p16*v16*T)/(po*t16)
m=poxy*v0
h=m1*cfe*(t1+t2)
l=h/m
//results
printf(' latent heat= % 1f cal',l)

exit();
