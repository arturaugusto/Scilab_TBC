errcatch(-1,"stop");mode(2);//example9.12

disp("d=0.5 cm, L=20 cm, l=2 cm, (V_a)=1000 V, (V_d)=25 V")
d=((2*10^-2)*(20*10^-2)*25)/(2*0.5*1000*10^-2)
disp(d,"i) D(in m)=(l*L*(V_d))/(2*d*V_a)=")
s=0.01/25
disp(s,"Therefore, S(in m/V)=D/(V_d)=")
disp("ii) tan(theta)=(l*a_y)/(v_ox^2)")
a=((1.6*10^-19)*25)/((0.5*10^-2)*(9.107*10^-31))
format(9)
disp(a,"where, a_y(in m/s^2)=(q*v_d)/(d*m)= ")
v=sqrt((2*1.6*1000*10^-19)/(9.107*10^-31))
disp(v,"v_ox(in m/s)=sqrt((2*q*V_a)/m)=")
t=((2*10^-2)*(8.7844*10^14))/((18.745*10^6)^2)
format(5)
disp(t,"Therefore, tan(theta)=t=((2*10^-2)*(8.7844*10^14))/((18.745*10^6)^2)= ")
a=atand(0.05)
format(6)
disp(a,"Therefore, theta(in degree)= ")
format(9)
disp(v,"iii) (v_ox)= Velocity of electrons - Velocity of beam =")

exit();
