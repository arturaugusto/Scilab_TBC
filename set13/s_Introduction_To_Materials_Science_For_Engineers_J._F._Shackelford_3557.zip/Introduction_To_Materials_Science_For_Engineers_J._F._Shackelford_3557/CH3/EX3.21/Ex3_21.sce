mode(2);errcatch(-1,"stop");driver("GIF");//Example 3.21//
a= 0.404;//nm //lattice parameter
a1=1;//given
b1=1;//given
c1=1;//given
b=sqrt(a1+b1+c1)
d111=a/b
mprintf("d111 = %f = nm",d111)
a2=2;//given
b2=0;//given
c2=0;//given
d200=a/sqrt(a2^2+b2+c2);
mprintf("\n d200 = %f nm",d200)
a3=2;//given
b3=2;//given
c3=0;//given
d220=a/sqrt(a3^2+b3^2+c3);
mprintf("\n d220 = %f nm",d220)
l=0.1542;//nm// from the figure 3.39
thetha111=asind(l/(a2*d111))
mprintf("\nthetha111 = %f degree",thetha111)
t111=a2*thetha111
mprintf("\nt111 = %f degree",t111)
thetha200=asind(l/(a2*d200))
mprintf("\nthetha200 = %f degree",thetha200)
t200=a2*thetha200
mprintf("\nt200 = %f degree",t200)
thetha220=asind(l/(a2*d220))
mprintf("\nthetha220 = %f degree",thetha220)
t220=a2*thetha220
mprintf("\nt220 = %f degree",t220)

xinit('/home/fossee/Downloads/tbc_graphs/Introduction_To_Materials_Science_For_Engineers_J._F._Shackelford_3557/Ex3_21');xend();exit();
