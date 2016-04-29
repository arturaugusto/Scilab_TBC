errcatch(-1,"stop");mode(2);;
;
format('v',11);
N=10;
phi_0=45;
kd=%pi;
alpha=-1*180*cosd(phi_0);
disp(alpha,"The progressive phase shift(in degree)=");
disp("sin(phi_0)*del_phi_fn+cos(phi_0)*del_phi_fn^2/2=2*%pi/(N*kd)0","to find the BWFN,solving the equation");
del_phi_fn=14.4;
BWFN=2*del_phi_fn;
disp(BWFN,"The BWFN(in degree)=");

exit();
