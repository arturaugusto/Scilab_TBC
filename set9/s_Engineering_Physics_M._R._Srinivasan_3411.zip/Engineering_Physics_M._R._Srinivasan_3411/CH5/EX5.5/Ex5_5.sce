errcatch(-1,"stop");mode(2);//Example 5_5
;
;
//To find out the interplanar spacing of the reflecting planes of the crystal
theta=28       //units in degrees
lamda=0.12      //units in nm
n=2
d=(n*lamda)/(2*sin(theta*(%pi/180)))
printf("The interplanar spacing of the reflecting planes of the crystal is d=%.2fnm",d)

exit();
