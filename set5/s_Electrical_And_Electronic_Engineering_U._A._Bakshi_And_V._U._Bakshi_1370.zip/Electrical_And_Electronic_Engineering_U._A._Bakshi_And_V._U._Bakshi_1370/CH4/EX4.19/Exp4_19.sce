mode(2);errcatch(-1,"stop");driver("GIF");//Example 4.19
clc
disp("1 MVA,  V_L = 11 kV,  R_a = 0.6 ohm")
disp("VA = sqrt(3)*V_L*I_L")
il=(10^6)/(sqrt(3)*11*10^3)
format(7)
disp(il,"Therefore,  I_L(in A) = I_aph(full load) =")
disp("Now I_f = 40 A for I_ssc = 52.486 A. To find Z_s, plot the O.C.C and obtain V_oc for I_f = 40 A")
disp("From the graph, V_oc(line) = 6600 V for I_f = 40 A")
zs=(6000/sqrt(3))/52.486
format(3)
disp(zs,"Therefore,  Z_s(in ohm) = V_ocph/I_ascph |same I_f =")
xs=sqrt((66^2)-(0.6^2))
format(7)
disp(xs,"Therefore,  X_s(in ohm) = sqrt(Z_s^2 - R_a^2) =")
disp("(a) cos(phi) = 0.8 lagging,  sin(phi) = 0.6, half load")
ip=0.5*52.486
format(7)
disp(ip,"At half load,  I_aph(in A) = 1/2 * I_aph(FL) =")
vp=(11*10^3)/sqrt(3)
format(9)
disp(vp,"V_ph(in V) = V_L/sqrt(3) =")
disp("E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)+I_a*R_a)^2")
ephi=sqrt(((((6350.853*0.8)+(26.243*0.6))^2)+(((6350.853*0.6)+(26.243*65.99))^2)))
format(10)
disp(ephi,"Therefore,  E_ph(in V) =")
r=((7529.3113-6350.853)/6350.853)*100
format(6)
disp(r,"Therefore,  %R(in percentage) = (E_ph-V_ph / V_ph)*100 = ")
disp("(b) cos(phi) = 0.9 leading,  sin(phi) = 0.4358, full load so I_aph = 52.486 A")
disp("E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)-I_a*R_a)^2")
ephi=sqrt(((((6350.853*0.9)+(52.486*0.6))^2)+(((6350.853*0.4358)-(52.486*65.99))^2)))
format(9)
disp(ephi,"Therefore,  E_ph(in V) =")
r=((5789.231-6350.853)/6350.853)*100
format(6)
disp(r,"Therefore,  %R(in percentage) = (E_ph-V_ph / V_ph)*100 = ")

xinit('/home/fossee/Downloads/tbc_graphs/Electrical_And_Electronic_Engineering_U._A._Bakshi_And_V._U._Bakshi_1370/Exp4_19');xend();exit();
