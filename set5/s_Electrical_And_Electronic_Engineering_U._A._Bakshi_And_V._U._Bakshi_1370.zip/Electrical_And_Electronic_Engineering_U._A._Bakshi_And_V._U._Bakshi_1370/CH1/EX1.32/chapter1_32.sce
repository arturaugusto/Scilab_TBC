errcatch(-1,"stop");mode(2);//example1.32

disp("Use the loop analysis")
disp("From the current source branch,")
disp("I3=1 A")
disp("Applying KVL to the loops without current source we get,")
disp("-6(I1)-4-5(I1)+5(I2)=0    i.e.    -11(I1)+5(I2)=4  ..(1)")
disp("-5(I2)+5(I1)-6-4(I2)-4(I3)=0  i.e.    5(I1)-9(I2)=10  (2)")
disp("Solving, we get:")
disp("-11(I1)+5((5I1-10)/9)=4")
disp("Therefore,    -99(I1)+25(I1)-50=36")
i=86/(-74)
format(7)
disp(i,"Therefore,      I1(in A)=")
i=((5*(-1.1621))-10)/9
disp(i,"and,    I2(in A)=")
disp("Current through 5ohm in specified direction is,")
i=(-1.7567+1.1621)
disp(i,"I(5ohm)[in A]=I2-I1= -1.7567-(-1.1621)=")
disp("As negative, current through 5ohm flows in opposite direction to that specified in the circuit.")

exit();
