mode(2);errcatch(-1,"stop");driver("GIF");//Example 6.9b
//Program to Plot Magnitude Responce of ideal H.P.F. 
//using Hamming Window 
//wc1=0.25*pi
//N=11
clear;
clc ;
close ;
N=11;
U=6;
h_hamm=window('hm',N);
for n=-5+U:1:5+U
if n==6  
hd(n)=0.75;      
else
hd(n)=(sin(%pi*(n-U))-sin(%pi*(n-U)/4))/(%pi*(n-U));
end
h(n)=h_hamm(n)*hd(n);
end
[hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2*fr , hzm_dB )
a= gca ();
xlabel ('Frequency w*pi');
ylabel ('Magnitude in dB');
title ('Frequency Response of FIR HRF with N=11 using Hamming Window');
xgrid (2);
xinit('/home/fossee/Downloads/tbc_graphs/Digital_Signal_Processing_R._Babu_52/Example6_9_b');xend();exit();
