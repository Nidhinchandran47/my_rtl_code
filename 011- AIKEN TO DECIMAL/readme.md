#  AIKEN CODE TO DECIMAL

The Aiken code (also known as 2421 code) is a complementary binary-coded decimal (BCD) code. A group of four bits is assigned to the decimal digits from 0 to 9.

| DECIMAL | | AIKEN |
| :---: | --- | :---: |
| 0000 (0) || 0000 (0) |
| 0001 (1) || 0001 (1) |
| 0010 (2) || 0010 (2) |
| 0011 (3) || 0011 (3) |
| 0100 (4) || 0100 (4) |
| 0101 (5) || X |
| 0110 (6) || X |
| 0111 (7) || X |
| 1000 (8) || X |
| 1001 (9) || X |
| 1001 (A) || X |
| 1011 (B) || 0101 (5) |
| 1100 (C) || 0110 (6) |
| 1101 (D) || 0111 (7) |
| 1110 (E) || 1000 (8) |
| 1111 (F) || 1001 (9) |

![AikenCode](https://user-images.githubusercontent.com/96820094/222904530-9909d90a-f0bf-4077-8e46-4828816c667c.png)

The following weighting is obtained for the Aiken code: 2-4-2-1.

One might think that double codes are possible for a number, for example 1011 and 0101 could represent 5. However, here one makes sure that the digits 0 to 4 are mirror image complementary to the numbers 5 to 9.

![Aiken_codetafel_symmetrie](https://user-images.githubusercontent.com/96820094/222904571-af76a885-d5fb-4418-b649-d4bad5e89759.png)


# simulation results

![Screenshot_20230303_071700](https://user-images.githubusercontent.com/96820094/222907463-ee078793-d0d3-4515-a915-143d9bb2899b.png)


![Screenshot_20230303_071447](https://user-images.githubusercontent.com/96820094/222907453-6ac668d1-77fa-4ec4-9575-19bc1a476171.png)




