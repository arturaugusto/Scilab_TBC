errcatch(-1,"stop");mode(2);//laplace//
printf("n=5 ,Helical turn \n")
n=5; //Helical turn
disp(n,"n=")
printf("N=9000 ,Winding Turn \n")
N=9000;//Winding Turn
disp(N,"N=")
printf("R=10000 ,Potentiometer Resistance \n")
R=10000;//Potentiometer Resistance
disp(R,"R=")
printf("Ein=90 ,Input voltage \n")
Ein=90;//Input voltage
disp(Ein,"Ein=")
printf("r=5050 ,Resistance at mid point  \n")
r=5050;//Resistance at mid point 
disp(r,"r=")
printf("D=r-5000, Deviation from nominal at mid-point \n")
D=r-5000; //Deviation from nominal at mid-point
disp(D,"D=")
printf("L=D/R*100 ,Linearity \n")
L=D/R*100;//Linearity
disp(L,"L=")
printf("R=Ein/N ,Resolution \n")
R=Ein/N; //Resolution
disp(R,"R=")
printf("Kp=Ein/(2*pi*n) ,Potentiometer Constant \n")
Kp=Ein/(2*%pi*n); //Potentiometer Constant
disp(Kp,"Kp=")

exit();
