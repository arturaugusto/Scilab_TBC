errcatch(-1,"stop");mode(2);// Exa 6.15
;
;

format('v',5)
// Given data
BetaAvPlus1 = 10;// in dB
BetaAvPlus1 = 10^(BetaAvPlus1/20);// unit less
BetaAv = BetaAvPlus1 - 1;// unit less
dAvByAv = 0.05;// unit less
//Beta*Av = (dAvByAv/dAvfByAvf)-1;
dAvfByAvf = dAvByAv/( BetaAv+1 );// unit less
dAvfByAvf = dAvfByAvf * 100;// in %
disp(dAvfByAvf,"The percentage change in the d loop gain in % is");

exit();
