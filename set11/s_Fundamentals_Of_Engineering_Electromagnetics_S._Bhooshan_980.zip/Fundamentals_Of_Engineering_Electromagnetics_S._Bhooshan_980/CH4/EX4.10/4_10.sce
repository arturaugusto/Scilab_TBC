errcatch(-1,"stop");mode(2);;
;
format('v',11);
E=1;
q1=0.001;
q2=1;
m1=0.001;
m2=1;
F1=q1*E;
F2=q2*E;
a1=F1/m1;
a2=F2/m2;
disp(F2,"F2(in newton)=",F1,"F1(in newton)=");
disp(a2,"a2(in m/s^2)=",a1,"a1(in m/s^2)=");

exit();
