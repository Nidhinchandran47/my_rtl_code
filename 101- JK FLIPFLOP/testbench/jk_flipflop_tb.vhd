----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2023 16:57:57
-- Design Name: 
-- Module Name: jk_flipflop_tb - Behavioral
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

entity jk_flipflop_tb is
end jk_flipflop_tb;

architecture Behavioral of jk_flipflop_tb is

component jk_flipflop is
     port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           qbar : out STD_LOGIC); 
end component;

signal tj,tk,tclk,tq,tqb :std_logic;

begin

mod1 : jk_flipflop port map(
    j=>tj,
    k=>tk,
    clk=>tclk,
    q=>tq,
    qbar=>tqb);
    
clock: process
begin
tclk <= '1';
wait for 10 ns;
tclk <= '0';
wait for 10 ns;
end process;

force: process
begin
tj <= '0';
tk <= '1';
wait for 20 ns;

tj <= '1';
tk <= '0';
wait for 20 ns;

tj <= '1';
tk <= '1';
wait for 40 ns;

tj <= '0';
tk <= '0';
wait for 20 ns;

end process;

end Behavioral;
