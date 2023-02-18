A Gray code is an encoding of numbers so that adjacent numbers have a single digit differing by 1
Gray codes are used in the general sequence of hardware-generated binary numbers. 
These numbers cause ambiguities or errors when the transition from one number to its successive is done.
This code simply solves this problem by changing only one bit when the transition is between numbers is done.


steps to convert binary code to gray
                       MSB of gray is same as that of the binary
                       The nth bit is the exor the nth and n+1th bit
                       
                       
                       Here is the tcl console result of our binary to gray converter rlt code
                       
                       ------------------------------------
                        the gray code of 0000 is --> 0000
                        the gray code of 0001 is --> 0001
                        the gray code of 0010 is --> 0011
                        the gray code of 0011 is --> 0010
                        the gray code of 0100 is --> 0110
                        the gray code of 0101 is --> 0111
                        the gray code of 0110 is --> 0101
                        the gray code of 0111 is --> 0100
                        the gray code of 1000 is --> 1100
                        the gray code of 1001 is --> 1101
                        the gray code of 1010 is --> 1111
                        the gray code of 1011 is --> 1110
                        the gray code of 1100 is --> 1010
                        the gray code of 1101 is --> 1011
                        the gray code of 1110 is --> 1001
                        the gray code of 1111 is --> 1000
                       ------------------------------------


# Simulation results
