errcatch(-1,"stop");mode(2);//function//
A=[-2 1;0 -3]
B=[4;1]
C=[1 0]
[O]=obsv_mat(A,C);
disp(O,"Observability Matrix=")
//To Check Whether the matrix(Cc)is singular i.e determint of Cc=0
if determ(O)==0;
printf("Since the matrix is Singular, the system is not Observable \n");
else;
printf("The system is  Observable \n")
 end;

exit();
