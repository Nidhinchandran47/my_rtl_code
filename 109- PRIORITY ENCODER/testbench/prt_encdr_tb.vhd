----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 23:33:05
-- Design Name: 
-- Module Name: prt_encdr_tb - Behavioral
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

entity prt_encdr_tb is
--  Port ( );
end prt_encdr_tb;

architecture Behavioral of prt_encdr_tb is

component prt_encdr is
    Port ( inp : in STD_LOGIC_VECTOR (7 downto 0);
           op : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal t_in : STD_LOGIC_VECTOR (7 downto 0);
signal t_op : STD_LOGIC_VECTOR (2 downto 0);

begin

uut : prt_encdr port map(
        inp => t_in,
        op => t_op);
        
f_loop : process
begin
t_in <= "00000001";
WAIT FOR 10 ns;
t_in <= "00000011";
WAIT FOR 10 ns;
t_in <= "00000101";
WAIT FOR 10 ns;
t_in <= "00000111";
WAIT FOR 10 ns;
t_in <= "00010001";
WAIT FOR 10 ns;
t_in <= "01001001";
WAIT FOR 10 ns;
t_in <= "00100101";
WAIT FOR 10 ns;
t_in <= "10000001";
WAIT FOR 10 ns;

end process;
end Behavioral;
