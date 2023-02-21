----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2023 17:29:41
-- Design Name: 
-- Module Name: t_ff - Behavioral
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

entity t_ff is
    Port ( t : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           reset : in STD_LOGIC;--synconyzed reset (reset after next positive clock edge)
           qbar : out STD_LOGIC);
end t_ff;

architecture Behavioral of t_ff is

begin
process(clk)
variable tmp: std_logic;
begin
if(clk='1' and clk'event)then
if(reset='1')then
tmp:='0';
elsif(t = '0')then
tmp:=tmp;
else
tmp:= not tmp;
end if;
end if;
q <= tmp;
qbar <= not tmp;
end process;

end Behavioral;
