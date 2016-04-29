errcatch(-1,"stop");mode(2);;
;
h=1, w=.8, Er=6.6, P= atan(.0001), c= 5.8*10^7,f=10^10,mu=4*%pi*10^(-7),C=3*10^8;
r=w/h;
Ee=((Er+1)/2)+ ((Er-1)/(2*(1+12/r)^.5));
Zo=(120*%pi)/((r+1.393+ (.667*log(r+1.444)))*((Ee)^.5));
Rs=((%pi*f*mu)/c)^.5;
ac=8.686*Rs/(w*10^-3*Zo);
disp(ac,'Conduction Attenuation Constant = ');
l=C/(f*(Ee)^.5);
disp(l);
ad=27.3*(Ee-1)*Er*tan(P)/((Er-1)*Ee*l);
disp(ad,'Dielectric Attenuation Constant =');
exit();
