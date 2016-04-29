errcatch(-1,"stop");mode(2);// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 6: AC DYNAMO VOLTAGE RELATIONS-ALTERNATORS
// Example 6-4

; ;  // Clear the work space and console.

// Given data
kVA = 100 ; // kVA rating of the 3-phase alternator
V_L = 1100 ; // Line voltage of the 3-phase alternator in volt

// dc-resistance test data
E_gp1 = 6 ; // generated phase voltage in volt 
V_l = E_gp1 ; // generated line voltage in volt
I_a1 = 10 ; // full-load current per phase in A
cos_theta_b1 = 0.8 ; // 0.8 PF lagging (case b)
cos_theta_b2 = 0.8 ; // 0.8 PF leading (case b)
sin_theta_b1 = sqrt( 1 - (cos_theta_b1)^2 ); // (case b)
sin_theta_b2 = sqrt( 1 - (cos_theta_b2)^2 ); // (case b)

// open-circuit test data
E_gp2 = 420 ; // generated phase voltage in volt 
I_f2 = 12.5 ; // Field current in A

// short-circuit test data
I_f3 = 12.5 ; // Field current in A
// Line current I_l = rated value   in A

// Calculations
// Assuming that the alternator is Y-connected
// case a :
I_a_rated = (kVA*1000)/(V_L*sqrt(3)); // Rated current per phase in A
I_a = sqrt(3)*I_a_rated ; // Rated Line current in A
 
R_dc = V_l/(2*I_a1); // effective dc armature resistance in ohm/winding
R_ac = R_dc * 1.5 ; // effective ac armature resistance in ohm.phase
R_a = R_ac ; // effective ac armature resistance in ohm.phase from dc resistance test

Z_p = E_gp2 / I_a ; // Synchronous impedance per phase
X_s = sqrt( Z_p^2 - R_a^2 ); // Synchronous reactance per phase

// case b :
V_p = V_L / sqrt(3); // Phase voltage in volt (Y-connection)

// At 0.8 PF lagging
E_gp1 = ( V_p*cos_theta_b1 + I_a_rated * R_a ) + %i*( V_p*sin_theta_b1 + I_a_rated * X_s);
E_gp1_m=abs(E_gp1);//E_gp1_m=magnitude of E_gp1 in volt
E_gp1_a=atan(imag(E_gp1) /real(E_gp1))*180/%pi;//E_gp1_a=phase angle of E_gp1 in degrees
V_n1 = E_gp1_m ; // No-load voltage in volt
V_f1 = V_p ; // Full-load voltage in volt
VR1 = ( V_n1 - V_f1 )/ V_f1 * 100; // percent voltage regulation at 0.8 PF lagging 


// At 0.8 PF leading
E_gp2 = ( V_p*cos_theta_b2 + I_a_rated * R_a ) + %i*( V_p*sin_theta_b2 - I_a_rated*X_s);
E_gp2_m=abs(E_gp2);//E_gp2_m=magnitude of E_gp2 in volt
E_gp2_a=atan(imag(E_gp2) /real(E_gp2))*180/%pi;//E_gp2_a=phase angle of E_gp2 in degrees
V_n2 = E_gp2_m ; // No-load voltage in volt
V_f2 = V_p ; // Full-load voltage in volt
VR2 = ( V_n2 - V_f2 )/V_f2 * 100 ; // percent voltage regulation at 0.8 PF leading 

// Display the results
disp("Example 6-4 Solution : ");
printf(" \n Assuming that the alternator is Y-connected ");
printf(" \n a: R_dc = %.1f ohm/winding ", R_dc );
printf(" \n    R_ac = %.2f ohm/phase ", R_ac );
printf(" \n    Z_p = %.2f ohm/phase ", Z_p );
printf(" \n    X_s = %.2f ohm/phase \n", X_s );

printf(" \n b: At 0.8 PF lagging ");
printf(" \n    Percent voltage regulation = %.1f percent \n", VR1 );

printf(" \n    At 0.8 PF leading ");
printf(" \n    Percent voltage regulation = %.1f percent ", VR2 );

exit();
