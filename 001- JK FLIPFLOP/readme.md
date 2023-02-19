The JK flip flop is one of the most used flip flops in digital circuits. 
The JK flip flop is a universal flip flop having two inputs 'J' and 'K'. In SR flip flop, the 'S' and 'R' are the shortened abbreviated letters for Set and Reset,
but J and K are not. The J and K are themselves autonomous letters which are chosen to distinguish the flip flop design from other types.
The JK flip flop work in the same way as the SR flip flop work. The JK flip flop has 'J' and 'K' flip flop instead of 'S' and 'R'.
The only difference between JK flip flop and SR flip flop is that when both inputs of SR flip flop is set to 1, the circuit produces the invalid states as outputs, 
but in case of JK flip flop, there are no invalid states even if both 'J' and 'K' flip flops are set to 1.
The JK Flip Flop is a gated SR flip-flop having the addition of a clock input circuitry. 
The invalid or illegal output condition occurs when both of the inputs are set to 1 and are prevented by the addition of a clock input circuit.
So, the JK flip-flop has four possible input combinations, i.e., 1, 0, "no change" and "toggle". 
The symbol of JK flip flop is the same as SR Bistable Latch except for the addition of a clock input.

|   J   |   K   |  Q(n+1)  |  Qbar(n+1)  |     |
| ---- | ---- | ---- | ---- | ---- |
|   0   |   0   |    Qn    |    Qn bar   |   // no channge |
|   0   |   1   |    0     |      1      |   // reset |
|   1   |   0   |    1     |      0      |   // set |
|   1   |   1   |  Qn bar  |      Qn     |   // toggle |

# circuit diagram

![circuit diagram](https://user-images.githubusercontent.com/96820094/219960720-dde89ef2-74c1-4645-ba91-7675bd8eddb4.png)

- - - -

# Timing diagram

![timing diagram](https://user-images.githubusercontent.com/96820094/219960843-b7c0e3c4-dc8f-45c0-918c-e4237629083a.png)
