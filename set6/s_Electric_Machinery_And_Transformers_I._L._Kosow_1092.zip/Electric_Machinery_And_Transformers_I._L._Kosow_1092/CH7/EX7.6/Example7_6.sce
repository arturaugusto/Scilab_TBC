errcatch(-1,"stop");mode(2);// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 7: PARALLEL OPERATION
// Example 7-6

; ;  // Clear the work space and console.

// Given data
E = 220 ; // Voltage generated in volt
E_1 = E ; // Voltage generated by alternator 1 in volt
E_2 = E ; // Voltage generated by alternator 2 in volt
f_1 = 60 ; // Frequency in Hz of alternator 1
f_2 = 58 ; // Frequency in Hz of alternator 2
// Switch is open

// Calculations
// case a
E_max = (E_1 + E_2)/2 ; // Maximum effective voltage across each lamp in volt
f = f_1 - f_2 ; // Frequency in Hz of the voltage across the lamps

// case c
E_min = (E_2 - E_1)/2 ; // Minimum effective voltage across each lamp in volt 

// Display the results
disp("Example 7-6 Solution : ");
printf(" \n a: E_max/lamp = %d V \n    f = %d Hz \n ", E_max, f );
printf(" \n b: The voltages are equal and opposite in the local circuit. \n ");
printf(" \n c: E_min/lamp = %d V at zero frequency \n ", E_min );
printf(" \n d: The voltages are in phase in the local circuit. ");

exit();