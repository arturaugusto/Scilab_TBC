mode(2);errcatch(-1,"stop");driver("GIF");clear; clc; 

Vm = 20;    //volts
Vdc = -0.318*(Vm-0.7);    //volts

disp(Vdc,'Dc voltage for silicon diode :');


t = 0:0.1:4*%pi;
x = (20-0.7)*sin(t);

for i=1:length(t)
    if(x(i)<=0)
       y(i) = x(i);
    else y(i)=0
    end
end           

plot(t,y);
xtitle('output for silicon diode','t','Vo');

xinit('/home/fossee/Downloads/tbc_graphs/Electronics_Devices_And_Circuit_Theory_R._L._Boylestad_And_L._Nashelsky_69/2_16_b');xend();exit();
