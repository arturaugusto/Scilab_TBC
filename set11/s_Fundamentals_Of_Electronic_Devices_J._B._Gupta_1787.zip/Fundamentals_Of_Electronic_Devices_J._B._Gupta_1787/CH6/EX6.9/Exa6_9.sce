errcatch(-1,"stop");mode(2);//Exa 6.9
;
;

//given data
RL=1;//in Kohm
VL=1.2;//in volt
Beta=60;//unitless
IC=VL/RL;//in mA
IB=IC/Beta;//in mA
disp(IB*1000,"Base current in uA : ");
exit();
