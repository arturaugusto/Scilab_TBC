errcatch(-1,"stop");mode(2);// Exa 5.8.2
;
;

// Given data
alpha = 0.9;
I_E = 1;// mA
I_C = alpha * I_E;// in mA
I_B = I_E - I_C;// in mA
disp(I_B,"The value of base current in mA is");

exit();
