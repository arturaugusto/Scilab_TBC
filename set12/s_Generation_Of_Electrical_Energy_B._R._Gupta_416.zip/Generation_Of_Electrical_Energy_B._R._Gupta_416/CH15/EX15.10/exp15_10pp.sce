errcatch(-1,"stop");mode(2);

disp('example 15.10')
tc=2100  //total capacity of plant
n=60     //number of generaed
p=35     //power of generated by each generator
h=10     //head of water
d=12     //duration of generation
cee=2.1  //cost of electrical energy per kWh
efft=0.85 //efficiency of turbine
effg=0.9  //efficiency of generator
g=9.81   //gravity
ro=1025   //density
acc=0.7   //assuming coal conumotion
pi=p/(efft*effg) //power input
q=pi*10^6/(h*g*ro) //quantity of water
tqr=q*n*d*3600/2  //total quantity of water in reservoir
avp=tc/2 //average output during 12h
toe=avp*d  //total energy in 12 hours
eg=toe*365 //energy generated for totel year
coe=eg*cee*10^3 //cost of electrical energy generated
sc=eg*10^3*acc //saving cost 
printf("total quantity of water in reservoir %em^3 \nenergy generated per year %eMW \ncost of electrical energy Rs%e \nsaving in cost Rs.%e ",tqr,eg,coe,sc)

exit();
