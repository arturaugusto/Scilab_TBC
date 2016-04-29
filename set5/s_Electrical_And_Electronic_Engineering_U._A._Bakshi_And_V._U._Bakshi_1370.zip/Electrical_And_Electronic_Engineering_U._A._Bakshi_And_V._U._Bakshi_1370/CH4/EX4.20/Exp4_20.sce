errcatch(-1,"stop");mode(2);//Example 4.20

disp("R_s = 0.6 ohm,  X_s = 6 ohm,  I_aph = 180 A")
eph=6599/sqrt(3)
format(10)
disp(eph,"E_ph(in V) = E_line/sqrt(3) =")
disp("(a) cos(phi) = 0.9 lagging, sin(phi) = 0.4358")
disp("Therefore,  E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)+I_a*R_a)^2")
disp("Therefore,  (3809.9344)^2 = [V_ph*0.9 + 180*0.6]^2 + [V_ph*0.4358 + 180*6]^2")
disp("Therefore,  14.5156*10^6 = 0.81*V_ph^2 + 194.4*V_ph + 11664 + 0.1899*V_ph^2 + 941.328*V_ph + 1166400")
disp("Therefore,  V_ph^2 + 1135.728*V_ph - 13337536 = 0")
disp("Therefore,  V_ph = 3128.08, -4263.808       ...Neglect negative value")
disp("Therefore,  V_ph = 3128.08 V                  ...Terminal voltage")
r=((3809.9344-3128.08)/3128.08)*100
format(8)
disp(r,"Therefore,  %R(in percentage) = (E_ph-V_ph / V_ph)*100 = ")
disp("(b) cos(phi) = 0.8 leading, sin(phi) = 0.6")
disp("Therefore,  E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)+I_a*R_a)^2")
disp("Therefore,  (3809.9344)^2 = [V_ph*0.8 + 180*0.6]^2 + [V_ph*0.6 + 180*6]^2")
disp("Therefore,  14.5156*10^6 = 0.64*V_ph^2 + 172.8*V_ph + 11664 + 0.36*V_ph^2 - 1296*V_ph + 1166400")
disp("Therefore,  V_ph^2 - 1123.2*V_ph - 13337536 = 0")
disp("Therefore,  V_ph = 4256.5872 V       ...Neglect negative value")
r=((3809.9344-4256.5872)/4256.5872)*100
format(7)
disp(r,"Therefore,  %R(in percentage) = (E_ph-V_ph / V_ph)*100 = ")

exit();
