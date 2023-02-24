----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2023 12:08:11
-- Design Name: 
-- Module Name: rc_adder - Behavioral
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

entity rc_adder is
    Port ( in1 : in STD_LOGIC_VECTOR (3 downto 0);
           in2 : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           outp : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end rc_adder;

architecture Behavioral of rc_adder is

component full_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end component;

signal c1,c2 ,c3: std_logic;

begin

add1 : full_adder port map(
            a => in1(0),
            b => in2(0),
            c => cin,
            sum => outp(0),
            carry => c1);
add2 : full_adder port map(
            a => in1(1),
            b => in2(1),
            c => c1,
            sum => outp(1),
            carry => c2);
add3 : full_adder port map(
            a => in1(2),
            b => in2(2),
            c => c2,
            sum => outp(2),
            carry => c3);
add4 : full_adder port map(
            a => in1(3),
            b => in2(3),
            c => c3,
            sum => outp(3),
            carry => cout);
end Behavioral;
