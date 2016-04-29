errcatch(-1,"stop");mode(2);//Exa9
;
;

disp("                                          Amount                  Units");
disp("Production                Units        %       Equivalent      %      Equivalent");
disp("                                   Completion     Units     Completion   Units");
disp("Finished & Transfered     8000       100%         8000        100%       8000 ");
disp("Closing work-in-progress  2000       100%         2000         50%       1000");
disp("Total Production         10000                   10000                   9000");
disp("");
disp("Statement of cost");
disp("                                    Material     Labour     Overhead   Total");
disp("                                       Rs.         Rs.         Rs.      Rs.");
disp("Cost of opening work-in-progress      7500        3000        1500      12000");
disp("Cost in and during the process      100000       78000       39000     217000");
disp("             Total cost             107500       81000       40500     229000");
disp("Eqivalent units                      10000        9000        9000");
disp("Cost per unit                        10.75        9.00        4.50      24.25");
disp("");
disp(8000*24.25,"(a) Value of output transfered : 8000 units @ Rs. 24.25 is ");
disp("(b) Value of Closing work-in-progress");
disp(2000*10.75,"Material     2000 units @ 10.75 :");
disp(1000*9.00,"Labour        1000 units @ 9.00 :");
disp(1000*4.50,"Overhead      1000 units @ 4.50:");
disp(194000+35000,"Total Rs. = ");
exit();
