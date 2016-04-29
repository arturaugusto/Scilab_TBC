errcatch(-1,"stop");mode(2);disp('To check if 4 is an eigenvalue of matrix A')
a=[3 0 -1;2 3 1;-3 4 5]
disp(a,'A=')
disp('Therefore')
disp('A-4I=')
disp(a-4*eye(3,3))
b=a-4*eye(3,3)
disp('to check the invertibility of A-4I, form an augmented matrix')
c=[b [0;0;0]]
disp(c)
disp('performing row operations')
c(2,:)=c(2,:)+2*c(1,:)
c(3,:)=c(3,:)-3*c(1,:)
disp(c)
c(3,:)=c(3,:)+4*c(2,:)
disp(c)
disp('We can see that there exists a non trivial solution.')
disp('Hence, 4 is an eigenvalue of A.')
disp('For the eigenvector, -x1-x3=0 and -x2-x3=0')
disp('If x3=1,')
x=[-1;-1;1]
disp(x,'x=')
exit();
