
Multiplexing means transmitting a large number of information units over a smaller number of channels or line.
A digital multiplexer is a combinational circuit that selects binary informations from one of many input line ans direct to a single output. 
There are 2 power n input lines for an n select lines.

Here i am implimenting 4 to 1 multiplexer in 4 format 

         1 gate level
         2 case statement
         3 conditional statement
         4 if else statement
                                                         
|    S1   |   S0   |   output   |
| :----: | :----: | :----: |
|    0    |    0   |      A     |
|    0    |    1   |      B     |
|    1    |    0   |      C     |
|    1    |    1   |      D     |               
 
 - - - -
 
 Timing diagram of a multiplexer
 
 ![timing diagram](https://user-images.githubusercontent.com/96820094/219843257-bc8e4f5b-6953-4690-9639-45ce2f9dbf37.png)


# Example code

__Case Statement__

                  always @(...)
                  case (s)
                  2'b00 : (.....)
                  2'b01 : (.....)
                  2'b10 : (.....)
                  2'b11 : (.....)
                  default : (....)
                  endcase
                                   
__Conditional Statement__

                 assign y = (condition)?(true):(false);
                               or
                  assign y = (s2)?(s1?d:c):(s1?b:a);
                                    
__if else Statement__

    always@(*)
    begin
        if      (sel == 2'b00)    out = a;
        else if (sel == 2'b01)    out = b;
        else if (sel == 2'b10)    out = c;
        else if (sel == 2'b11)    out = d;
         
    end
