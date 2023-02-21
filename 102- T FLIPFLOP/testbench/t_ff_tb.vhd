----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2023 17:40:49
-- Design Name: 
-- Module Name: t_ff_tb - Behavioral
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

entity t_ff_tb is
--  Port ( );
end t_ff_tb;

architecture Behavioral of t_ff_tb is
component t_ff is
    Port ( t : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           reset : in STD_LOGIC;
           qbar : out STD_LOGIC);
end component;

signal tt,tclk,tq,treset,tqb :std_logic;

begin

module1 : t_ff port map(
    t => tt,
    clk => tclk,
    q => tq,
    reset => treset,
    qbar => tqb);
    
clock: process
begin
tclk <= '1';
wait for 10 ns;
tclk <= '0';
wait for 10 ns;
end process;

force: process
begin
treset <= '1';
tt <= '0';
wait for 20 ns;

treset <= '0';
tt <= '0';
wait for 20 ns;

tt <= '1';
wait for 50 ns;

tt <= '0';
wait for 20 ns;

treset <= '1';
tt <= '1';
wait for 20 ns;

end process;

end Behavioral;
