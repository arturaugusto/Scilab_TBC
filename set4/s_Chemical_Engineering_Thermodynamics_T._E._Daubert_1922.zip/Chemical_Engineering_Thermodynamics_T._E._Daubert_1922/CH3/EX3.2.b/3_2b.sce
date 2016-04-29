errcatch(-1,"stop");mode(2);

//Initialization of variables
t1=1000 //K
p1=20 //Mpa
p2=10 //Mpa
ti=600 //K
t2=700 //K
v1=0.02188
vi=0.02008
v2=0.02825
Ei=2617.5
E2=2893.1
E1=3441.8
x=0.22
m=1 //kg
cp=4.186
t3=639 //K
H3=2409.5
H1=3879.3
//calculations
Tf= ti+ (v1-vi)/(v2-vi) *(t2-ti)
Hf=H3 - m*cp*(t3-Tf)
Q2=Hf-H1
//results
disp("part b")
printf("Heat transfer = %.1f kJ/kg",Q2)

exit();
