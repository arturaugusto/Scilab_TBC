errcatch(-1,"stop");mode(2);//page 8
//Example 1.5
;

;
a = [2 -1 3 2; 1 4 0 -1; 2 6 -1 5];
disp(a,'a=');
disp('Applying row transformations:');
disp('R1 = R1-2*R2');
a(1,:) = a(1,:) - 2*a(2,:);
disp(a,'a = ');
disp('R3 = R3-2*R2');
a(3,:) = a(3,:) - 2*a(2,:);
disp(a,'a = ');
disp('R3 = R3/-2');
a(3,:) = -1/2*a(3,:);
disp(a,'a = ');
disp('R2 = R2-4*R3');
a(2,:) = a(2,:) - 4*a(3,:);
disp(a,'a = ');
disp('R1 = R1+9*R3');
a(1,:) = a(1,:) + 9*a(3,:);
disp(a,'a = ');
disp('R1 = R1*2/15');
a(1,:) = a(1,:) * 2/15;
disp(a,'a = ');
disp('R2 = R2+2*R1');
a(2,:) = a(2,:) + 2*a(1,:);
disp(a,'a = ');
disp('R3 = R3-R1/2');
a(3,:) = a(3,:) - 1/2*a(1,:);
disp(a,'a = ');
disp('We get the system of equations as:');
disp('2*x1 - x2 + 3*x3 + 2*x4 = 0');
disp('x1 + 4*x2 - x4 = 0');
disp('2*x1 + 6* x2 - x3 + 5*x4 = 0');
disp('and');
disp('x2 - 5/3*x4 = 0','x1 + 17/3*x4 = 0','x3 - 11/3*x4 = 0');
disp('now by assigning any rational value c to x4 in system second, the solution is evaluated as:');
disp('(-17/3*c,5/3,11/3*c,c)');
//end

exit();
