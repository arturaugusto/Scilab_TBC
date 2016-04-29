errcatch(-1,"stop");mode(2);pathname=get_absolute_file_path('4_14.sce')
filename=pathname+filesep()+'4_14data.sci'
exec(filename)
disp("P2+D(V2^2-V1^2)/2","pressure at reservoir P1=")
P1=P2+D*(V2^2-V1^2)/2;disp(P1,"P1=")
disp("Mt=D*A1*V1","mass flow rate :")
Mt=D*A1*V1;disp(Mt,"Mt=")
printf("\Answer:\n")
printf("\n\pressure required to have a velocity of 40 m/s at test section: %f N/m^2\n\n",P1)
printf("\n\mass flow through the wind tunnel: %f Kg/s\n\n",Mt)

exit();
