errcatch(-1,"stop");mode(2);//Example 1.3://limiting error
;
;

fs=1.5;//full scale in percentage
vr=500;//voltmeter reading
ea=(fs/100)*vr;//volts
le=150;//limiting error voltage
lep=((ea/le)*100);//limiting error
disp(lep,"limiting error at 150 V is ,(%)=")

exit();
