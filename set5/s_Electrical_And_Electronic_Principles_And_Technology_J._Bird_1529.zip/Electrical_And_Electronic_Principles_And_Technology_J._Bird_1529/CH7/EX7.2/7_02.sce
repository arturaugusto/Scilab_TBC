errcatch(-1,"stop");mode(2);//Chapter 1, Problem 2
;
phi=353*10^-3;              //Flux
B=1.8;                      //Flux density
A=phi/B;                    //Area of pole face
r=sqrt(A/%pi);              //Radius
printf("The radius of the pole face = %f mm",r*1000);

exit();
