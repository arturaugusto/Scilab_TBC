errcatch(-1,"stop");mode(2);//Example 2.53 (c)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z transform of delta(n)
;
syms n z k;
x=1;
X=symsum(x*z^(-n),n,k,k);
disp(X,'X(z)=');
exit();
