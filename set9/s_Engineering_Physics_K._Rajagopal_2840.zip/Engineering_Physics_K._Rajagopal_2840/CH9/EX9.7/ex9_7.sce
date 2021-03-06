errcatch(-1,"stop");mode(2);;
 all;
m = 9.1e-31; // Mass of electron in kg
h = 6.62e-34; // Planck's constant in Js
c = 3e8; // Velocity of light in vaccum
lambda = 0.03e-10; // Wavelength of light in meters
theta = 60;//angle in degree
delta = (h*(1-cosd(theta)))/(m*c);
Nlambda = lambda + delta;
E = ((h*c)*((1/lambda)-(1/Nlambda)))/1.6e-19 ;//Energy of recoiling electron
disp('eV',E,'Energy of recoiling electron is ');

exit();
