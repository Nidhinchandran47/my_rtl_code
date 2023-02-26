----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 17:54:49
-- Design Name: 
-- Module Name: demux - Behavioral
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

entity demux is
    Port ( inp : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (2 downto 0);
           op : out STD_LOGIC_VECTOR (7 downto 0));
end demux;

architecture Behavioral of demux is

signal s0not,s1not,s2not : std_logic;

begin

s0not <= not sel(0);
s1not <= not sel(1);
s2not <= not sel(2);
op(0) <= inp and s0not and s1not and s2not;  
op(1) <= inp and sel(0) and s1not and s2not;  
op(2) <= inp and s0not and sel(1) and s2not;  
op(3) <= inp and sel(0) and sel(1) and s2not;  
op(4) <= inp and s0not and s1not and sel(2);  
op(5) <= inp and sel(0) and s1not and sel(2);  
op(6) <= inp and s0not and sel(1) and sel(2); 
op(7) <= inp and sel(0) and sel(1) and sel(2);   

end Behavioral;
