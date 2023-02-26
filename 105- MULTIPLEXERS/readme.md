# Multiplexer

Multiplexer (mux) is a many to one device which select one input as output from  2 power n input according to n select lines
![schematics](https://user-images.githubusercontent.com/96820094/221408645-2db79804-8136-49c4-a670-15e67a09edf0.png)
Here i have designed mux in 2 ways

1. with___select statement

            with {...} select
           op <= ip0 when "00",
                 ip1 when "01",
                 .............
                 ipn when others;

3. case___when statement

        case {...} is
        
        when "000" => op <= ip0;
        when "001" => op <= ip1;
        .......................
        when "n" => op <= ipn;
