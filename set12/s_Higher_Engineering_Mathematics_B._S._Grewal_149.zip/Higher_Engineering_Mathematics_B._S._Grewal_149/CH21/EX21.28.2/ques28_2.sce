errcatch(-1,"stop");mode(2);//ques28
syms s t
f=integ(exp(-s*t)*exp(-t),t,0,2);
disp('Laplace of given function is');
disp(f);


exit();
