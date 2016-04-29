errcatch(-1,"stop");mode(2);// Example 4.6
;
;

// Given data
bita= 100;
V_BE= 0;// in V
V_BB= 15;// in V
R_B= 470;// in kΩ
R_B= R_B*10^3;// in Ω
V_CC= 15;// in V
R_C= 3.6;// in kΩ
R_C= R_C*10^3;// in Ω
I_B= (V_BB-V_BE)/R_B;// in A
I_C= bita*I_B;// in A
V_CE= V_CC-I_C*R_C;// in V
I_E= I_C+I_B;// in A
disp(I_B*10^6,"The base current in µA is : ")
disp(I_C*10^3,"The collector current in mA is : ")
disp(V_CE,"The value of V_CE in volts is : ")
disp(I_E*10^3,"The emitter current in mA is ; ")

exit();
