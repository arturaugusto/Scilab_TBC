errcatch(-1,"stop");mode(2);//ques14

syms x
disp('The summation is equivalent to integration of log(1+x) from 0 to 1 '); 
g=log(1+x);
f=integ(g,x,0,1);
disp(float(f));
exit();
