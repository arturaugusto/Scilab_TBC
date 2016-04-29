errcatch(-1,"stop");mode(2);//example 2.4
//bisection method
//page 26
;;
deff('y=f(x)','y=x*exp(x)-1');
x1=0,x2=1;//f(0) is negative and f(1) is positive
d=0.0005;//maximun tolerance value
c=1;
printf('Succesive approximations \t   x1\t   \tx2\t   \tm\t   \ttol\t    \tf(m)\n');
while abs((x2-x1)/x2)>d
    m=(x1+x2)/2;//tolerance value for each iteration
   tol=((x2-x1)/x2)*100;
printf('                          \t%f\t%f\t%f\t%f\t%f\n',x1,x2,m,tol,f(m));
    if f(m)*f(x1)>0
        x1=m;
    else
        x2=m; 
end
c=c+1;// to count number of iterations 
end
printf('the solution of equation after %i iteration is %0.4g',c,m)
exit();
