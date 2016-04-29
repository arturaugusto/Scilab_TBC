errcatch(-1,"stop");mode(2);
disp("given:")
disp("The voltage generated by an transducer which is connected to differential amplifier is Vdm=50mV ")
Vdm=50*(1/1000)//Vdm in volts
disp("Vcm=5V")
Vcm=5
disp("Vout should be equal to 10V")
Vout=10
disp("The unwanted output component owing to the common-mode input is to be less than 1% of the wanted component i.e Voutcm=1% of Voutdm")
Voutcm=(1/100)*10
printf(" Voutcm=%f",Voutcm)
disp("Let amplifier differential-mode gain be Adm")
disp("Vout,Admand Vdm are related as")
disp("Vout=Adm*Vdm------(1)")
disp("Adm=Vout/Vdm")
Adm=Vout/Vdm
printf(" Therefore amplifier differential-mode gain(Adm)=%d",Adm)
disp("Equation (1)can also be used for calculating unwanted output component")
disp("Unwanted components arise when operating in common-mode")
disp("Acm=Voutcm/Vcm")
Acm=Voutcm/Vcm
printf(" Common-mode gain Acm=%f",Acm)
disp("Now CMRR can be calculated using relation")
disp("CMRR=Adm/Acm")
CMRR=Adm/Acm
printf(" There fore CMRR of amplifier should be greater than or equal to %f",CMRR)
printf(" CMRR&gt;=%d",CMRR)

exit();
