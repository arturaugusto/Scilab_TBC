errcatch(-1,"stop");mode(2);//ques18
disp('Maclaurins series');
disp('f(x)=f(0)+xf1(0)+x^2/2!*f2(0)+x^3/3!*f3(0)+......');
syms x a

  y=log(1+(sin(a))^2);
  n=input('enter the number of differentiation involved in  maclaurins series : ');
  a=0;
t=eval(y);
a=0;
for i=2:n
  y1=diff(y,'a',i-1);
   t=t+x^(i-1)*eval(y1)/factorial(i-1);
end
disp(t)


exit();