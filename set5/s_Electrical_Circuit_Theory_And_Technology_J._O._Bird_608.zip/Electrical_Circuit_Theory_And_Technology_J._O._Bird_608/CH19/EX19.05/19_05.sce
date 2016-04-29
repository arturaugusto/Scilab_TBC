errcatch(-1,"stop");mode(2);//Problem 19.05: Three identical coils each of resistance 30 ohm

//initializing the variables:
R = 30; // in ohms
L = 0.1273; // in Henry
VL = 440; // in Volts
f = 50; // in Hz

//calculation:
XL = 2*%pi*f*L
Zp = (R*R + XL*XL)^0.5
Vp = VL
//Phase current
Ip = Vp/Zp
//For a delta connection,
IL = Ip*(3^0.5)

printf("\n\n Result \n\n")
printf("\n (a)the phase current %.1f A",Ip)
printf("\n (b)line current %.2f A",IL)
exit();