errcatch(-1,"stop");mode(2);//Example 7.1(a)

;

;

fL=0.1;

fH=100;

enw=20*10^(-9);

fce=200;

En=enw*sqrt((fce*log(fH/fL))+fH-fL);

printf("Estimated RMS input voltage=%.2f uV",En*10^6);
exit();
