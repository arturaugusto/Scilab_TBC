errcatch(-1,"stop");mode(2);//Example 3.27 (b)
//Program to Compute the Convolution of the following Sequences
//x1[n]=[1,1,-1,-1,0]
//x2[n]=[1,0,-1,0,1]
;
 ;
 ;
x1=[1,1,-1,-1,0];
x2=[1,0,-1,0,1];
//Convolution Computation
X1=fft (x1,-1);
X2=fft (x2,-1);
Y=X1.*X2;
y= fft (Y,1);
//Display Sequence y[n] in command window
disp(y,"y[n]=");
exit();
