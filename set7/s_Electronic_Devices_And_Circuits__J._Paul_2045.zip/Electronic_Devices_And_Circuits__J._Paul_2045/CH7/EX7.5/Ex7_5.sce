errcatch(-1,"stop");mode(2);//pagenumber 373 example 5

idss=10*10^-3;//ampere
pinvol=-1;//volt
ids=6.4*10^-3;//ampere
vgs=-(sqrt(ids/idss)-(1))*pinvol;
r=pinvol/ids;


disp("source resistance   =   "+string(abs(r))+"ohm");


exit();
