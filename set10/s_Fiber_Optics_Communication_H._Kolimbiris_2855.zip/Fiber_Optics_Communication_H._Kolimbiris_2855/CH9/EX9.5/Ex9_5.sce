errcatch(-1,"stop");mode(2);




//Chapter 9
//page no 304
//given
;
 all;
L=850;          //in nm
L1=0.850;           //converted L in micrometer for using in given formula
A=0.5;          //in dB/km
d=5;        //in micrometer
Bw=1;           //in Gz
Po=4.4*10^-3*A*Bw*L1^2*d^2;
printf(" \n Po(Th) =  %0.3f W",Po);
printf(" \n Therefore,Po(Th) =  %0.0f mW",Po*1000);



exit();
