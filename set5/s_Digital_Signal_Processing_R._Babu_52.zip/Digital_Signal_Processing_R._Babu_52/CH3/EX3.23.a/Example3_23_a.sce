errcatch(-1,"stop");mode(2);//Example 3.23 (a)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//N point DFT of delta(n)
;
syms n k N;
x=1;
X=symsum(x*exp(-%i*2*%pi*n*k/N),n,0,0);
disp(X,'X(k)=');
exit();
