errcatch(-1,"stop");mode(2);//Example 5.8

disp("P = 4, f = 50 Hz, Stator turns/Rotor turns = 4, R2 = 0.01 ohm, X2 = 0.1 ohm")
disp("E_1line = stator line voltage = 400 V")
e1=400/sqrt(3)
format(7)
disp(e1,"E_1ph(in V) = E_1line/sqrt(3) =          ...star connection")
disp("K = E_2ph/E_1ph = Rotor turns/stator turns = 1/4")
e2=230.94/4
disp(e2,"Therefore,  E_2(in V) = 1/4 * E_1ph =")
ns=(120*50)/4
format(5)
disp(ns,"N_s(in r.p.m) = 120f/P =")
disp("(i) At start,  s = 1")
disp("Therefore,  T_st =  (k*E2^2*R2 / R2^2+X2^2)       where k = 3 / 2*pi*ns")
ns=1500/60
disp(ns,"n_s(in r.p.s) = N_s/60 =")
k=3/(2*%pi*25)
format(8)
disp(k,"Therefore,  k = 3 / 2*pi*25 =")
t=((0.01909*0.01*57.735^2)/((0.01^2)+(0.1^2)))
format(7)
disp(t,"Therefore,  T_st(in N-m) =")
disp("(ii) Slip at which maximum torque occurs is,")
sm=0.01/0.1
disp(sm,"s_m = R2/X2 =")
psm=0.1*100
disp(psm,"%s_m =")
disp("(iii) Speed at which maximum torque occurs is speed corresponding to s_m,")
n=1500*(1-0.1)
format(5)
disp(n,"N(in r.p.m) = N_s*(1-s_m) =")
disp("(iv) The maximum torque is,")
tm=(0.01909*57.735^2)/(2*0.1)
format(7)
disp(tm,"T_m(in N-m) = k*E2^2 / 2*X2 =")
disp("(v) Full load slip, s_f = 0.04    as %s_f = 4%")
t=((0.01909*0.04*0.01*57.735^2)/((0.01^2)+(0.004^2)))
format(7)
disp(t,"T_f.l(in N-m) =(k*s*E2^2*R2 / R2^2+(s_f*X2)^2) =")

exit();
