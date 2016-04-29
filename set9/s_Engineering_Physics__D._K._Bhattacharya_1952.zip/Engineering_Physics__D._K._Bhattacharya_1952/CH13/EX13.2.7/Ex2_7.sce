errcatch(-1,"stop");mode(2);// Additional solved numerical questions  , Example(set 2)  7 , pg 353
lam=0.5*10^-9    //wavelength   (in m)
h=6.625*10^-34//plancksconstant(in J s)
c=3*10^8//velocity of x-ray photon(in m/sec)
m0=9.11*10^-31//rest mass of electron(in Kg)
phi=(45*%pi)/180//angle of scattering (in radian)   (converting degree into radian)
delta_H=(h*(1-cos(phi)))/(m0*c)//change in wavelength due to compton scattering      (in m)
LAM=lam+delta_H    //wavelength     (in m)
printf("wavelength of scattered radiation (im m)=")
disp(LAM)

exit();
