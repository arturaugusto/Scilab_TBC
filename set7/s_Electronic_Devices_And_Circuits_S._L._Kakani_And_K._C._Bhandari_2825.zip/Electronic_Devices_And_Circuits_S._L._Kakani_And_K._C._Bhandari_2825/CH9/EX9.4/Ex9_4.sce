errcatch(-1,"stop");mode(2);//Ex9_4 Pg-475


funi=1*10^(6) //unity frequency in Hz
Sr=0.5/10^(-6) //slew rate in V/sec
Acl=10 // loop gain

fcl=funi/Acl // loop frequency in Hz
printf("(1) Close loop Bandwidth = %.0f kHz \n",fcl*10^-3)

Vp_max=Sr/(2*%pi*fcl) //output peak value
printf(" (2) Peak value of output = %.3f V \n",Vp_max)

exit();
