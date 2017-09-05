----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.09.2017 13:23:04
-- Design Name: 
-- Module Name: mux - Behavioral
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

entity mux is
    generic(
        pre05hz : STD_LOGIC_VECTOR (26 downto 0):= "101111101011110000100000000";
        pre1hz : STD_LOGIC_VECTOR (26 downto 0):= "010111110101111000010000000";
        pre2hz : STD_LOGIC_VECTOR (26 downto 0):= "001011111010111100001000000";
        pre4hz : STD_LOGIC_VECTOR (26 downto 0):= "000101111101011110000100000"
    );
    
    Port ( 
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           preout : out STD_LOGIC_VECTOR (26 downto 0));
end mux;

architecture Behavioral of mux is

 

begin
    process(sel)
    begin
        case sel is
            when "00" => preout <= pre05hz;
            when "01" => preout <= pre1hz;
            when "10" => preout <= pre2hz;
            when "11" => preout <= pre4hz;
            when others => preout <= (others => '0');
        end case;
    end process;


end Behavioral;
