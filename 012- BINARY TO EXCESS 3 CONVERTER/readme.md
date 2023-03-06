# Binary to excess 3 converter

Excess-3 code, also known as XS-3 code or Stibitz code, is a binary code used to represent decimal numbers. In this code, each decimal digit is represented by a 4-bit binary code, where the binary code for a digit is obtained by adding 3 (in binary) to the binary code for the digit in BCD (binary-coded decimal) representation.

For example, the excess-3 code for the decimal digit 2 is obtained by adding the binary number 0011 (which is the binary representation of decimal 3) to the BCD code for 2, which is 0010. The result is 0101, which is the excess-3 code for 2.

The following table shows the excess-3 codes for the decimal digits 0 to 9:

| BINARAY | EXCESS 3 |
| :---: | :---: |
| 0000 (0) | 0011 (3) |
| 0001 (1) | 0100 (4) |
| 0010 (2) | 0101 (5) |
| 0011 (3) | 0110 (6) |
| 0100 (4) | 0111 (7) |
| 0101 (5) | 1000 (8) |
| 0110 (6) | 1001 (9) |
| 0111 (7) | 1010 (A) |
| 1000 (8) | 1011 (B) |
| 1001 (9) | 1100 (C) |


Decimal	BCD code	Excess-3 code

Excess-3 code is used in some older computer systems and digital circuits, but it has largely been replaced by other codes such as binary-coded decimal (BCD) or binary.
