# Priority Encoder 

An Encoder n input 2 power n output device. It is basically the dual of decoder.

![img]("https://en.m.wikipedia.org/wiki/File:Encoder_block_diagram.jpg")


| A | B | C | D | E | F | G | H || O2 | O1 | O0 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | | 0 | 0 | 0 |
| 0 | 0 | 0 | 0 | 0 | 0 | 1 | X | | 0 | 0 | 1 |
| 0 | 0 | 0 | 0 | 0 | 1 | X | X | | 0 | 1 | 0 |
| 0 | 0 | 0 | 0 | 1 | X | X | X | | 0 | 1 | 1 |
| 0 | 0 | 0 | 1 | X | X | X | X | | 1 | 0 | 0 |
| 0 | 0 | 1 | X | X | X | X | X | | 1 | 0 | 1 | 
| 0 | 1 | X | X | X | X | X | X | | 1 | 1 | 0 |
| 1 | X | X | X | X | X | X | X | | 1 | 1 | 1 |
