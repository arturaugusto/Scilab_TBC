errcatch(-1,"stop");mode(2);;
//;
n=6;
k1=0.1;
k=sqrt(k1);
a=sinh((n-1)*k)/sinh(n*k);
b=1-a;
printf("\n the voltage across lowest unit is:  %.2f V\n ",b*100);
eff=1/(n*b);
printf("\n the string efficiency is:  %.2f percent",eff*100);

exit();
