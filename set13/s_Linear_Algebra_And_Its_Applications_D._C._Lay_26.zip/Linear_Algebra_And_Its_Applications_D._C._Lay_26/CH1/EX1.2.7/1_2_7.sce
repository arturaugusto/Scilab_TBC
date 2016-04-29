errcatch(-1,"stop");mode(2);disp('the augmented matrix is')
a=[1 3 4 7;3 9 7 6]
disp(a)
disp('R2=R2-3*R1')
a(2,:)=a(2,:)-3*a(1,:)
disp(a)
disp('(-1/5)*R2')
a(2,:)=(-1/5)*a(2,:)
disp(a)
disp('R1=R1-4*R2')
a(1,:)=a(1,:)-4*a(2,:)
disp('the row reduced form is:')
disp(a)
disp('corresponding equations are')
disp('x1+3*x2=-5 and x3=3')
disp('free variables:x2')
disp('general solution is:')
disp('x1=-5-3*x2, x2, x3=3')
exit();
