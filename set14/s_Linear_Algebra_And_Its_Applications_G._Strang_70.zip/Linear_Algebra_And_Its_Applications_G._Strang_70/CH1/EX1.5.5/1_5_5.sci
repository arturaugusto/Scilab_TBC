errcatch(-1,"stop");mode(2);//page 39
;

;
A=[1 -1 0 0 ;-1 2 -1 0;0 -1 2 -1;0 0 -1 2];
disp(A,'A=');
[L,U]=lu(A);
disp(U,'U=');
disp(L,'L=');
disp('This shows how a matrix A with 3 diagnols has factors L and U with two diagnols.')
//end
exit();
