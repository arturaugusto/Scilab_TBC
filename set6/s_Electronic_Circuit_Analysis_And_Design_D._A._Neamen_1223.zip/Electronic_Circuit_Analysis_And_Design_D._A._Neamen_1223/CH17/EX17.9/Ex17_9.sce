errcatch(-1,"stop");mode(2);;
;
//Example 17.9
bf=25;
b=bf;
br=0.1;
Vcc=5;
R1=4;
Vbc=0.7;
Vy=0.1;
Vx=0.1;
R2=1.6;
Vbe=0.8;
Rc=4;
Vce=0.1;
vB2=Vx+Vce;
printf('\nvB2=%.2f V\n',vB2)
vB1=Vx+Vbe;
printf('\nbase voltage=%.2f V\n',vB1)
i1=(Vcc-vB1)/R1;
printf('\ncurrent i1=%.2f mA\n',i1)
vB1=Vbe+Vbe+Vbc;
printf('\nvB1=%.2f V\n',vB1)
vC2=Vbe+Vce;
printf('\ncollector voltage=%.2f V\n',vC2)
i1=(Vcc-vB1)/R1;
printf('\ncurrent i1 =%.2fmA\n',i1)
iB2=(1+2*br)*i1;
printf('\niB2=%.2f mA\n',iB2)
i2=(Vcc-vC2)/R2;
printf('\ni2 =%.2fmA\n',i2)
iE2=i2+iB2;
printf('\niE2=%.2f mA\n',iE2)
Rb=1;
i4=Vbe/Rb;
printf('\ncurrent in the pull down resistor=%.2f mA\n',i4)
iBo=iE2-i4;
printf('\nbase drive to the output transistor=%.2f mA\n',iBo)
i1=(Vcc-Vce)/Rc;
printf('\ni1=%.2f mA\n',i1)

exit();
