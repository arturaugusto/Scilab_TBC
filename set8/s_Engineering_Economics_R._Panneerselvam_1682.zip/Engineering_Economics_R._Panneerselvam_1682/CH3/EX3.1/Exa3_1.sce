errcatch(-1,"stop");mode(2);//Exa3_1
;
;

//given data is :
P=20000;//in rupees
n=10;//in years
i=18;//% per annum
F=P*(1+i/100)^n;
disp("Maturity value after 18 years is : "+string(F)+" Rupees.");
//Note : Ans in the book is not correct.
exit();
