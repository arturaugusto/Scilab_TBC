errcatch(-1,"stop");mode(2);//no output
//ques15
disp('To find the inverse laplace transform of the function');
syms s t a

f=1/((s^2+a^2)^2);
il=ilaplace(f,s,t);
disp(il);


exit();
