errcatch(-1,"stop");mode(2);//example 21

emicur=1*10^-3;//ampere
colcur=0.995*10^-3;//ampere
alpha1=colcur/emicur;
beta1=alpha1/(1-alpha1);
disp("alpha   =   "+string((alpha1)));
disp("beta   =   "+string((beta1)));




exit();
