errcatch(-1,"stop");mode(2);// Additional solved examples , Example 8 , pg 334
n1=1.5//core refractive index
n2=1.45//cladding refractive index
c=3*10^8//speed of light(in m/s)
P=(n1*(n1-n2))/(n2*c)  //pulse broadening per unit length due to multiple dispersion
//P=(del_t/L)    where del_t=time interval  , L=distance  transversed by ray inside core
printf("pulse broadening per unit length due to multiple dispersion(in s/m)")
disp(P)

exit();
