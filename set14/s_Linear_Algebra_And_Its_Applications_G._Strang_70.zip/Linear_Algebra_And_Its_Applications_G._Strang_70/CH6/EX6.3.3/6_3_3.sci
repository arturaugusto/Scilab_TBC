errcatch(-1,"stop");mode(2);//332
;

;
A=[1 -2;3 -1];
disp(A,'A=');
[U S V]=svd(A);
Q=U*V';
S=V*S*V';
disp(Q,'Q=');
disp(S,'S=');
disp(Q*S,'A=SQ=')
//end
exit();
