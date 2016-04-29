mode(2);errcatch(-1,"stop");driver("GIF");clc;
clear;
printf("\t\t\tChapter4_example9\n\n\n");
rou=.5*1000;
cp=837;
k=0.128;
alpha=0.049e-5;
// let Fo=0.5 and dx=0.05
dt=0.5*(0.05)^2/alpha;
printf("\nThe time increment is %.3f hr",dt/3600);
p=1;
m=6;
A=2*eye(6,6);
n=1;
N=1;
for j=1:n
    for i=1:6
        T(i,j)=20;
    end
end
for n=1:7
    for i=1:4
        B(i+1,n)=T(i+2,n)+T(i,n);
        B(1,n)=T(i+1,n)+200;
        B(6,n)=2*T(i+1,n);
    end
Temp=inv(A)*B(:,n); // temperature at the different points
printf("\nThe temperature at different points after %d time interval are:",n);
T(:,n+1)=Temp;
disp(T(:,n+1));
end
time=n*dt;
printf("\nThe required time is %.2f hr",time/3600);
x=0:5:30;
plot(x,[200;T(:,2)]);
a1=gca();
a1.data_bounds=[0,0;30,200];
xtitle('(a) After 0.709 hr','T degree C','x, cm');
newticks=a1.x_ticks;
newticks(2)=[0;10;20;30];
newticks(3)=['0';'10';'20';'30'];
a1.x_ticks=newticks;
newticks1=a1.y_ticks;
newticks1(2)=[0;50;100;150;200];
newticks1(3)=['0';'50';'100';'150';'200'];
a1.y_ticks=newticks1;
plot(x,[200;T(:,3)]);
a2=gca();
hl=legend(['After 2(0.709) hr ';'After (0.709) hr ']);
a2.data_bounds=[0,0;30,200];
xtitle('(b) After 2(0.709) hr ','T degree C','x, cm');
newticks=a2.x_ticks;
newticks(2)=[0;10;20;30];
newticks(3)=['0';'10';'20';'30'];
a2.x_ticks=newticks;
newticks1=a2.y_ticks;
newticks1(2)=[0;50;100;150;200];
newticks1(3)=['0';'50';'100';'150';'200'];
a2.y_ticks=newticks1;
filename='(b) After 2(0.709) hr ';
clf();
plot(x,[200;T(:,4)],x,[200;T(:,3)]);
a3=gca();
hl=legend(['After 3(0.709) hr ';'After 2(0.709) hr ']);
a3.data_bounds=[0,0;30,200];
xtitle('(c) After 3(0.709) hr ','T degree C','x, cm');
newticks=a3.x_ticks;
newticks(2)=[0;10;20;30];
newticks(3)=['0';'10';'20';'30'];
a3.x_ticks=newticks;
newticks1=a3.y_ticks;
newticks1(2)=[0;50;100;150;200];
newticks1(3)=['0';'50';'100';'150';'200'];
a3.y_ticks=newticks1;
clf();
plot(x,[200;T(:,5)],x,[200;T(:,4)]);
a4=gca();
hl=legend(['After 4(0.709) hr ';'After 3(0.709) hr ']);
a4.data_bounds=[0,0;30,200];
xtitle('(d) After 4(0.709) hr ','T degree C','x, cm');
newticks=a4.x_ticks;
newticks(2)=[0;10;20;30];
newticks(3)=['0';'10';'20';'30'];
a4.x_ticks=newticks;
newticks1=a4.y_ticks;
newticks1(2)=[0;50;100;150;200];
newticks1(3)=['0';'50';'100';'150';'200'];
a4.y_ticks=newticks1;
clf();
plot(x,[200;T(:,6)],x,[200;T(:,5)]);
a5=gca();
hl=legend(['After 5(0.709) hr ';'After 4(0.709) hr ']);
a5.data_bounds=[0,0;30,200];
xtitle('(e) After 5(0.709) hr ','T degree C','x, cm');
newticks=a5.x_ticks;
newticks(2)=[0;10;20;30];
newticks(3)=['0';'10';'20';'30'];
a5.x_ticks=newticks;
newticks1=a5.y_ticks;
newticks1(2)=[0;50;100;150;200];
newticks1(3)=['0';'50';'100';'150';'200'];
a5.y_ticks=newticks1;
clf();
plot(x,[200;T(:,7)]);
a6=gca();
a6.data_bounds=[0,0;30,200];
xtitle('(f) After 7(0.709) hr ','T degree C','x, cm');
newticks=a6.x_ticks;
newticks(2)=[0;10;20;30];
newticks(3)=['0';'10';'20';'30'];
a6.x_ticks=newticks;
newticks1=a6.y_ticks;
newticks1(2)=[0;50;100;150;200];
newticks1(3)=['0';'50';'100';'150';'200'];
a6.y_ticks=newticks1;

xinit('/home/fossee/Downloads/tbc_graphs/Engineering_Heat_Transfer_W._S._Janna_1309/ch4_9');xend();exit();
