errcatch(-1,"stop");mode(2);//example9.16

disp("l=2 cm, d=4 mm, L=25 cm")
disp("S=D/(V_d)=(l*L)/(2*d*V_a) m/V     ...Defection sensitivity")
disp("i) V_a=1000 V")
s=((2*10^-2)*(25*10^-2))/(2*4*1000*10^-3)
disp(s,"Therefore, S(in m/V)=((2*10^-2)*(25*10^-2))/(2*4*1000*10^-3)= ")
disp("ii) V_a=2000 V")
s=((2*10^-2)*(25*10^-2))/(2*4*2000*10^-3)
disp(s,"Therefore, S(in m/V)=((2*10^-2)*(25*10^-2))/(2*4*2000*10^-3)= ")
disp("iii) V_a=3500 V")
s=((2*10^-2)*(25*10^-2))/(2*4*3500*10^-3)
disp(s,"Therefore, S(in m/V)=((2*10^-2)*(25*10^-2))/(2*4*13500*10^-3)= ")

exit();
