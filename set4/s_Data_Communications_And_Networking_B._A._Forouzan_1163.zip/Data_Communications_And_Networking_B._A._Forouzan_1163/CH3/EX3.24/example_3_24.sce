errcatch(-1,"stop");mode(2);;
;
disp("--------------Example 3.24---------------")
printf("An example of broadband transmission using modulation is the sending of computer data through a telephone subscriber line,\nthe line connecting a resident to the central telephone office. These lines, installed many years ago,are designed to\ncarry voice (analog signal) with a limited bandwidth(frequencies between 0 and 4 kHz).\nAlthough this channel can be used as a low-pass channel,it is normally considered a bandpass channel. One reason is that\nthe bandwidth is so narrow(4 kHz) that if we treat the channel as low-pass and use it for baseband transmission, the maximum\nbit rate can be only 8 kbps. The solution is to consider the channel a bandpass channel, convert the digital signal from the\ncomputer to an analog signal, and send the analog signal.\nWe can install two converters to change the digital signal to analog and vice versa at the receiving end.\nThe converter,in this case, is called a modem (modulator/demodulator)."); // display the example

exit();
