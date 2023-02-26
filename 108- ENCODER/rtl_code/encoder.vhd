----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 23:01:38
-- Design Name: 
-- Module Name: encoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity encoder is
    Port ( inp : in STD_LOGIC_VECTOR (7 downto 0);
           op : out STD_LOGIC_VECTOR (2 downto 0));
end encoder;

architecture Behavioral of encoder is

begin

op(2) <= inp(4) or inp(5) or inp(6) or inp(7);
op(1) <= inp(2) or inp(3) or inp(6) or inp(7);
op(0) <= inp(1) or inp(5) or inp(3) or inp(7);

end Behavioral;
