errcatch(-1,"stop");mode(2);;
;
format('e',11);
f=10*10^9;
Pr=1*10^-6;
D=10;
r=5*10^3;
sigma=10;
c=3*10^8;
lemda=c/f;
Ae=lemda^2*D/(4*%pi);
Pt=Pr*(4*%pi*5000)^2/(D*sigma*Ae);
disp(Pt,"The transmitted power(in watt)=");

exit();
