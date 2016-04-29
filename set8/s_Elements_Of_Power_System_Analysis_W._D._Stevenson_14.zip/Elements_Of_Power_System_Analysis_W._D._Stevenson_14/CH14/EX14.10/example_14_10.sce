errcatch(-1,"stop");mode(2);//Chapter 14
//Example 14.10
//Page 408
//postperiod
;;
//Given
P_g1 = 400e6;V_g1 = 20e3;X1_dg1 = 0.067;H_g1 = 11.2;
P_g2 = 250e6;V_g2 = 18e3;X1_dg2 = 0.10;H_g2 = 8;
E_3 = 1;
//From Table 14.2
X_14 = 0.022;
X_25 = 0.040;
R_34 = 0.007;X_34 = 0.04;Y_34 = 0.082;
R_35_1 = 0.008;X_35_1 = 0.047;Y_35_1 = 0.098;
R_35_2 = 0.008;X_35_2 = 0.047;Y_35_2 = 0.098;
R_45 = 0.018;X_45 = 0.11;Y_45 = 0.226;
//From Table 14.3
V1 = 1.03 * (cos(8.88 * %pi / 180) + %i * sin(8.88 * %pi / 180));
P1 = 3.5;Q1 = 0.712;
V2 = 1.02 * (cos(6.38 * %pi / 180) + %i * sin(6.38 * %pi / 180));
P2 = 1.85;Q2 = 0.298;
V3 = 1;
V4 = 1.018 * (cos(4.68 * %pi / 180) + %i * sin(4.68 * %pi / 180));
P4 = 1;Q4 = 0.44;
V5 = 1.011 * (cos(2.27 * %pi / 180) + %i * sin(2.27 * %pi / 180));
P5 = 0.5;Q5 = 0.16;
//Calculations
I1 = (P1 + %i * Q1)' / V1';
I2 = (P2 + %i * Q2)' / V2';
E1_1 = V1 + %i * X1_dg1 * I1;
E1_2 = V2 + %i * X1_dg2 * I2;
E1_3 = E_3;
Y_L4 = (P4 + %i * Q4)' / (abs(V4))^2;
Y_L5 = (P5 + %i * Q5)' / (abs(V5))^2;
//formation of bus admittance matrix
Ybus = zeros(5,5);
Ybus(1,1) = 1 / (%i * (X1_dg1 + X_14));Ybus(1,4) = - Ybus(1,1);
Ybus(2,2) = 1 / (%i * (X1_dg2 + X_25));Ybus(2,5) = - Ybus(2,2);
Ybus(3,3) =  1 / (R_34 + %i * X_34) + 1 / (R_35_1 + %i * X_35_1) + 1 / (R_35_2 + %i * X_35_2) + %i * Y_34 / 2 + %i * Y_35_1;
Ybus(3,4) = - 1 / (R_34 + %i * X_34);
Ybus(3,5) = - 2 / (R_35_1 + %i * X_35_1);
Ybus(4,1) = Ybus(1,4);Ybus(4,3) = Ybus(3,4);Ybus(4,3) = Ybus(3,4);
Ybus(4,4) = 1 / (%i * (X1_dg1 + X_14)) + %i * Y_34 / 2 + %i * Y_45 / 2 + 1 / (R_34 + %i * X_34) + 1 / (R_45 + %i * X_45) + Y_L4;
Ybus(4,5) = - 1 / (R_45 + %i * X_45);
Ybus(5,2) = Ybus(2,5);Ybus(5,3) =Ybus(3,5);Ybus(5,4) = Ybus(4,5);
Ybus(5,5) = 2 / (R_35_1 + %i * X_35_1) + 1 / (R_45 + %i * X_45) + Y_L5 + %i * Y_35_1 + %i * Y_45 / 2 + Ybus(2,2);
disp(Ybus,'Elements of prefault bus admittance matrix')
Ybus(4,5) = 0;Ybus(5,4) = 0;
Ybus(4,4) = 1 / (%i * (X1_dg1 + X_14)) + %i * Y_34 / 2 + 1 / (R_34 + %i * X_34) + Y_L4;
Ybus(5,5) = 2 / (R_35_1 + %i * X_35_1) + Y_L5 + %i * Y_35_1 + Ybus(2,2);
disp(Ybus,'After removing line 4-5')
printf("\n\n\n")
[m,n] = size(Ybus);
Ybus_1 = zeros(m-1,n-1);
for c = 1:m-1
    for d = 1:n-1
    Ybus_1(c,d) = Ybus(c,d) - ((Ybus(c,5)*Ybus(5,d)) / Ybus(5,5));
    end
end
[m1,n1] = size(Ybus_1);
Ybus_2 = zeros(m1-1,n1-1);
for c = 1:m1-1
    for d = 1:n1-1
    Ybus_2(c,d) = Ybus_1(c,d) - ((Ybus_1(c,4)*Ybus_1(4,d)) / Ybus_1(4,4));
    end
end
printf("\n\n\n")
disp(Ybus_2,'Elements of post faulted bus admittance matrices')
Pe1_1 = abs(E1_1)^2 * real(Ybus_2(1,1));
Pe1_2 = abs(E1_1) * E_3 * abs(Ybus_2(1,3));
theta_13 = atan(real(Ybus_2(1,3)),imag(Ybus_2(1,3)));
printf("\n Pe1 = %.4f + %.4fsin(delta_1 - %.3f) \n",Pe1_1,Pe1_2,- theta_13 * 180 / %pi)
Pe2_1 = abs(E1_2)^2 * real(Ybus_2(2,2));
Pe2_2 = abs(E1_2) * E_3 * abs(Ybus_2(2,3));
theta_23 = atan(real(Ybus_2(2,3)),imag(Ybus_2(2,3)));
printf("\n Pe2 = %.4f + %.4fsin(delta_2 - %.3f) \n",Pe2_1,Pe2_2,- theta_23 * 180 / %pi)
Pa1 = P1 - Pe1_1;
printf("\n Swing equation for machine 1 on fault in elec deg/square sec\n d^2(delta_2)/dt^2 = (180f/%.1f) * (%.4f - %.4fsin(delta_1 - %.3f)\n",H_g1,Pa1,Pe1_2,- theta_13 * 180 / %pi)
Pa2 = P2 - Pe2_1;
printf("\n Swing equation for machine 2 on fault in elec deg/square sec \n d^2(delta_2)/dt^2 = (180f/%.1f) * (%.4f - %.4fsin(delta_2 - %.3f)\n",H_g2,Pa2,Pe2_2,- theta_23 * 180 / %pi)

exit();