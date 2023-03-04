# DECIMAL TO AIKEN CODE

The Aiken code (also known as 2421 code) is a complementary binary-coded decimal (BCD) code. A group of four bits is assigned to the decimal digits from 0 to 9.

| DECIMAL | | AIKEN |
| :---: | --- | :---: |
| 0000 (0) || 0000 (0) |
| 0001 (1) || 0001 (1) |
| 0010 (2) || 0010 (2) |
| 0011 (3) || 0011 (3) |
| 0100 (4) || 0100 (4) |
| 0101 (5) || 1011 (B) |
| 0110 (6) || 1100 (C) |
| 0111 (7) || 1101 (D) |
| 1000 (8) || 1110 (E) |
| 1001 (9) || 1111 (F) |

![AikenCode](https://user-images.githubusercontent.com/96820094/222904530-9909d90a-f0bf-4077-8e46-4828816c667c.png)

The following weighting is obtained for the Aiken code: 2-4-2-1.

One might think that double codes are possible for a number, for example 1011 and 0101 could represent 5. However, here one makes sure that the digits 0 to 4 are mirror image complementary to the numbers 5 to 9.

![Aiken_codetafel_symmetrie](https://user-images.githubusercontent.com/96820094/222904571-af76a885-d5fb-4418-b649-d4bad5e89759.png)


# simulation results

![Screenshot_20230303_064016](https://user-images.githubusercontent.com/96820094/222905355-d154ad05-d0da-43f8-8c84-2e5007494473.png)

![Screenshot_20230303_070748](https://user-images.githubusercontent.com/96820094/222905409-3f7a810c-6011-4c8d-9503-861b82b3ea94.png)
