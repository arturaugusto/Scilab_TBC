errcatch(-1,"stop");mode(2);;
;
format('v',11);
R=42.9*10^-3;
L=0.7*10^-6;
C=0.1*10^-9;
G=24*10^-9;
w=5000;
gama=sqrt((R+%i*w*L)*(G+%i*w*C));
alpha=real(gama);
beta=imag(gama);
disp(alpha,"alpha(in Neper/m)=",beta,"beta(in rad/m)=");
vp=w/beta;
disp(vp,"The phase velocity(in m/s)=");
Z0=sqrt((R+%i*w*L)/(G+%i*w*C));
disp(Z0,"The characteristic impedance(in Ohm)=");

exit();
