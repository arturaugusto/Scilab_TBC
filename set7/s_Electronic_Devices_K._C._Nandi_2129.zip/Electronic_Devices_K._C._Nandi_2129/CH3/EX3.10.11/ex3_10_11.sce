errcatch(-1,"stop");mode(2);// Exa 3.10.11
;
;

// Given data
I_o = 10;// in nA
// I = I_o * ((e^(v/(Eta * V_T))) - 1)
// e^(v/(Eta * V_T)<< 1, so neglecting it
I = I_o * (-1);// in nA
disp(I,"The Diode current in nA is  ");

exit();
