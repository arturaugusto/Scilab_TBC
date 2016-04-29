errcatch(-1,"stop");mode(2);//AC Circuits : example 4.49 :(pg 4.37 & 4.38)
f=50;
I1=4;
pf1=0.5;
V1=200;
I2=5;
pf2=0.8;
V2=40;
Z1=(V2/I2);
R=(Z1*pf2);
XL1=sqrt((Z1^2)-(R^2));
L1=(XL1/(2*%pi*f));
Z2=(V1/I1);
RT=(Z2*pf1);
XL2=sqrt((Z2^2)-(RT^2));
L2=(XL2/(2*%pi*f));
Pi=(V1*I1*pf1-(I1^2)*R);
printf("\nWith iron core    I=4 A    pf=0.5,    V=200 V \nWithout iron core    I=5 A    pf=0.8,    V=40 V \nWhen the iron-core is removed,");
printf("\nZ=V/I=%.f Ohms",Z1);
printf("\npf=R/Z \nR=%.1f Ohms",R);
printf("\nXL=sqrt((Z^2)-(RT^2))=%.1f Ohms",XL1);
printf("\nXL=(2*pi*f*L) \nInductance    L=%.4f H",L1);
printf("\nWith iron core, \nZ=%.f Ohms",Z2);
printf("\npf=RT/Z \nRT=%.f Ohm",RT);
printf("\nXL=sqrt((Z^2)-(RT^2))=%.2f Ohm",XL2);
printf("\nXL=(2*pi*f*L) \nInductance        L=%.4f H",L2);
printf("\nIron loss      Pi=P=(I^2)*R \n=VIcos(phi)-I^2*R \n=%.1f W",Pi);

exit();
