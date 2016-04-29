errcatch(-1,"stop");mode(2);;
;
format('v',11);
G=6.6726*10^-11;
Me=9.1094*10^-31;
Mp=1.6749*10^-27;
rb=.53*10^-10;
Fg=G*Me*Mp/rb^2;
Fc=(1.602*10^-19)^2/(4*3.14*8.85*10^-12*rb^2);
disp(Fg,"gravitational force(in newton)=");
disp(Fc,"electrostatic force(in newton)=");
disp(" times the gravitational force.",Fc/Fg,"the electrostatic force is ");

exit();
