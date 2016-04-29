errcatch(-1,"stop");mode(2);//Example 4.17

disp("Assume star connected alternator")
disp("R_a+R_a = V_dc/I_dc")
disp("2R_a = 6/10")
ra=0.6/2
format(4)
disp(ra,"Therefore,  R_a(in ohm/ph) =")
disp("V_oc(line) = 420,  V_L = 1100 V, 100 kVA")
disp("Therefore,  VA = sqrt(3)*V_L*I_L")
il=(100*10^3)/(sqrt(3)*1100)
format(8)
disp(il,"Therefore,  I_L(in A) = I_aph =")
disp("Therefore,  Rated armature current = 52.4864 A = I_ssc")
zs=(420/sqrt(3))/52.4864
format(5)
disp(zs,"Therefore,  Z_s(in ohm/ph) = V_oc(ph) / I_ssc(ph) =")
xs=sqrt((4.62^2)-(0.3^2))
format(7)
disp(xs,"Therefore,  X_s(in ohm/ph) = sqrt(Z_a^2 - R_a^2) =")
disp("For cos(phi) = 0.8 lagging,  sin(phi) = 0.6")
disp("E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)+I_a*R_a)^2")
vph=1100/sqrt(3)
format(8)
disp(vph,"V_ph(in V) = V_L/sqrt(3) =")
ephi=sqrt(((((635.085*0.8)+(52.4864*0.3))^2)+(((635.085*0.6)+(52.4864*4.6102))^2)))
format(9)
disp(ephi,"Therefore,  E_ph(in V) =")
r=((813.9654-635.085)/635.085)*100
format(8)
disp(r,"Therefore,  %R(in percentage) = (E_ph-V_ph / V_ph)*100 = ")

exit();
