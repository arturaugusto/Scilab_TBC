errcatch(-1,"stop");mode(2);//Initilization of variables
k=18 //lb/in
g=386 //in/s^2
W=35 //lb
//Calculations
f=(1/(2*%pi))*sqrt((k*g/W)) //cps
period=1/f //s
//Result

printf('The period of vibration is %f s',period)

exit();
