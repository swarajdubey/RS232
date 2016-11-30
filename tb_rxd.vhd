LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_rxd IS
END tb_rxd;
 
ARCHITECTURE behavior OF tb_rxd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RS232Rxd
    PORT(
         Reset : IN  std_logic;
         Clock16x : IN  std_logic;
         Rxd : IN  std_logic;
         DataOut1 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clock16x : std_logic := '0';
   signal tb_rxd : std_logic := '0';
	
 	--Outputs
   signal DataOut1 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant period : time := 6.5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RS232Rxd PORT MAP (
          Reset => Reset,
          Clock16x => Clock16x,
          Rxd => tb_rxd,
          DataOut1 => DataOut1
        );

   -- Clock process definitions
   Clock16x_process :process
   begin
		Clock16x <= '0';
		wait for period/2;
		Clock16x <= '1';
		wait for period/2;
   end process;
 process
begin


tb_rxd <= '1';
wait for 5.5*period;
tb_rxd <= '0'; -- Start bit
wait for 16*period;
tb_rxd <= '1'; -- Bit 0
wait for 16*period;
tb_rxd <= '1'; -- Bit 1
wait for 16*period;
tb_rxd <= '0'; -- Bit 2
wait for 16*period;
tb_rxd <= '0'; -- Bit 3
wait for 16*period;
tb_rxd <= '0'; -- Bit 4
wait for 16*period;
tb_rxd <= '1'; -- Bit 5
wait for 16*period;
tb_rxd <= '1'; -- Bit 6
wait for 16*period;
tb_rxd <= '0'; -- Bit 7
wait for 16*period;
tb_rxd <= '1'; -- Stop bit
wait for 16*period;

--2nd data---
wait for 40*period;
tb_rxd <= '0'; -- Start bit
wait for 16*period;
tb_rxd <= '0'; -- Bit 0
wait for 16*period;
tb_rxd <= '1'; -- Bit 1
wait for 16*period;
tb_rxd <= '1'; -- Bit 2
wait for 16*period;
tb_rxd <= '0'; -- Bit 3
wait for 16*period;
tb_rxd <= '0'; -- Bit 4
wait for 16*period;
tb_rxd <= '0'; -- Bit 5
wait for 16*period;
tb_rxd <= '1'; -- Bit 6
wait for 16*period;
tb_rxd <= '1'; -- Bit 7
wait for 16*period;
tb_rxd <= '1'; -- Stop bit
wait for 16*period;


--third data

tb_rxd <= '1';
wait for 5.5*period;
tb_rxd <= '0'; -- Start bit
wait for 16*period;
tb_rxd <= '1'; -- Bit 0
wait for 16*period;
tb_rxd <= '1'; -- Bit 1
wait for 16*period;
tb_rxd <= '0'; -- Bit 2
wait for 16*period;
tb_rxd <= '0'; -- Bit 3
wait for 16*period;
tb_rxd <= '0'; -- Bit 4
wait for 16*period;
tb_rxd <= '1'; -- Bit 5
wait for 16*period;
tb_rxd <= '1'; -- Bit 6
wait for 16*period;
tb_rxd <= '0'; -- Bit 7
wait for 16*period;
tb_rxd <= '1'; -- Stop bit
wait for 16*period;

wait for 50*period;
Reset <= '1';

wait for 20*period;


end process;
	
	

END;
