errcatch(-1,"stop");mode(2);//Example 7_16
;
;
//To calculate the angle of acceptance
n1=1.563
n2=1.498
theta=asin(sqrt(n1^2-n2^2))*180/%pi
printf("The acceptance angle is %.2f degrees",theta )

exit();
