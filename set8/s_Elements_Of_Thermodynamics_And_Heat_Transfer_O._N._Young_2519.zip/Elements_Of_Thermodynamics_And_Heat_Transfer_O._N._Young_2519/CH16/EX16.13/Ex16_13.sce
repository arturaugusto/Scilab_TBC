errcatch(-1,"stop");mode(2);

//Initialization of variables
kp=5 
//calculations
x=poly(0,"x")
vec=roots(24*x^3 + 3*x-2)
x=vec(3)
y=poly(0,"y")
vec2=roots(249*y^3 +3*y-2)
y=vec2(3)
//results
printf("percentage of dissociation = %.1f percent",x*100)
printf("\n If pressure =10 . degree of dissociation = %d percent",y*100)


exit();
