errcatch(-1,"stop");mode(2);;
;
//Example 13.4
b=200;
Va=50
Vt=0.026;
R2=1;
Ic6=0.0095;
Ic4=Ic6;
Ic16=0.0158;
Ic17=0.54;
r17=b*Vt/Ic17;
printf('\ninput resistance to gain stage=%.2f KOhm\n',r17)
R9=50;
R8=0.100;
x=r17+(1+b)*R8;
Re=x*R9/(x+R9);
printf('\nRe=%.3f KOhm\n',Re)
r16=b*Vt/Ic16;
printf('\nr16=%.2f KOhm\n',r16)
Ri2=r16+(1+b)*Re;
Ri2=Ri2*0.001;//MOhm
printf('\nRi2=%.2f KOhm\n',Ri2)
r6=b*Vt/Ic6;
printf('\nresistance of the active load=%.2f KOhm\n',r6)
gm=Ic6/Vt;
printf('\ntransconductance =%.3fmA/V\n',gm)
ro6=Va/Ic6;
ro6=ro6*0.001;//MOhm
printf('\nro6=%.2f MOhm\n',ro6)
R=ro6*(1+gm*R2*r6/(R2+r6));
printf('\neffective resistance of active load=%.2f MOhm\n',R)
ro4=Va/Ic4;
ro4=ro4*0.001;//Mohm
printf('\nResistance ro4=%.2f KOhm\n',ro4)
Icq=9.5;
x=Ri2*R/(R+Ri2);
y=ro4*x/(ro4+x);
Ad=-y*Icq/Vt;
printf('\nsmall signal differential voltage gain=%.2f\n',Ad)

exit();
