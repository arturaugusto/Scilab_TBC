errcatch(-1,"stop");mode(2);pathname=get_absolute_file_path('5_01.sce')
filename=pathname+filesep()+'5_01data.sci'
exec(filename)
L=q*c*Cl;disp(L,"L=","L=q*c*Cl","Lift per unit span L:")
D=q*c*Cd;disp(D,"D=","D=q*c*Cd","Drag per unit span D:")
M=q*c*Cm*c;disp(M,"M=","M=q*c*Cm*c","Moment per unit span M:")
printf("\Answer:\n")
printf("\n\Lift about the quarter chord,per unit span: %f N\n\n",L)
printf("\n\Drag about the quarter chord,per unit span: %f N\n\n",D)
printf("\n\moment about the quarter chord,per unit span: %f N.m\n\n",M)

exit();
