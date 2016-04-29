errcatch(-1,"stop");mode(2);
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.12

 ;  ;  ; // Clear the work space and console


// GIVEN DATA

printf("\n EXAMPLE : 4.12 : \n\n          Given Data between the Field current and Open-Circuit EMF generated by DC Machine \n");
printf("\n If(A)   0      0.25      0.5      1.0      1.5      2.0      2.5     3.0 \n");
printf("\n Voc(v)  8       43        77      151      198      229      253     269\n");
N = 600;                  // Speed of an DC Shunt wound generator on open circuit in RPM
Rf1 = 100;                // Shunt field resistance in Ohms
Rf2 = 125;                // Shunt field resistance in Ohms


// CALCULATIONS
// Refer Figure 4.21:- Page no. 181

Vt1 = 253.33;                   // Terminal Voltage in Volts correspounding to field resistance of 100 Ohms from Figure4.21 Page no. 181 (The slope of the Resistance line Rf cuts the OCC at this Voltage [point])
Vt2 = 213.33;                   // Terminal Voltage in Volts correspounding to field resistance of 125 Ohms from Figure 4.21 Page no. 181 (The slope of the Resistance line Rf cuts the OCC at this Voltage [point])
Voc_r = 151;                    // Critical Open circuit voltage in Volts from Figure 4.20
If_r = 1.0;                     // Critical Field current in Amphere from Figure 4.20
Rc = Voc_r/If_r;                // Crictical field Resistance in Ohms


// DISPLAY RESULTS

printf(" \n\n        SOLUTION :-\n") ;
printf("\n  (a)  Crictical field Resistance, Rc = %.f Ohms \n",Rc);
printf("\n (b.1) Terminal Voltage correspounding to field resistance of 100 Ohms is %.2f V \n ", Vt1);
printf("\n (b.1) Terminal Voltage correspounding to field resistance of 125 Ohms is %.2f V \n ", Vt2);


exit();
