errcatch(-1,"stop");mode(2);
//initialisation of variables
a=1.025//in^2
h=18//in
h1=24//in
x=8.2//percent
v=15//in
v2=6.9//ft^3
p=0.74//lb/in^2
p1=50//lb/in^2
p2=83//lb/in^2
P3=48.0//lb/in
P1=29.8//lb/in^2
P2=14.6//lb/in^2
h2=29.8//in
D=(%pi/4)*(3/2)^2*2//ft^3
v1=23400//ft.lb
W=a*v1//ft.lb
V=0.082*D//ft^3
Q=1.530//ft^3
//CALCULATIONS
I=V+Q//ft^3
P=P3+P2//lb/in^2
V1=p*v2//ft^3
W1=I/V1//lb
S=p2+P2///l/in^2
H=659.06//C.H.U/lb
T=W/(H*W1*1400)*100//percent
//RESULTS
printf('The thermal efficiency of the engine=% f percent',T)

exit();
