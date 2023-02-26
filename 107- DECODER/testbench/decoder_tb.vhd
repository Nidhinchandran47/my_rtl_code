----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 19:27:27
-- Design Name: 
-- Module Name: decoder_tb - Behavioral
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

entity decoder_tb is
--  Port ( );
end decoder_tb;

architecture Behavioral of decoder_tb is

component decoder is
    Port ( inp : in STD_LOGIC_VECTOR (2 downto 0);
           op : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal t_in : std_logic_vector (2 downto 0);
signal t_op : std_logic_vector (7 downto 0);

begin

uut : decoder port map(
        inp => t_in,
        op => t_op);
        
        
force1 : process
begin
t_in <= "000";
wait for 10 ns;
t_in <= "001";
wait for 10 ns;
t_in <= "010";
wait for 10 ns;
t_in <= "011";
wait for 10 ns;
t_in <= "100";
wait for 10 ns;
t_in <= "101";
wait for 10 ns;
t_in <= "110";
wait for 10 ns;
t_in <= "111";
wait for 10 ns;

end process;

end Behavioral;
