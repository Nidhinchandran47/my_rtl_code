----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2023 20:10:14
-- Design Name: 
-- Module Name: mux_tb - arch
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

entity mux_tb is
--  Port ( );
end mux_tb;

architecture arch of mux_tb is

component mux is
    Port ( inp : in STD_LOGIC_VECTOR (7 downto 0);
           sel : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC);
end component;

signal inp : std_logic_vector (7 downto 0);
signal sel : STD_LOGIC_VECTOR (2 downto 0);
signal y : std_logic;

begin

uut : mux port map(
    inp => inp,
    sel => sel,
    y => y);
    
force1 : process
begin
inp <= "10101010";
sel <= "000";
wait for 10 ns;
sel <= "001";
wait for 10 ns;
sel <= "010";
wait for 10 ns;
sel <= "011";
wait for 10 ns;
sel <= "100";
wait for 10 ns;
sel <= "101";
wait for 10 ns;
sel <= "110";
wait for 10 ns;
sel <= "111";
wait for 10 ns;
end process;

end arch;
