errcatch(-1,"stop");mode(2);//Example 7.5.11: resistance 
;
;

t=200;// in volts
i=0.5;//in amperes
ra=10;//in ohms
x=t/i;//in ohms
r=x-ra;//in ohms
disp(r,"unknown resistance in ohms is")

exit();
