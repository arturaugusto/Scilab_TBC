errcatch(-1,"stop");mode(2);;
;
format('v',11);
r=[1 2 3];
r1=[1 1 1];
R=r-r1;
q=1*10^-9;
mod_R=sqrt(R(1)^2+R(2)^2+R(3)^2);
E=q*R/(4*3.14*8.85*10^-12*mod_R^3);
disp(E,"E(in v/m)=");

exit();
