errcatch(-1,"stop");mode(2);//error no output
//ques4

disp('definite integral');
syms x a
g=x^3*(2*a*x-x^2)^(1/2);
f=integ(g,x,0,2*a);
disp(f);

exit();
