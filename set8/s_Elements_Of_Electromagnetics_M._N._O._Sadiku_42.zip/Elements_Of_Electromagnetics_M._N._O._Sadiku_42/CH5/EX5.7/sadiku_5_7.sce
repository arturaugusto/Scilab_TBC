errcatch(-1,"stop");mode(2);;
;
format('v',6);
Q=2*10^-12;
e0=(10^-9)/(36*%pi);
er=5.7;
xr=er-1;
r=10^-1;
E=Q*10^12/(4*%pi*e0*er*r^2);
P=xr*e0*E;
pps=P*1;
disp(pps,'(a) pps(in pC/m^2)=');
Q1=-4*10^-12;
F=(Q*Q1)*10^12/(4*%pi*e0*er*r^2);
disp(F,'(b) F(in pN)(in the direction of ar)=');
exit();
