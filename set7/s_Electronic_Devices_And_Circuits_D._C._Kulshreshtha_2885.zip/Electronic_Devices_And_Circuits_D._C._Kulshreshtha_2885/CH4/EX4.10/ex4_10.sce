errcatch(-1,"stop");mode(2);//calculate ac current gain in CE and CC configuration
;
;
//soltion
//given
a=0.99;
B=a/(1-a);
printf("The ac current gain in CE configuration is %.0f\n",B);
y=1+B;
printf("The ac current gain in CC configuration is %.0f",y);

exit();
