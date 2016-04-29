errcatch(-1,"stop");mode(2);
//To determine the Overall cost per kWhr
//Page 82
;
;

// C1 =(100,000 rupees + 100 rupees/kW + 6 paise /kWhr) //Base Load Station
// C2 =(80,000 rupees + 60 rupees/kW + 8 paise /kWhr) //Peak Load Station

MaxD=15*(10^6);
MinD=5*(10^6);

deff('a=BLS(b,c)','a=100000+(b*100)+((6/100)*c)'); //Function to Find Annual Cost of Base Load Station.


deff('a=PLS(b,c)','a=80000+(b*60)+((8/100)*c)'); //Function to Find Annual Cost of Peak Load Station.

//Also from the Annual Cost characteristics of the base load and peak load station we find co-efficients which are helpful in computing the number of hours a peak load station must work for minimum cost

a1=100;
a2=60;
b1=6/100;
b2=8/100;

Tpeak=(a1-a2)/(b2-b1); //Number of hours the peak plant should operate
//From the straight line annual load duration curve, Maximum Demand at Peak Load Station can be calculated
MDP=Tpeak*(MaxD-MinD)/8760;

TotEG=(MaxD+MinD)*8760/(2*1000); //Total Energy Generated
EGP=MDP*Tpeak/(2*1000); //Energy Generated by Peak Load
EGB=TotEG-EGP; //Energy Generated by Base Load

MDB=MaxD-MDP; //Maximum Demand at the Base Load

//Total Annual Cost of Base Load and Peak Load Stations Respectively
C1=BLS((MDB/1000),EGB);
C2=PLS((MDP/1000),EGP);

TotC=C1+C2; //Total Cost of both the plants
CE=TotC*100/TotEG; //Cost of energy in paise per kWhr

printf('The Operating Scedule of Peak Load Station for Minimum Annual Cost is %g hours\n',Tpeak)
printf(' The Overall Cost per kWhr is %g paise \n',CE)

exit();
