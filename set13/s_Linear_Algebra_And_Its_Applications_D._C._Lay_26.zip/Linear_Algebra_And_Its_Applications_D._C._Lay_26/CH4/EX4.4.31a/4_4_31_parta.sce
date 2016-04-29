errcatch(-1,"stop");mode(2);disp('to check if the polynomials span R3')
disp('placing the coordinate vectors of the polynomial into the columns of a matrix')
a=[1 -3 -4 1;-3 5 5 0;5 -7 -6 1]
disp(a,'A=')
disp('performing row operations')
a(2,:)=a(2,:)+3*a(1,:)
a(3,:)=a(3,:)-5*a(1,:)
disp(a)
a(3,:)=a(3,:)+2*a(2,:)
disp(a)
disp('the four vectors DO NOT span R3 as there is no pivot in row 3')
exit();
