
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_txd IS
END tb_txd;
 
ARCHITECTURE behavior OF tb_txd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Rs232Txd
    PORT(
         Reset : IN  std_logic;
         Send : IN  std_logic;
         Clock16x : IN  std_logic;
         DataIn : IN  std_logic_vector(7 downto 0);
         Txd : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Send : std_logic := '0';
   signal Clock16x : std_logic := '0';
   signal DataIn : std_logic_vector(7 downto 0) := (others => '1');

 	--Outputs
   signal Txd : std_logic;

   -- Clock period definitions
   constant Clock16x_period : time := 6.5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Rs232Txd PORT MAP (
          Reset => Reset,
          Send => Send,
          Clock16x => Clock16x,
          DataIn => DataIn,
          Txd => Txd
        );

   -- Clock process definitions
   Clock16x_process :process
   begin
		Clock16x <= '0';
		wait for Clock16x_period/2;
		Clock16x <= '1';
		wait for Clock16x_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 10ns;
		DataIn <= "11001101"; --data to be transmitted 
      wait for 30 ns;	
		Send <='1';
      wait for 10 ns;
		Send <= '0';
		
		
		wait for 1500ns;
		DataIn <= "11001001";
      wait for 30 ns;	
		Send <='1';
      wait for 10 ns;
		Send <= '0';
		
--		--SWITCH DEBOUNCE
--		  wait for 10 ns;
--		Send <= '1';
--		wait for 10ns;
--		Send <= '0';
		
--		wait for 10ns;
--		Send <= '1';
--		wait for 10ns;
--		Send <= '0';
--		
		
--		
--		wait for 1300ns;
--		DataIn <= "01101011";
--      wait for 30 ns;	
--		Send <='1';
--      wait for 10ns;
--		Send <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
