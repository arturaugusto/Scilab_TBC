errcatch(-1,"stop");mode(2);//Chapter 16,Example 11,page 564
//Determine the equation generated by impulse


w = 0.02*10^6 // s^-1 obtained by solving eq 16.47 iteratively
R = sqrt(4-(sqrt(8*8*4)*0.02)^2) // solved the simplified equation
L = 8*10^-6
V = 25*10^3
// In equation 16.46
y = R/(2*L)
// Deriving the equation
a = V/(w*L)
printf("\n R = %e ohm",R)
printf("\n y = %e s^-1",y)
printf("\n I(t) = %e * exp(%et) * sin(%et) A",a,-y,w) 

// Answers may vary due to round off error

exit();
