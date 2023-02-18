A Gray code is an encoding of numbers so that adjacent numbers have a single digit differing by 1 Gray codes are used in the general sequence of hardware-generated binary numbers. These numbers cause ambiguities or errors when the transition from one number to its successive is done. This code simply solves this problem by changing only one bit when the transition is between numbers is done.

Steps to convert gray code to binary.

1. MSB of gray is same as that of the binary.

2. The nth bit is the exor of nth input and n+1th output bit.

                  The tcl console output is
                  ----------------------------------------
                  The binary of gray code 0000 is --> 0000
                  The binary of gray code 0001 is --> 0001
                  The binary of gray code 0010 is --> 0011
                  The binary of gray code 0011 is --> 0010
                  The binary of gray code 0100 is --> 0111
                  The binary of gray code 0101 is --> 0110
                  The binary of gray code 0110 is --> 0100
                  The binary of gray code 0111 is --> 0101
                  The binary of gray code 1000 is --> 1111
                  The binary of gray code 1001 is --> 1110
                  The binary of gray code 1010 is --> 1100
                  The binary of gray code 1011 is --> 1101
                  The binary of gray code 1100 is --> 1000
                  The binary of gray code 1101 is --> 1001
                  The binary of gray code 1110 is --> 1011
                  The binary of gray code 1111 is --> 1010
                  ----------------------------------------
                  
![Screenshot 2023-02-18 113141](https://user-images.githubusercontent.com/96820094/219846185-5fd4baf1-8c9c-4c03-a4b6-baf5a6d6dfe7.jpg)

 - - - - 
 # SIMULATION RESULTS
 
 ![timinig diagram](https://user-images.githubusercontent.com/96820094/219846268-ead4ee6f-18e8-41f2-80cb-f09ce164af07.png)
timinig diagram
 
 ![circuit diagram](https://user-images.githubusercontent.com/96820094/219846220-c8ed2bc8-ca56-4fa5-b148-04a92ea95aa5.png)
circuit diagram

![schematics](https://user-images.githubusercontent.com/96820094/219846239-7e8051d5-a8e8-4811-a3da-e07ece76d8db.png)
schematics

![tcl console result](https://user-images.githubusercontent.com/96820094/219846255-d7d9be8d-131b-4391-8ecd-7bfec79ba80a.png)
tcl console result



