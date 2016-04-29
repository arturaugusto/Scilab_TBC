errcatch(-1,"stop");mode(2);;
;

//Example10.6[Condensation of Steam on horizontal Tubes]
//Given:-
Tsat=40;//[degree Celcius]
D=0.03;//[m]
Ts=30;//Outer Surface temperature of tube[degree Celcius]
Tf=(Ts+Tsat)/2;//Film Temperature[degree Celcius]
g=9.81;//[m/s^2]
//Properties of water at the saturation temp
h_fg=2407*10^3;//[J/kg]
rho_v=0.05;//[kg/m^3]
//Properties of liquid water at the film temperature
rho_l=994;//[kg/m^3]
Cp_l=4178;//[J/kg.degree Celcius]
mu_l=0.720*10^(-3);//[kg/m.s]
k_l=0.623;//[W/m.degree Celcius]
//Solution (a)
h_fg_m=h_fg+0.68*Cp_l*(Tsat-Ts);//[J/kg]
disp("J/kg",h_fg_m,"(a) The modified latent heat of vapourisation is")
h_hori=0.729*(((g*(rho_l^2)*h_fg_m*(k_l^3))/(mu_l*D*(Tsat-Ts)))^(1/4));//[W/m^2.degree Celcius]
disp("W/m^2.degree Celcius",h_hori,"The heat transfer coefficient for condensation on a single horizontal tube is")
As=%pi*D*1;//[m^2]
Q=h_hori*As*(Tsat-Ts);//[W]
disp("W",Q,"The rate of heat transfer during condensation Process is")
//Solution (b)
m=Q/h_fg_m;//[kg/s]
disp("kg/s",m,"(b) The rate of condensation of steam is")
exit();
