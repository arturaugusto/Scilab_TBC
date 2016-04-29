errcatch(-1,"stop");mode(2);;
;
disp("--------------Example 11.10---------------")
// example explaination 
printf("This example shows an exchange using piggybacking. The sequence of events that occur are as follows :\n\n* Node A begins the exchange of information with an I-frame numbered 0 followed by another I-frame numbered 1.\n\n* Node B piggybacks its acknowledgment of both frames onto an I-frame of its own.\n  Node Bs first I-frame is also numbered 0 [N(S) field] and contains a 2 in its N(R) field, acknowledging the receipt of As\n  frames 1 and 0 and indicating that it expects frame 2 to arrive next.\n\n* Node B transmits its second and third I-frames (numbered 1 and 2) before accepting further frames from node A.\n  Its N(R) information, therefore, has not changed: B frames 1 and 2 indicate that node B is still expecting As frame 2 to arrive next.\n\n* Node A has sent all its data. Therefore, it cannot piggyback an acknowledgment onto an I-frame and sends an S-frame instead.\n  The RR code indicates that A is still ready to receive. The number 3 in the N(R) field tells B that frames 0, 1, and 2 have all been\n  accepted and that A is now expecting frame number 3.")
exit();
