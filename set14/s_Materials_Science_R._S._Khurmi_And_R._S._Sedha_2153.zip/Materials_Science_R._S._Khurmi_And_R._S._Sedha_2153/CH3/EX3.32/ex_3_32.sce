errcatch(-1,"stop");mode(2);//Example 3.32 : interatomic spacing
;
;

//given data :
format('v',9)
theta=30;//in degree
lamda=1.54;// in angstrum
n=1;
a=sind(theta)
d=lamda/(2*a);
disp(d,"interatomic spacing,d(angstrom) = ")

exit();
