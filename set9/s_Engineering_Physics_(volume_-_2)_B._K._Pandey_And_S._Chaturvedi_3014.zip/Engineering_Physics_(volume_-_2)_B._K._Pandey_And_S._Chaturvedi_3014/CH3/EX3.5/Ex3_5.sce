errcatch(-1,"stop");mode(2); 
//given that
d = 2.5 // crystal spacing in angstrom
n = 1 // order for longest passing wavelength
theta = 20 // angle for longest passing wavelength
printf("Example 3.5")
lambda = 2*d*sin(theta*%pi/180)/n // Calculation of longest wavelength

printf("\nLongest wavelength is %f angstrom. \n\n\n",lambda)

 

exit();
