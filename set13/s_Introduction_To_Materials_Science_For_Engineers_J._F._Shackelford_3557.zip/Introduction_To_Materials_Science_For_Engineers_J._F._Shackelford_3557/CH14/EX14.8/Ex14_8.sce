mode(2);errcatch(-1,"stop");driver("GIF");//Example 14.8//
Ec=366;//MPa // composite modulus
El=207;//modulus for Co
Eh=704;//modulus for WC Phase
vl=0.5;//low modulus phase
vh=0.5;// high modulus phase
n=1; //given
n1=(1/2);//given
n2=0.01;//given
n3=-0.01;//given
n4=-1;//given
A=(Ec)^n
mprintf("A = %i ",A)
B=(vl*(El)^n)+(vh*(Eh)^n)
mprintf("  B = %f ",B)
C=B/A
mprintf("  C = %f ",C)
A1=(Ec)^n1
mprintf("\nA1 = %f ",A1)
B1=(vl*(El)^n1)+(vh*(Eh)^n1)
mprintf("  B1 = %f ",B1)
C1=B1/A1
mprintf("  C1 = %f ",C1)
A2=(Ec)^n2
mprintf("\nA2 = %f ",A2)
B2=(vl*(El)^n2)+(vh*(Eh)^n2)
mprintf("   B2 = %f ",B2)
C2=B2/A2
mprintf("   C2 = %i ",C2)
A3=(Ec)^n3
mprintf("\nA3 = %f ",A3)
B3=(vl*(El)^n3)+(vh*(Eh)^n3)
mprintf("  B3 = %f ",B3)
C3=B3/A3
mprintf("  C3 = %f ",C3)
A4=(Ec)^n4
mprintf("\nA4 = %e ",A4)
B4=(vl*(El)^n4)+(vh*(Eh)^n4)
mprintf("  B4 = %e ",B4)
C4=B4/A4
mprintf("  C4 = %f ",C4)
x=[1 1/2 0.01 -0.01 -1];
y=[1.24 1.07 1.00 0.999 1.15];
plot2d(x,y, style=1)
ylabel("B/A","fontsize",4)
//Therefore
mprintf("\n n=0")

xinit('/home/fossee/Downloads/tbc_graphs/Introduction_To_Materials_Science_For_Engineers_J._F._Shackelford_3557/Ex14_8');xend();exit();
