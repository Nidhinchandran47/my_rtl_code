----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2023 12:27:07
-- Design Name: 
-- Module Name: rc_adder_tb - Behavioral
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

entity rc_adder_tb is
--  Port ( );
end rc_adder_tb;

architecture Behavioral of rc_adder_tb is

component rc_adder is
    Port ( in1 : in STD_LOGIC_VECTOR (3 downto 0);
           in2 : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           outp : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end component;

signal cin,cout : std_logic;
signal in1,in2,outp :std_logic_vector (3 downto 0);

begin

uut : rc_adder port map(
        in1 => in1,
        in2 => in2,
        cin => cin,
        outp => outp,
        cout => cout); 

force1: process
begin
    in2 <= "0000";
    wait for 10 ns;  
    in2 <= "0001";
    wait for 10 ns;  
    in2 <= "0010";
    wait for 10 ns;
    in2 <= "0011";
    wait for 10 ns;
    in2 <= "0100";
    wait for 10 ns;
    in2 <= "0101";
    wait for 10 ns;
    in2 <= "0110";
    wait for 10 ns;
    in2 <= "0111";
    wait for 10 ns;
    in2 <= "1000";
    wait for 10 ns;  
    in2 <= "1001";
    wait for 10 ns;  
    in2 <= "1010";
    wait for 10 ns;
    in2 <= "1011";
    wait for 10 ns;
    in2 <= "1100";
    wait for 10 ns;
    in2 <= "1101";
    wait for 10 ns;
    in2 <= "1110";
    wait for 10 ns;
    in2 <= "1111";
    wait for 10 ns;
end process;

force2: process
begin
    
    in1 <= "0000";
    wait for 160 ns;
    in1 <= "0001";
    wait for 160 ns;
    in1 <= "0010";
    wait for 160 ns;
    in1 <= "0011";
    wait for 160 ns;
    in1 <= "0100";
    wait for 160 ns;
    in1 <= "0101";
    wait for 160 ns;
    in1 <= "0110";
    wait for 160 ns;
    in1 <= "0111";
    wait for 160 ns;
    in1 <= "1000";
    wait for 160 ns;
    in1 <= "1001";
    wait for 160 ns; 
    in1 <= "1010";
    wait for 160 ns;
    in1 <= "1011";
    wait for 160 ns;
    in1 <= "1100";
    wait for 160 ns;
    in1 <= "1101";
    wait for 160 ns;
    in1 <= "1110";
    wait for 160 ns;
    in1 <= "1111";
    wait for 160 ns;
end process;

force3: process
begin
    cin <= '0';
    wait for 25600 ns;
    cin<='1';
    wait for 25600 ns;
end process;

end Behavioral;
