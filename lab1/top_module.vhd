----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.09.2017 13:52:34
-- Design Name: 
-- Module Name: top_module - Behavioral
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
use work.componentes.all;
use IEEE.NUMERIC_STD.ALL;

entity top_module is
    generic(N: integer:= 4);
    Port ( sel : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (3 downto 0));
end top_module;

architecture Behavioral of top_module is
    type presets is array(N - 1 downto 0) of std_logic_vector(26 downto 0);
    signal preout: presets;
    signal pre: std_logic_vector(26 downto 0);
begin
mymuxes: for i in 0 to N-1 generate
    muxes: mux 
        port map(sel => sel((2*i + 1) downto 2*i),
                 preout => preout(i));
    divisor: divisor_clk 
--        generic map(
--            preset => preout(i))
        port map(reset => reset,
                 clk => clk,
                 preset => preout(i),
                 outclk => led(i));               
end generate mymuxes;

end Behavioral;
