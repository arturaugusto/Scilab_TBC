errcatch(-1,"stop");mode(2);//Example 4.21

disp("1500 kVA,  V_L = 12 kV,  R_a = 2 ohm,  X_s = 10 ohm")
vp=(12*10^3)/sqrt(3)
format(10)
disp(vp,"  V_ph(in V) =         ...Star")
disp("P_L = sqrt(3)*V_L*I_L*cos(phi)")
disp("(a) cos(phi) = 0.8 lagging,  sin(phi) = 0.6")
il=(1200*10^3)/(sqrt(3)*0.8*12*10^3)
format(7)
disp(il,"Therefore,  I_L(in A) = I_aph =         ...Star")
disp("  E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)+I_a*R_a)^2")
ephi=sqrt(((((6928.2032*0.8)+(72.168*2))^2)+(((6928.2032*0.6)+(72.168*10))^2)))
format(9)
disp(ephi,"Therefore,  E_ph(in V) =")
r=((7492.768-6928.2032)/6928.2032)*100
format(6)
disp(r,"Therefore,  %R(in percentage) = (E_ph-V_ph / V_ph)*100 = ")
disp("(b) cos(phi) = 0.707 leading,  sin(phi) = 0.707")
il=(1200*10^3)/(sqrt(3)*0.707*12*10^3)
format(6)
disp(il,"Therefore,  I_L(in A) = I_a =         ...Star")
disp("  E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)+I_a*R_a)^2")
ephi=sqrt(((((6928.2032*0.707)+(81.66*2))^2)+(((6928.2032*0.707)-(81.66*10))^2)))
format(10)
disp(ephi,"Therefore,  E_ph(in V) =")
r=((6502.2433-6928.2032)/6928.2032)*100
format(6)
disp(r,"Therefore,  %R(in percentage) = (E_ph-V_ph / V_ph)*100 = ")

exit();
