errcatch(-1,"stop");mode(2);//system//
s=%s;
sys=syslin('c',1/(s^2*(s+2)))
nyquist(sys)
show_margins(sys,'nyquist')
printf("Since P=0(no of poles in RHP)=Poles of G(s)H(s) \n here the number of zeros of 1+G(s)H(s) in the RHP is not equal to zero \n hence the system is unstable")     



exit();
