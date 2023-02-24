----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2023 11:34:10
-- Design Name: 
-- Module Name: full_adder_tb - Behavioral
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

entity full_adder_tb is
--  Port ( );
end full_adder_tb;

architecture Behavioral of full_adder_tb is

component full_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end component;

signal ta, tb, tc, tsum, tcarry: std_logic;

begin

m1 : full_adder port map(
    a => ta,
    b => tb,
    c => tc,
    sum => tsum,
    carry => tcarry);
    
force1: process
begin
ta <= '0';
tb <= '0';
tc <= '0';
wait for 10 ms;

ta <= '0';
tb <= '0';
tc <= '1';
wait for 10 ms;

ta <= '0';
tb <= '1';
tc <= '0';
wait for 10 ms;

ta <= '0';
tb <= '1';
tc <= '1';
wait for 10 ms;

ta <= '1';
tb <= '0';
tc <= '0';
wait for 10 ms;

ta <= '1';
tb <= '0';
tc <= '1';
wait for 10 ms;

ta <= '1';
tb <= '1';
tc <= '0';
wait for 10 ms;

ta <= '1';
tb <= '1';
tc <= '1';
wait for 10 ms;

end process;

end Behavioral;
