errcatch(-1,"stop");mode(2);//example6.11

disp("I_m=15 mA, R_m=1.5 ohm at 15 degree celcius, R=3.5 ohm")
r=1.5+3.5
disp(r,"Therefore, R_mT(in ohm)= Total meter resistance = 1.5+3.5 = ")
disp("i) I=20A")
r=(15*5*10^-3)/(20-(15*10^-3))
format(10)
disp(r,"Therefore, R_sh(in ohm)=[(I_m)*(R_mT)]/[I-(I_m)]=")
disp("ii) V=250 V")
r=(100/(15*10^-3))-5
disp(r,"R_s(in ohm)=V/I_m - R_mT =")
disp("Now at 25 degree celcius, (R_m)'' is the new meter resistance.")
disp("R_m'' = R_m[1+(alpha_1)*(t2-t1)] where t1=15 degree celcius, t2=25 degree celcius")
a=(1/234.5)/(1+(15/234.5))
format(6)
disp(a,"(alpha_1)[in per degree celcius]=(alpha_0)/(1+[(alpha_0)*t1])=(1/234.5)/(1+(15/234.5))=")
r=1.5*(1+(0.004*(25-15)))
format(8)
disp(r,"Therefore, R_m''(in ohm)=1.5*(1+(0.004*(25-15)))= ")
r=1.56012+3.5
format(8)
disp(r,"Therefore, R_mT''(in ohm)=1.56012+3.5=")
disp("Error in part(i) : The Fig. 6.19 shows two cases.")
disp("Therefore, I_m1 at 15 degree celcius = (I*R_sh)/[(R_sh+(R_mT))]=7.4999*10^-4 I")
disp("Therefore, I_m2 at 25 degree celcius = (I*R_sh)/[(R_sh+(R_mT''))]=7.41092*10^-4 I")
i=((7.41092*10^-2)-(7.4999*10^-2))/(7.4999*10^-4)
format(7)
disp(i,"% error = [(I_m2)-(I_m1)*100]/(I_m1)= ")
disp("Negative sign indicates that the reading is less than the actual reading.")
disp("Error in part(ii) : The Fig. 6.19 shows two cases.")
disp("Therefore, V_m1 = (V*R_mT)/(R_mT+R_s)=(5*V)/(5+16661.67)=2.9999*10^-4 V")
disp("Therefore, V_m2 = (V*R_mT'')/(R_mT''+R_s)=(5.06012*V)/(5.06012+16661.67)=3.03606*10^-4 V")
v=((3.03606*10^-2)-(2.9999*10^-2))/(2.9999*10^-4)
format(7)
disp(v,"% error = [(V_m2)-(V_m1)*100]/(V_m1)= ")

exit();
