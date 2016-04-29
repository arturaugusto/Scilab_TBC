errcatch(-1,"stop");mode(2);//Chapter-7,Example7_15,pg 7-41
Rm=50
Im=20*10^-3
I=10
Rsh=(Im*Rm)/(I-Im)
printf("shunt resistance for I=10A\n")
printf("Rsh=%.2f ohm\n",Rsh)
I=20
Rsh=(Im*Rm)/(I-Im)
printf("shunt resistance for I=20A\n")
printf("Rsh=%.2f ohm\n",Rsh)
V=150
Rs=(V/Im)-Rm
printf("series resistance for V=150V\n")
printf("Rs=%.2f ohm\n",Rs)
V=300
Rs=(V/Im)-Rm
printf("series resistance for V=300V\n")
printf("Rs=%.2f ohm",Rs)

exit();
