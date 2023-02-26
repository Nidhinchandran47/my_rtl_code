----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 23:28:03
-- Design Name: 
-- Module Name: prt_encdr - Behavioral
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

entity prt_encdr is
    Port ( inp : in STD_LOGIC_VECTOR (7 downto 0);
           op : out STD_LOGIC_VECTOR (2 downto 0));
end prt_encdr;

architecture Behavioral of prt_encdr is

begin

op <= "111" when inp(7) = '1' else
      "110" when inp(6) = '1' else
      "101" when inp(5) = '1' else
      "100" when inp(4) = '1' else
      "011" when inp(3) = '1' else
      "010" when inp(2) = '1' else
      "001" when inp(1) = '1' else
      "000" ;

end Behavioral;
