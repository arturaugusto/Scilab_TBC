errcatch(-1,"stop");mode(2);; ; 

Rb = 3.3*(10^(6));
Beta = 8000;
Re = 390;

Ai = (Beta*Rb)/(Rb+Beta*Re);
disp(Ai,"ac current gain(Ai) :");

exit();
