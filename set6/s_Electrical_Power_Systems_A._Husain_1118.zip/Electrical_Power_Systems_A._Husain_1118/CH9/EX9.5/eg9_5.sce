errcatch(-1,"stop");mode(2);;
//;

s=6000000;
v=6000;
pf=.8;
a=66/330;
r=7;
x=2;
rt=2;
xt=18;
totr=r+rt;
totx=x+xt;
vhv=v/a;
il=s/(sqrt(3)*vhv);
vph=vhv/sqrt(3);
vs=sqrt((il*totr+vph*pf)^2+(il*totx+vph*.6)^2);
vl=vs*sqrt(3);
vlv=vl*a;
printf("the volatge at the genertor busbars is:%0.3f V",vlv);

exit();
