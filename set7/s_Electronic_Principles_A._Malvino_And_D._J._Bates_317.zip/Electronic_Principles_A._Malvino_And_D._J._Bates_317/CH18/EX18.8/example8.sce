mode(2);errcatch(-1,"stop");driver("GIF");// find output voltage 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 18-8, page 679

clear; clc; 

// Given data
R1=1.5*10^3;// in ohms from the given figure
Rf=75*10^3;// in ohms from the given figure
Vin=0;// input voltage in mVpp
Inbias=80*10^-9;// input bias current in amperes        
Inoff=20*10^-9;// input offset current in amperes
Vinoff=2*10^-3;// input offset voltage in volts
Rb1=0;// in ohms

// Calculations
Rb2=R1*Rf/(R1+Rf);// in ohms
V1err=(Rb1-Rb2)*Inbias;// unwanted dc error input in volts
V2err=(Rb1+Rb2)*Inoff/2;// unwanted dc error input in volts
V3err=Vinoff;// unwanted dc error input in volts
Avcl=-Rf/R1;// cloased loop voltage gain
Verror=Avcl*(V1err+V2err+V3err);// output error voltage in volts;
Vout=Verror;// output voltage in volts
disp("Volts",Verror,"output error voltage=")

// Result
// Output voltage will be (+ or -) 94.9 mVolts
xinit('/home/fossee/Downloads/tbc_graphs/Electronic_Principles_A._Malvino_And_D._J._Bates_317/example8');xend();exit();
