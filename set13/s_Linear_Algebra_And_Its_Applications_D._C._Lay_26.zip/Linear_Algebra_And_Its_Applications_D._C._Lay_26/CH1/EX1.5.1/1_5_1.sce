errcatch(-1,"stop");mode(2);disp('the augmented matrix is:')
a=[2 -5 8 0;-2 -7 1 0;4 2 7 0]
disp(a)
disp('R2=R2+2*R1 and R3=R3-2*R1')
a(2,:)=a(2,:)+a(1,:)
a(3,:)=a(3,:)-2*a(1,:)
disp(a)
disp('R3=R3+R2')
a(3,:)=a(3,:)+a(2,:)
disp(a)
disp('only two columns have non zero pivots')
disp('hence, one column is a free column and therefore there exists a non trivial solution')
exit();
