mode(2);errcatch(-1,"stop");driver("GIF");// Example 11.1
clear all;
clc;

// Given data
h = 30;                                     // Height at which the effluent is relaesed
// Calculation of maxima location 
sigma_z = h/sqrt(2);                        // Vertical dispersion coefficient
// Using the plot given in Figure 11.12 for Type F condition
// The corresponding value with calculated maximum location is noted. 
h_max = 1900;
// Result
printf(" \n The point of maximum concentration of non-radioactive effluent = %d m \n",h_max);

xinit('/home/fossee/Downloads/tbc_graphs/_introduction_to_nuclear_engineering_J._R._Lamarsh_And_A._J._Baratta_3269/Ex11_1');xend();exit();
