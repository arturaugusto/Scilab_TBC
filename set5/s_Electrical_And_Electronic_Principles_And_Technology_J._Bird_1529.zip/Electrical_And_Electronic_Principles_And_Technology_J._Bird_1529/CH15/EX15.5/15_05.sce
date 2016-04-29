errcatch(-1,"stop");mode(2);//Chapter 15, Problem 5
;
f=50;                    //frequency in hertz
V=240;                      //voltage
C=23e-6;                    //capacitance
Xc=1/(2*%pi*f*C)            //capacitive reactance
I=V/Xc;                     //current
printf("Current I = %.2f A",I)

exit();
