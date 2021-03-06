errcatch(-1,"stop");mode(2);//AC Circuits : example 4.52 :(pg 4.41)
V=240;
VR=100;
P=300;
f=50;
R=((VR^2)/P);
I=sqrt(P/R);
Z=V/I;
XC=sqrt((Z^2)-(R^2));
C=(1/(2*%pi*f*XC));
VC=sqrt((V^2)-(VR^2));
VCmax=(VC*sqrt(2));
Qmax=(C*VCmax);
Emax=((1/2)*C*(VCmax^2));
printf("\nV=240 V \nVR=100 V \nP=300 W \nf=50 Hz");
printf("\nP=(VR^2)/R \nR=((VR^2)/P)=%.2f Ohm",R);
printf("\nP=(I^2)*R \nI=sqrt((P/R)) \nI=%.f A",I);
printf("\nZ=V/I=%.f Ohm",Z);
printf("\nXC=sqrt((Z^2)-(R^2))=%.2f Ohm",XC);
printf("\nXC=1/2*pi*f*C \nC=%.2e F",C);
printf("\nVoltage across capacitor VC=sqrt((V^2)-(VR^2))=%.2f V",VC);
printf("\nMaximum value of max charge \nVC=%.2f V \nQmax=C*VCmax=%.4f C",VCmax,Qmax);
printf("\nMax stored energy Emax=((1/2)*C*(VCmax^2)) \n=%.2f J", Emax);

exit();
