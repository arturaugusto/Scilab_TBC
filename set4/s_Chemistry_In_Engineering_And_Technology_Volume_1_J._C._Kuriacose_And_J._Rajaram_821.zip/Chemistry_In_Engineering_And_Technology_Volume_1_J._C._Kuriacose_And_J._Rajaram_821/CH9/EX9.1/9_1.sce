errcatch(-1,"stop");mode(2);printf('Let M be the Molecular weight of the dye.Original concentration is 30.1/M mol litre^-1');
I0=100;
I=50;
b=1;
A=log10(I0/I);
printf('\nFrom Beers law=A=%f',A);
x=A/30.1;
printf('\na/M=%f',x);
c=15.05;
I=70.7;
printf('\nPercentage of light transmitted=I=%f',I);
AI=100-I;
printf('\nPercentage of light absorbed=AI=%f',AI);
c=60.2;
I=25;
printf('\nPercentage of light transmitted=I=%f',I);
AI=100-I;
printf('\nPercentage of light absorbed=AI=%f',AI);
printf('\nIt must be noted that it is absorbance A that is linearly related to concentration and not percentage light transmitted or absorbed');
b=2;
c=30.1;
I=25;
printf('\nPercentage of light transmitted=I=%f',I);
b=4.32;
printf('\nb=%fcm',b);


exit();
