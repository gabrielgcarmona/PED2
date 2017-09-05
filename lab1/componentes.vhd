library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



package componentes is

    component mux is
        generic(
            pre05hz : STD_LOGIC_VECTOR (26 downto 0):= "101111101011110000100000000";
            pre1hz : STD_LOGIC_VECTOR (26 downto 0):= "010111110101111000010000000";
            pre2hz : STD_LOGIC_VECTOR (26 downto 0):= "001011111010111100001000000";
            pre4hz : STD_LOGIC_VECTOR (26 downto 0):= "000101111101011110000100000"
        );
        
        Port ( 
               sel : in STD_LOGIC_VECTOR (1 downto 0);
               preout : out STD_LOGIC_VECTOR (26 downto 0));
    end component;
    
    component divisor_clk is
       --generic (preset : std_logic_vector(26 downto 0):= (others=>'0'));
        port (  reset : in STD_LOGIC;
                clk : in STD_LOGIC;
                preset : std_logic_vector(26 downto 0):= (others=>'0');
                outclk : out STD_LOGIC);
    end component;

end package;

package body componentes is

end package body;
