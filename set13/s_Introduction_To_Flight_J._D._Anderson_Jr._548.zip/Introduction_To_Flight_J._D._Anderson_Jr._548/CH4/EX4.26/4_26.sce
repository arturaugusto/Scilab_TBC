errcatch(-1,"stop");mode(2);pathname=get_absolute_file_path('4_26.sce')
filename=pathname+filesep()+'4_26data.sci'
exec(filename)
Tw1=q*Cf1;disp(Tw1,"Tw1=","Tw1=q*Cf1","shear stress at 1 cm Tw1:");
Tw2=q*Cf2;disp(Tw2,"Tw2=","Tw2=q*Cf2","shear stress at 1 cm Tw2:");
printf("\Answer:\n")
printf("\n\Local shear stress at 1 cm: %f N/m^2\n\n",Tw1)
printf("\n\Local shear stress at 5 cm: %f N/m^2",Tw2)

exit();
