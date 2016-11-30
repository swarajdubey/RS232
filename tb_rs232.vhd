--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:02:03 11/02/2015
-- Design Name:   
-- Module Name:   D:/xilinx-project/RS232/tb_rs232.vhd
-- Project Name:  RS232
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RS232
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_rs232 IS
END tb_rs232;
 
ARCHITECTURE behavior OF tb_rs232 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RS232
    PORT(
         Reset : IN  std_logic;
         Clock16x : IN  std_logic;
         Rxd : IN  std_logic;
         Send : IN  std_logic;
         DataIn : IN  std_logic_vector(7 downto 0);
         DataOut1 : OUT  std_logic_vector(7 downto 0);
         Txd : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clock16x : std_logic := '0';
   signal Rxd : std_logic := '0';
   signal Send : std_logic := '0';
   signal DataIn : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal DataOut1 : std_logic_vector(7 downto 0);
   signal Txd : std_logic;

   -- Clock period definitions
   constant Clock16x_period : time :=  6.5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RS232 PORT MAP (
          Reset => Reset,
          Clock16x => Clock16x,
          Rxd => Rxd,
          Send => Send,
          DataIn => DataIn,
          DataOut1 => DataOut1,
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
      wait for 30 ns;	
		Send <= '1';
		wait for 10ns;
		Send <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
