errcatch(-1,"stop");mode(2);;
;
format('v',6);
P1=[5 2 -4];
P2=[1 1 2];
P3=[-3 0 8];
P4=[3 -1 0]
R1=P1-P2;
R2=P1-P3;
R3=P2-P3;
R4=P1-P4;
U1=R1(1,2)*R2(1,3)-R1(1,3)*R2(1,2);
U2=R1(1,3)*R2(1,1)-R1(1,1)*R2(1,3);
U3=R1(1,1)*R2(1,2)-R1(1,2)*R2(1,1);
U=[U1 U2 U3];
disp(U)
disp('Since U is Zero so P1,P2,P3 are in straight line')
det_R1=(R1(1,1)^2+R1(1,2)^2+R1(1,3)^2)^.5;
V1=R4(1,2)*R1(1,3)-R4(1,3)*R1(1,2);
V2=R4(1,3)*R1(1,1)-R4(1,1)*R1(1,3);
V3=R4(1,1)*R1(1,2)-R4(1,2)*R1(1,1);
V=[V1 V2 V3];
det_V=(V(1,1)^2+V(1,2)^2+V(1,3)^2)^.5;
det_R1=(R1(1,1)^2+R1(1,2)^2+R1(1,3)^2)^.5;
disp((det_V/det_R1),'Shortest Distance')
exit();
