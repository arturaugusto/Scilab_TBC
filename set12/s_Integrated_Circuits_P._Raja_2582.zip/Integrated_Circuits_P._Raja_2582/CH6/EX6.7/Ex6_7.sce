errcatch(-1,"stop");mode(2);//Ex 6.7
;;
format('v',4);
n=8;//no. of bits
E=0.2;//%//maximum gain error
Vref=5.1;//V
V11=(100-E)*Vref/100;//V
disp(V11,"Minimum output voltage(V)");

exit();
