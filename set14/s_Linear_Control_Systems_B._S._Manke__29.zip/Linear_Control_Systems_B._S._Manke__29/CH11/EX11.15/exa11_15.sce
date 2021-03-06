errcatch(-1,"stop");mode(2);//caption:determine_Wn,Wd,zeta_and_steady_state_error
//example 11_15
//page 484
s=%s;
G=sym('25/(s*(s+5))');
G=simple(G);
H=1;
CL=G/.H;
CL=simple(CL);
disp(CL,"C(s)/R(s)=");
printf("the char. eq is:")
disp("s^2+5*s+25")
Wn=sqrt(25)//natural_frequency
//2*zeta*Wn=5
zeta=5/(2*Wn);//damping ratio
d=zeta*Wn;//damping_factor
z=sqrt(1-zeta^2);
Wd=Wn*z;//damped_frequency_of_oscillation
Mp=exp((-zeta*%pi)/z)*100;//%_max.peak_overshoot
//steady state error for unit ramp input is:Ess= (2*zeta/Wn)
Ess=(2*zeta/Wn);//steady state error
disp("part(a):")
disp(Wn,"natural_frequency=");
disp(zeta,"damping ratio=");
disp(Wd,"damped_frequency_of_oscillation=");
disp(Mp,"%_max.peak_overshoot=");
disp(Ess,"steady state error=");
//if damping ratio is increased from 0.5 to 0.75 by incorporating tachometer feedback
zeta=0.75;
H1=sym('s*Kt')//tachometer_feedback
CL1=G/(1+G*H1);
CL1=simple(CL1);
CL2=CL1/(1+H*CL1);
CL2=simple(CL2);
disp(CL2,"C(s)/R(s)=");
Wn=sqrt(25);
//2*zeta*Wn=25*Kt+5;
Kt=(2*zeta*Wn-5)/25;//tachometer_gain
Mp1=exp((-zeta*%pi)/sqrt(1-zeta^2))*100;//%_peak_overshoot
disp("After applying tachometer feedback:")
disp(Kt,"tachometer_gain=");
disp(Mp1,"%_peak_overshoot=");

exit();
