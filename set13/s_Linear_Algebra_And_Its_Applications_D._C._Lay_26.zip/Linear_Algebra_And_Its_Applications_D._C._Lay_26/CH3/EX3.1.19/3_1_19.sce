errcatch(-1,"stop");mode(2);disp('the given matrix is:')
disp('A=')
disp('a  b')
disp('c  d')
disp('det(A)=ad-bc')
disp('interchanging the rows of A, we get')
disp('B=')
disp('c  d')
disp('a  b')
disp('det(B)=bc-ad')
disp('-(ad-bc)','=')
disp('-det(A)','=')
disp('interchanging 2 rows reverses the sign of the determinant')
disp('at least for the 2X2 case')
exit();