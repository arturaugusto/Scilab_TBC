errcatch(-1,"stop");mode(2);

disp('the five digits can be arranged in 5! ways =')
factorial(5)
disp('of which 4! will begin with 0=')
factorial(4)
disp('so,total no. of five digit numbers=5!-4!=')
factorial(5)-factorial(4) 
disp('the numbers ending in 04,12,20,24,32,40 will be divisible by 4')
disp('numbers ending in 04=3!')
factorial(3)
disp('numbers ending in 12=3!-2!')
factorial(3)-factorial(2)
disp('numbers ending in 20=3!')
factorial(3)
disp('numbers ending in 24=3!-2!')
factorial(3)-factorial(2)
disp('numbers ending in 32=3!-2!')
factorial(3)-factorial(2)
disp('numbers ending in 40=3!')
factorial(3)
disp('so,total no. of favourable ways=6+4+6+4+4+6=')
6+4+6+4+4+6
disp('probability=30/96=')
30/96
exit();
