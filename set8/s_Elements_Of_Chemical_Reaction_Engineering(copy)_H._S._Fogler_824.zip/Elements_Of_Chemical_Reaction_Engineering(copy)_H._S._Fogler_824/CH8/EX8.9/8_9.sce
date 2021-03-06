mode(2);errcatch(-1,"stop");driver("GIF");//clear//
clc
clear
//eY(2)ec("8.6data.sci");
W = 0:1:28.58;
W0=0;
function w=f(W,Y)
  w =zeros(3,1);
  
  
fao=.188
visc=.090
Ta=1264.67
deltah=-42471-1.563*(Y(3)-1260)+.00136*(Y(3)**2-1260**2)-(2.459*10**(-7))*(Y(3)**3-1260**3);
summ= 57.23+.014 * Y(3)-1.94 *10**(-6.)*Y(3)**2
dcp=-1.5625+2.72*10**(-3)*Y(3)-7.38*10**(-7)*Y(3)**2
k=360D*exp(-176008/Y(3)-(110.1*log(Y(3)))+912.8)
thetaso=0;
Po=2
Pao=.22
thetao=.91
eps=-.055
R=1.987;
Kp=exp(42311/R/Y(3)-11.24);
if(Y(2)< =.05)
  
  ra=(-k*(.848-.012/(Kp**2)));
else
  ra=(-k*(1-Y(2))/(thetaso+Y(2)))**.5*(Y(1)/Po*Pao*((thetao-.5*Y(2))/((1+eps*Y(2)))-((thetaso+Y(2))/(1-Y(2)))**2/(Kp**2)));
end

w(1)=(-1.12*10**(-8)*(1-.055*Y(2))*Y(3))*(5500*visc+2288)/Y(1) ;
w(2)=-(ra)/fao ;
w(3)=(5.11*(Ta-Y(3))+(-ra)*(-deltah) )/(fao*(summ+Y(2)*dcp)) 
endfunction

X=ode([2;0;1400],W0,W,f);

plot2d(W,X(1,:)); 
plot2d(W,X(3,:)); 

xinit('/home/fossee/Downloads/tbc_graphs/Elements_Of_Chemical_Reaction_Engineering(copy)_H._S._Fogler_824/8_9');xend();exit();
