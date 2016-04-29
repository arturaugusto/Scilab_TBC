errcatch(-1,"stop");mode(2);//Exa13
;
;

disp("Unit Operation cost");
disp("                                 % of rejects                                   labour cost per 100");
disp("                                 to the o/p     Ratio/100 for                   on o/p of each ");
disp("                                 of each        cost of final    Labour cost    operation 7/2    %    % ");
disp("Operation Input Rejects Output   operation %    Output");
disp("    1       6000    1500   4500      33.33          200              10800            180        240  360");
disp("    2       5625     375   5250       7.14          150               7875            140        150  210");
disp("    3       5250     375   4875       7.69          140              13650            260        280  364 ");
disp("    4       6500     500   6000       8.33          130               7800            120        130  156");
disp("    5       4800     800   4000      20             120               4800            100        120  120");
disp("                                                    100              44925            800        920 1210");
disp("");
disp("On output of each operation=7/4");
disp("On final output of each operation=(8*6)/100");
disp("(a.) Column 6 indicates the numbers of units to be put in hand in each operation so that at the end of the final operation,100 good units are obtained. Thus in this case, 200 units would be the input to obtain 100 units of good output at the end of the 5th operation. ");
disp(round(100+100*20/100),"Output 5 = ");
disp(round(120+120*8.33/100),"Output 4 = ");
disp(round(130+130*7.69/100),"Output 3 = ");
disp(round(140+140*7.14/100),"Output 2 = ");
disp(round(150+150*33.33/100),"Output 1 = ");
disp(1210-800,"(b.) The labour cost of waste per 100 units =");
disp("(c.) The work in progress can be computed as follows: work in progress at the end of ");
disp("Operation No. 1 = units in progress*(240)/100");
disp("Operation No. 2 = units in progress*(240+150+240*7.14/100)/100");
disp("Operation No. 3 = units in progress*(407.14+280+407.14*7.69/100)/100");
disp("Operation No. 4 = units in progress*(718.46+130+718.46*8.33/100)/100");
disp("Operation No. 5 = units in progress*(908.34+60+908.34*20/100)/100");
disp("Valuation of work in progress");
disp("Stage(at the end of)    components    Value per 100 units    Total Value");
disp("OPeration                                     Rs                  Rs");
disp("  1.                     1000                240                2400");
disp("  2.                      500                407.14             2035.70");
disp("  3.                      750                718.46             5388.45");
disp("  4.                     1000                908.34             9083.40");
disp("  5.                      500               1210                6050");
exit();
