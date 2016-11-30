
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d4to7 is
    Port ( q : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0));
end d4to7;

architecture Behavioral of d4to7 is

begin


	seg <= "1111110" when q = "0000" else
			 "0110000" when q = "0001" else
			 "1101101" when q = "0010" else 
			 "1111001" when q = "0011" else
			"0110011" when q = "0100" else
			"1011011" when q = "0101" else
			"1011111" when q = "0110" else
			"1110000" when q = "0111" else
			"1111111" when q = "1000" else
			"1111011" when q = "1001" else
			"1110111" when q = "1010" else
			"0011111" when q = "1011" else
			"1001110" when q = "1100" else
			"0111101" when q = "1101" else
			"1001111" when q = "1110" else
			"1000111" when q = "1111" else
			"0000000";
end Behavioral;

