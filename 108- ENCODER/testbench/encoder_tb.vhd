----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 23:07:21
-- Design Name: 
-- Module Name: encoder_tb - Behavioral
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

entity encoder_tb is
--  Port ( );
end encoder_tb;

architecture Behavioral of encoder_tb is

component encoder is
    Port ( inp : in STD_LOGIC_VECTOR (7 downto 0);
           op : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal t_in: std_logic_vector (7 downto 0);
signal t_ou: std_logic_vector (2 downto 0);

begin

uut : encoder port map(
        inp => t_in,
        op => t_ou);
        
force1 : process
begin
t_in <="00000001";
wait for 10 ns;
t_in <="00000010";
wait for 10 ns;
t_in <="00000100";
wait for 10 ns;
t_in <="00001000";
wait for 10 ns;
t_in <="00010000";
wait for 10 ns;
t_in <="00100000";
wait for 10 ns;
t_in <="01000000";
wait for 10 ns;
t_in <="10000000";
wait for 10 ns;
end process;

end Behavioral;
