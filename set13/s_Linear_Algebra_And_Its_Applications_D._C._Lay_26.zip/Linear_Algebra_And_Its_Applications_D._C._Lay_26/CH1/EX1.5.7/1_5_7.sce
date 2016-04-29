errcatch(-1,"stop");mode(2);disp('the augmented matrix is:')
a=[1 3 -3 7 0;0 1 -4 5 0]
disp(a)
disp('R1=R1-3*R2')
a(1,:)=a(1,:)-3*a(2,:)
disp(a)
disp('basic variables:x1 x2')
disp('free variables:x3 x4')
disp('x1=-9*x3+8*x4')
disp('x2=4*x3-5*x4')
disp('hence, solution is')
disp('[-9*x3+8*x4 4*x3-5*x4 x3 x4]')
exit();
