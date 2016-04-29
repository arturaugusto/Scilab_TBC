errcatch(-1,"stop");mode(2);//Example 4.18

disp("2R_a = 2  i.e.  R_a = 1 ohm/ph")
disp("V_L = 3.6 kVA,  MVA = 1")
disp("Therefore,  VA = sqrt(3)*V_L*I_L")
il=(1*10^6)/(sqrt(3)*3.6*10^3)
format(8)
disp(il,"Therefore,  I_L(in A) = I_aph =         ...Star")
disp("From the test results, obtain the open circuit and short circuit characteristics and obtain V_oc for full load I_sc of 160.373 A")
disp("From the graph, for full load short circuit current of 160.37 A, I_f = 53 A and corresponding V_oc(line) = 2250 V")
zs=(2250/sqrt(3))/160.37
format(4)
disp(zs,"Therefore,  Z_s(in ohm/ph) = V_ocph/I_scph |same I_f =")
xs=sqrt((8.1^2)-(1^2))
format(6)
disp(xs,"Therefore,  X_s(in ohm/ph) = sqrt(Z_a^2 - R_a^2) =")
vph=(3.6*10^3)/sqrt(3)
format(8)
disp(vph,"V_ph(in V) = V_L/sqrt(3) =")
disp("I_aph = 160.37 A")
disp("(i)  cos(phi) = 0.707 lagging,  sin(phi) = 0.707")
disp("Therefore,  E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)+I_a*R_a)^2")
ephi=sqrt(((((2078.46*0.707)+(160.37*1))^2)+(((2078.46*0.707)+(160.37*8.038))^2)))
format(10)
disp(ephi,"Therefore,  E_ph(in V) =")
r=((3204.0356-2078.46)/2078.46)*100
format(6)
disp(r,"Therefore,  %R(in percentage) = (E_ph-V_ph / V_ph)*100 = ")
disp("(ii)  cos(phi) = 0.8 leading,  sin(phi) = 0.6")
disp("Therefore,  E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)-I_a*R_a)^2")
ephi=sqrt(((((2078.46*0.8)+(160.37*1))^2)+(((2078.46*0.6)-(160.37*8.038))^2)))
format(10)
disp(ephi,"Substituting the values,  E_ph(in V) =")
r=((1823.6271-2078.46)/2078.46)*100
format(6)
disp(r,"Therefore,  %R(in percentage) = (E_ph-V_ph / V_ph)*100 = ")

exit();
