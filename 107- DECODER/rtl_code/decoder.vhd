----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 19:22:00
-- Design Name: 
-- Module Name: decoder - arch
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

entity decoder is
    Port ( inp : in STD_LOGIC_VECTOR (2 downto 0);
           op : out STD_LOGIC_VECTOR (7 downto 0));
end decoder;

architecture arch of decoder is

signal not1,not2,not0 : std_logic;

begin

not0 <= not inp(0);
not1 <= not inp(1);
not2 <= not inp(2);
op(0) <= not0 and not1 and not2;
op(1) <= inp(0) and not1 and not2;
op(2) <= not0 and inp(1) and not2;
op(3) <= inp(0) and inp(1) and not2;
op(4) <= not0 and not1 and inp(2);
op(5) <= inp(0) and not1 and inp(2);
op(6) <= not0 and inp(1) and inp(2);
op(7) <= inp(0) and inp(1) and inp(2);

end arch;
