errcatch(-1,"stop");mode(2);
//Variable declaration
n1=1.55;      //refractive index of core
n2=1.50;      //refractive index of cladding

//Calculation
NA=sqrt((n1**2)-(n2**2));     //numerical aperture

//Result
printf('numerical aperture is %0.3f     \n',(NA))
exit();
