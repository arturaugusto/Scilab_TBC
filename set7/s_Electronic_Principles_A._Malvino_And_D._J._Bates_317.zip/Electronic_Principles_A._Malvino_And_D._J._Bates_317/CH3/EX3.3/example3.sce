errcatch(-1,"stop");mode(2);// to find load voltage and load current using ideal diode

// Example 3-3, page 65

;; 

// Given data
// diode is forward biased, equivalent to a d switch.

// Calculations
V=10;// load voltage in volts
R=1000;// load resistance in ohms
I=V/R;// all the source voltage appears across the load resistor
disp("Amperes",I,"Load Current=")
disp("Volts",V,"Load Voltage=")



exit();
