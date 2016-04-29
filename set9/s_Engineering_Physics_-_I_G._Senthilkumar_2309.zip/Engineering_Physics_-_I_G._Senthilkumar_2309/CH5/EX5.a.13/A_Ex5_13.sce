errcatch(-1,"stop");mode(2);// Chapter 5 Additional Example 13
//==============================================================================
;
;

h1      = 1;
h0      = 0;
k0      = 0;
l0      = 0;
l1      = 1;
// calculations

// we know that dhkl = a/sqrt( h^2 + k^2 + l^2)
// let sqrt( h^2 + k^2 + l^2) = p
p101    = sqrt( h1^2 + k0^2 + l1^2);
p100    = sqrt( h1^2 + k0^2 + l0^2);
p001    = sqrt( h0^2 + k0^2 + l1^2);

// output
mprintf('d101 : d100 : d001 :: a/%3.4f : a/%d : a/%d ',p101,p100,p001);
//==============================================================================

exit();
