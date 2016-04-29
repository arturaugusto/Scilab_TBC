errcatch(-1,"stop");mode(2);;
;
//Example 7.7
Vbe=0.7;
b=100;
Re=.5;
Rc=5;
Rl=10;
R1=40;
Cc=10;
R2=5.7;
Rs=.1;
Vt=0.026;
Icq=0.99;
gm=Icq/Vt;
printf('\ntransconductance=%.3f mA/V\n',gm)
r=b*Vt/Icq;
printf('\ndiffusion resistance=%.2f KOhm\n',r)
Ri=r+(1+b)*Re;
printf('\ninput resistance=%.2f KOhm\n',Ri)
x=Rc*Rl/(Rc+Rl);
y=R1*R2/(R1+R2);
t=y*Ri/(y+Ri);
Av=gm*r*x*(y/(y+Ri))*(1/(Rs+t));
printf('\nmaximum small signal voltage gain=%.2f\n',Av)
Ts=(Rs+t)*Cc;
printf('\ntime constant=%.3f ms\n',Ts)
Ts=46.6*0.001;//sec
Cl=15;
Tp=x*Cl;
printf('\ntime constant=%.3f ns\n',Tp)
fL=1/(2*%pi*Ts);
printf('\nlower corner frequency=%.2f Hz\n',fL)
Tp=50*10^-3;//micro sec
fH=1/(2*%pi*Tp);
printf('\nupper corner frequency=%.2f MHz\n',fH)
fL=3.4*10^-6;//MHz
fbw=fH-fL;
printf('\nbandwidth =%.2fMHz\n',fbw)

exit();
