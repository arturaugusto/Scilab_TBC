errcatch(-1,"stop");mode(2);//Chapter 19, Problem 1
;
A0=120;                     //voltage gain
V1=2.35;                    //input voltage
V2=2.45;                    //input voltage
V0=A0*(V2-V1);              //output voltage
printf("Output voltage = %d V",V0);

exit();
