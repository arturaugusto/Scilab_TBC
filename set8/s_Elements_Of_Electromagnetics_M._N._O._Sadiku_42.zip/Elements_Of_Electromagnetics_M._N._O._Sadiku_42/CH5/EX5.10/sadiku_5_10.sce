errcatch(-1,"stop");mode(2);;
;
format('v',12);
disp(0,'Point(3,-2,2) is in conductor region hence E=D=');
ps=2;
Dn=ps;
D=[0 Dn 0];
e=(10^-9)/(36*%pi);
er=2;
E=D/(e*er);
disp(D,'D=');
disp(E,'E=');

exit();
