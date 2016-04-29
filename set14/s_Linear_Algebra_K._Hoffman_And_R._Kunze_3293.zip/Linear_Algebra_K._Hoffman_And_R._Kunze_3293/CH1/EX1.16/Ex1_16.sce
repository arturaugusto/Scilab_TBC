errcatch(-1,"stop");mode(2);//page 25
//Example 1.16
;

;
a = [1 1/2 1/3;1/2 1/3 1/4;1/3 1/4 1/5];
disp(a,'a = ');
b = eye(3,3);
disp(b,'b = ');
disp('Applying row transformations on a and b simultaneously,');
disp('R2 = R2 - 1/2 * R1 and R3 = R3 - 1/3*R1');
a(2,:) = a(2,:) - 1/2 * a(1,:);
a(3,:) = a(3,:) - 1/3 * a(1,:);
b(2,:) = b(2,:) - 1/2 * b(1,:);
b(3,:) = b(3,:) - 1/3 * b(1,:);
disp(a,'a = ');
disp(b,'b = ');
disp('R3 = R3 - R2');
a(3,:) = a(3,:) -  a(2,:);
b(3,:) = b(3,:) -  b(2,:);
disp(a,'a = ');
disp(b,'b = ');
disp('R2 = R2 * 12 and R3 = R3 * 180');
a(2,:) = a(2,:) *12;
a(3,:) = a(3,:) * 180;
b(2,:) = b(2,:) * 12;
b(3,:) = b(3,:) * 180;
disp(a,'a = ');
disp(b,'b = ');
disp('R2 = R2 - R3 and R1 = R1 - 1/3*R3');
a(2,:) = a(2,:) - a(3,:);
a(1,:) = a(1,:) - 1/3 * a(3,:);
b(2,:) = b(2,:) - b(3,:);
b(1,:) = b(1,:) - 1/3 * b(3,:);
disp(a,'a = ');
disp(b,'b = ');
disp('R1 = R1 - 1/2 * R2');
a(1,:) = a(1,:) -  1/2 * a(2,:);
b(1,:) = b(1,:) -  1/2 * b(2,:);
disp(round(a),'a = ');
disp(b,'b = ');
disp('Since, a = identity matrix of order 3*3. So, b is inverse of a');
disp(b,'inverse(a) = ');
//end

exit();
