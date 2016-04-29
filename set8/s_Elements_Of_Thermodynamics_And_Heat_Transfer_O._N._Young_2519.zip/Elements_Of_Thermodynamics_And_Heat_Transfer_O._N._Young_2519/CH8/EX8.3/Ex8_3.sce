errcatch(-1,"stop");mode(2);

//Initialization of variables
cp=0.25 //Btu/lbm R
T0=520 //R
T1=3460 //R
dG=21069 //Btu/lbm
dH=21502 //Btu/lbm
//calculations
dq=cp*(T0-T1)
ds=cp*log(T0/T1)
dE=dq-T0*ds
eta=dE/dq
dw=eta*dH
de=-dG+dw
//results
printf("Loss of available energy = %d Btu/lbm",de)

exit();
