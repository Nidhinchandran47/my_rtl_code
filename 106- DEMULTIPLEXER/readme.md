# Demultiplexer

Demultiplexer is a device which assign the its one input to 2 power n output according to its n input.

![pic](https://user-images.githubusercontent.com/96820094/221629826-6f93bb09-082b-40ef-88ce-416d085832d9.png)

| S2 | S1 | S0 || A | B | C | D | E | F | G | H |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | 
| 0 | 0 | 0 | | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 
| 0 | 0 | 1 | | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 
| 0 | 1 | 0 | | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 
| 0 | 1 | 1 | | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 
| 1 | 0 | 0 | | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 
| 1 | 0 | 1 | | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 
| 1 | 1 | 0 | | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 
| 1 | 1 | 1 | | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 



![Schematics](https://user-images.githubusercontent.com/96820094/221633804-fe0e3791-4e80-4616-ae82-e00ff6709283.png)
Schematics

![timing diagram](https://user-images.githubusercontent.com/96820094/221633859-34fcfd94-3670-4864-a42b-3ef83f3151df.png)
timing diagram
