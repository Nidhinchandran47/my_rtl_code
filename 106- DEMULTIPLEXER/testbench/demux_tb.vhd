----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 18:05:37
-- Design Name: 
-- Module Name: demux_tb - Behavioral
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

entity demux_tb is
--  Port ( );
end demux_tb;

architecture Behavioral of demux_tb is

component demux is
    Port ( inp : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (2 downto 0);
           op : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal tinp :std_logic;
signal tsel :STD_LOGIC_VECTOR (2 downto 0);
signal t_op: STD_LOGIC_VECTOR (7 downto 0);

begin

uut : demux port map (
        inp => tinp,
        sel => tsel,
        op => t_op);

force1 : process
begin
tinp <= '1';
tsel <= "000";
wait for 20 ns;
tsel <= "001";
wait for 20 ns;
tsel <= "010";
wait for 20 ns;
tsel <= "011";
wait for 20 ns;
tsel <= "100";
wait for 20 ns;
tsel <= "101";
wait for 20 ns;
tsel <= "110";
wait for 20 ns;
tsel <= "111";
wait for 20 ns;

end process;

end Behavioral;
