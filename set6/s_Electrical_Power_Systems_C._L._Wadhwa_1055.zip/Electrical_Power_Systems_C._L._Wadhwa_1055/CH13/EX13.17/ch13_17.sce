errcatch(-1,"stop");mode(2);//To determine the line voltages and currents in per unit on delta side of the transformer

;
vab=2000;
vbc=2800;
vca=2500;
vb=2500;// base voltage (V)
Vab=vab/vb;// per unit voltages 
Vbc=vbc/vb;
Vca=vca/vb;
a=acosd(((1.12^2)-((.8^2)+1))/(2*.8));
b=acosd(((.8^2)-((1.12^2)+1))/(2*1.12));
Vlab=Vab*(cosd(76.06)+%i*sind(76.06));// line voltage 
Vlca=Vca*(cosd(180)+%i*sind(180));// line voltage 
Vlbc=Vbc*(cosd(-43.9)+%i*sind(-43.9));// line voltage 
L=1*(cosd(120) + %i*sind(120));
Vab1=(Vlab +(L*Vlbc) + ((L^2)*Vlca))/3;// symmetrical component of line voltage 
Vab2=(Vlab +(L*Vlca) + ((L^2)*Vlbc))/3;// symmetrical component of line voltage 
Vabo=0;// symmetrical component of line voltage 
Van1=Vab1*(cosd(-30)+ %i*sind(-30));
Van2=Vab2*(cosd(30)+ %i*sind(30));
Ia1=Van1/(1*(cosd(0) + %i*sind(0)));
Ia2=Van2/(1*(cosd(0) + %i*sind(0)));
VA1=-%i*Van1;
VA2=%i*Van2;
VA=VA1+ VA2;
VB1=(L^2)*VA1;
VB2=(L)*VA2;
VB=VB1 + VB2;
VC2=(L^2)*VA2;
VC1=(L)*VA1;
VC=VC1 + VC2;
VAB=VA-VB;
VBC=VB-VC;
VCA=VC-VA;
IA=VA;
IB=VB;
IC=VC;
phase_IA=atand(imag(IA)/real(IA));
phase_IB=atand(imag(IB)/real(IB));
phase_IC=atand(imag(IC)/real(IC));
disp(VAB,"VAB(p.u)=");
disp(VBC,"VBC(p.u)=");
disp(VCA,"VCA(p.u)=");
mprintf("IA(p.u)=%.2f at an agle of %.1f\n",abs(IA),phase_IA);
mprintf("IB(p.u)=%.2f at an agle of %.1f\n",abs(IB),phase_IB);
mprintf("IC(p.u)=%.2f at an agle of %.1f",abs(IC),phase_IC);

exit();
