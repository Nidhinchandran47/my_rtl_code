This circuit works as both adder as well as subtractor by a mode controller
if the mode input is given '0' - circuit will be adder
if the mode input is given '1' - circuit will be subtractor

________________________________________________________________________
|  mode  |    A   |   B   | carry/borrow in || sum/diff |  carry/diff  |
| ---- | ---- | ---- | :---: | ---- | ---- | ----|
|   0    |    0   |   0   |        O        ||     0    |       0      |
|   0    |    0   |   0   |        1        ||     1    |       0      |
|   0    |    0   |   1   |        O        ||     1    |       0      |
|   0    |    0   |   1   |        1        ||     0    |       1      |
|   0    |    1   |   0   |        O        ||     1    |       0      |
|   0    |    1   |   0   |        1        ||     0    |       1      |
|   0    |    1   |   1   |        O        ||     0    |       1      |
|   0    |    1   |   1   |        1        ||     1    |       1      |
|   1    |    0   |   0   |        O        ||     0    |       0      |
|   1    |    0   |   0   |        1        ||     1    |       1      |
|   1    |    0   |   1   |        O        ||     1    |       1      |
|   1    |    0   |   1   |        1        ||     0    |       1      |
|   1    |    1   |   0   |        O        ||     1    |       0      |
|   1    |    1   |   0   |        1        ||     0    |       0      |
|   1    |    1   |   1   |        O        ||     0    |       0      |
|   1    |    1   |   1   |        1        ||     1    |       1      |

