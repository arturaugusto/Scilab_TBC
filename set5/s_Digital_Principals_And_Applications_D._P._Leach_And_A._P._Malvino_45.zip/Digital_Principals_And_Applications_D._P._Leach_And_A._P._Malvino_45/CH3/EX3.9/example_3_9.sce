errcatch(-1,"stop");mode(2);//example 3.4 
;
;
disp('Given the truth table has high output for following conditons :');
a=[0 0 0 ; 0 0 1 ; 0 1 0 ] //given truth table 
disp(a)

for (i=1:3) //finding the terms in pos 
    if  a(i,1)==0 then
        b(i,1)= 'A'
    else 
        b(i,1)= 'A^'
    end
    if  a(i,2)==0 then
        b(i,2)= 'B'
    else 
        b(i,2)= 'B^'
    end
    if  a(i,3)==0 then
        b(i,3)= 'C'
    else
        b(i,3)= 'C^'
    end
end
disp(b)
disp('The product-of-sums equation is  :') //displaying the POS 
x=strcat(["(" b(1,1) " + " b(1,2) " + " b(1,3) ")" "(" b(2,1) " + " b(2,2) " + " b(2,3) ")" "(" b(3,1) " + " b(3,2) " + " b(3,3) ")" ]);
disp(x)
exit();
