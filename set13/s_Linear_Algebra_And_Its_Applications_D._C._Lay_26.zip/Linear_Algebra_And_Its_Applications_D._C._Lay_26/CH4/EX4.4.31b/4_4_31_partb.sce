errcatch(-1,"stop");mode(2);disp('to check if the polynomials span R3')
disp('placing the coordinate vectors of the polynomial into the columns of a matrix')
a=[0 1 -3 2;5 -8 4 -3;1 -2 2 0]
disp(a,'A=')
disp('performing row operations')
a([1 3],:)=a([3 1],:)
disp(a)
a(2,:)=a(2,:)-5*a(1,:)
disp(a)
a(3,:)=a(3,:)-.5*a(2,:)
disp(a)
disp('the four vectors SPAN R3 as there is a pivot in each row')
exit();
