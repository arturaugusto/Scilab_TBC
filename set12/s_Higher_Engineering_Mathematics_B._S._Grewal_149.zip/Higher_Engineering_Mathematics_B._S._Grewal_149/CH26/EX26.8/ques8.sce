errcatch(-1,"stop");mode(2);//ques4
syms  c1 c2 c3 n
disp('Cumulative function is given by E^2-4*E+4    =0 ');
E=poly(0,'E');
f=E^2-4*E+4;
r=roots(f);
disp(r);
disp('There for the complete solution is = cf + pi');
cf=(c1+c2*n)*r(1)^n;
disp('CF=');
disp(cf);
disp('PI = 1/(E^2-4E+4)[2^n]');
disp('We get PI=n*(n-1)/2*2^(n-2)');
pi=n*(n-1)/factorial(2)*2^(n-2);
un=cf+pi;
disp('un=');
disp(un);



exit();
