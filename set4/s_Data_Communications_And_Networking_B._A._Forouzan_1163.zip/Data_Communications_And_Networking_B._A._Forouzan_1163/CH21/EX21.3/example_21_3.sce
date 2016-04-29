errcatch(-1,"stop");mode(2);;
;
disp("--------------Example 21.3---------------")
// display the example
printf("We use the ping program to test the server fhda.edu. The result is shown below:\n$ ping thda.edu\nPING thda.edu (153.18.8.1) 56 (84) bytes of data.\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=O  ttl=62 time=1.91 ms\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=1  ttl=62 time=2.04 ms\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=2  ttl=62 time=1.90 ms\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=3  ttl=62 time=1.97 ms\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=4  ttl=62 time=1.93 ms\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=5  ttl=62 time=2.00 ms\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=6  ttl=62 time=1.94 ms\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=7  ttl=62 time=1.94 ms\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=8  ttl=62 time=1.97 ms\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=9  ttl=62 time=1.89 ms\n64 bytes from tiptoe.fhda.edu (153.18.8.1): icmp_seq=10 ttl=62 time=1.98 ms\n\n--- thda.edu ping statistics ---\n11 packets transmitted, 11 received, 0%s packet loss, time 10103ms\n   rttminJavg/max = 1.899/1.955/2.041 ms","%");
printf("\n\nThe ping program sends messages with sequence numbers starting from 0. For each probe it gives us the RTT time.\nThe TTL (time to live) field in the IP datagram that encapsulates an ICMP message has been set to 62,\nwhich means the packet cannot travel mare than 62 hops. At the beginning, ping defines the number of data bytes as 56\nand the total number of bytes as 84. It is obvious that if we add 8 bytes of ICMP header and 20 bytes of IP header to 56, the result is 84.\nHowever, in each probe ping defines the number of bytes as 64. This is the total number of bytes in the ICMP packet (56 + 8).\nThe ping program continues to send messages, if we do not stop it by using the interrupt key . After it is interrupted,\nit prints the statistics of the probes. It tells us the number of packets sent, the number of packets received, the total time,\nand the RTT minimum, maximum, and average. Some systems may print more information.")

exit();
