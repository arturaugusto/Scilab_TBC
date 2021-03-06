errcatch(-1,"stop");mode(2);//Example 7.12

;

;

ft=16*10^6;

enw=4.5*10^(-9);

fce=100;

IB=1*10^(-12);

fL=0.01;

R1=100*10^(9);

C1=45*10^(-12);

R2=10*10^6;

C2=0.5*10^(-12);

b0rec=1;

binfrec=91;

fz=350;

fp=31.8*10^3;

fx=176*10^3;

k=1.38*10^(-23);

T=25+273;

Cc=0.5*10^(-12);//Assumed

C2=Cc;

C3=10*10^(-9);

R3=(R2*Cc)/C3;

printf("Cc=C2=%.1f pF",Cc*10^(12));

printf("\nR3=%.f ohms",R3);

printf("\nC3=%.f nF",C3*10^(9));
exit();
