errcatch(-1,"stop");mode(2);
//Variable declaration
h=6.626*10**-34;    //plancks constant
e=1.6*10**-19;  
V=8.5*10**-6;    //voltage(V)

//Calculation
new=2*e*V/h;     //frequency(Hz)

//Result
printf('frequency is %0.3f   *10**9 Hz  \n',(new/10**9))
exit();
