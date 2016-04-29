errcatch(-1,"stop");mode(2);
//initialisations
c=0.58
m=4//gm
ms=5//gm
t=78//c
t1=80//c
x1=10//cm
x2=8.5//cm
c1=0.05
c2=0.048
t2=100//c
t3=27//c
//CALCULATIONS
Hal=m*c*t
m1=Hal/t1
m2=m1*x1/x2
Hp=m2*80
H1=ms*(t2-t3)*c1
H2=ms*c2*t3
L=(Hp-H1-H2)/ms
//results
printf(' latent heat of fusion= % 1f cal/gm',L)

exit();
