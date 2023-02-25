----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2023 19:59:26
-- Design Name: 
-- Module Name: mux_case - arch
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

entity mux_case is
    Port ( inp : in STD_LOGIC_VECTOR (7 downto 0);
           sel : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC);
end mux_case;

architecture arch of mux_case is

begin

process(sel)
begin

    case sel is
    when "000" =>
    y <= inp(0);
    when "001" =>
    y <= inp(1);
    when "010" =>
    y <= inp(2);
    when "011" =>
    y <= inp(3);
    when "100" =>
    y <= inp(4);
    when "101" =>
    y <= inp(5);
    when "110" =>
    y <= inp(6);
    when "111" =>
    y <= inp(7);
    end case;

end process;

end arch;
