library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity scan4digit is
    Port ( digit0 : in  STD_LOGIC_VECTOR (6 downto 0);
           digit1 : in  STD_LOGIC_VECTOR (6 downto 0);
           digit2 : in  STD_LOGIC_VECTOR (6 downto 0);
           digit3 : in  STD_LOGIC_VECTOR (6 downto 0);
           clock : in  STD_LOGIC;
           An : out  STD_LOGIC_VECTOR (3 downto 0);
           Ca : out  STD_LOGIC;
           Cb : out  STD_LOGIC;
           Cc : out  STD_LOGIC;
           Cd : out  STD_LOGIC;
			  Ce : out  STD_LOGIC;
			  Cf : out  STD_LOGIC;
			  Cg : out  STD_LOGIC);
end scan4digit;

architecture Behavioral of scan4digit is

signal iCount16: std_logic_vector (15 downto 0):= (others => '0');
signal iDigitOut: std_logic_vector (6 downto 0);

begin
	process(clock)
	begin
	
		if rising_edge(clock) then
			iCount16 <= iCount16 + 1;
		end if;
		
	end process;
	
	
	with iCount16(15 downto 14) select
		iDigitOut <= digit0 when "00",
						 digit1 when "01",
						 digit2 when "10",
						 digit3 when "11",
						 digit0 when others;
						 
	with iCount16 (15 downto 14) select
		An <= "1110" when "00", -- with AN0 low only
				"1101" when "01", -- with AN1 low only
				"1011" when "10", -- with AN2 low only
				"0111" when "11", -- with AN3 low only
				"1110" when others;
		
		
	Ca <= iDigitOut(6);
	Cb <= iDigitOut(5);
	Cc <= iDigitOut(4);
	Cd <= iDigitOut(3);
	Ce <= iDigitOut(2);
	Cf <= iDigitOut(1);
	Cg <= iDigitOut(0);
		

end Behavioral;

