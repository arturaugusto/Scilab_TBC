h=0.35;//location of center of gravity from leading edge
ao=-1.5;//geometric angle of attack for which lift is zero
a1=5;//angle of attack in degree
Cl1=0.52;//lift coefficient at 5 degree angle of attack
Awb=(.52-0)/(5-(-1.5))  //lift slope per degree
a2=1;//geometric angle of attack in degree
ab2=a2+1.5//absolute angle of attack at 1 degree
Cmcg=-0.01;//moment coefficient about center of gravity at 1 degree angle of attack  
a3=7.88;//geometric angle of attack in degree
ab3=a3+1.5;//absolute angle of attack at 7.88 degree
Cmcg2=0.05;//moment coefficient about center of gravity at 7.88 degree angle of attack 
//we have two equation in the form of Cmcg=Cmac+Clwb*(dh) and two unknown variables Cmac(moment coefficient about aerodynamic center )and dh(distance between aerodynamic center and center of gravity),so we use matrix method to solve them: