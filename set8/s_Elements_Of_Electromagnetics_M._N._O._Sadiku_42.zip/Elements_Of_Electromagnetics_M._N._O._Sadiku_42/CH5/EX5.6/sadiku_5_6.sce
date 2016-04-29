errcatch(-1,"stop");mode(2);;
;
format('v',6);
e0=10^-9/(36*%pi);
er=2.55;
E=10^4;
d=1.5*10^-3;
D=e0*er*E*10^9;
disp(D,'D(in nC/m^2)=');
xe=1.55;
P=xe*e0*E*10^9;
disp(P,'P(in nC/m^2)=');
ps=D;
disp(ps,'ps(in nC/m^2)=');
pps=P;
disp(pps,'pps(in nC/m^2)=');
V=E*d;
disp(V,'V(in V)=');
exit();
