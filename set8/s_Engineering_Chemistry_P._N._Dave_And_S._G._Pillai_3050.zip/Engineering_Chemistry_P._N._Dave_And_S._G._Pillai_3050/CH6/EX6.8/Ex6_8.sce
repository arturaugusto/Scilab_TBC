errcatch(-1,"stop");mode(2);//calculating Kc
//Example 6.8


//E'cell=0.0591*logKc/n
Ecell=0.16
n=4
Kc=10^(n*Ecell/0.0591)//equilibrium constant
printf('Thus the equilibrium constant for the reaction = %e',Kc)

exit();
