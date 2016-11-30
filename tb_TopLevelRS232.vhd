-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE tb_toplevelRS232 OF testbench IS 

  -- Component Declaration
          component TopLevelRS232
port( Reset, switchBD, Send, Rxd: in std_logic;
SystemClock: in std_logic;
DataIn: in std_logic_vector (7 downto 0); 
 Ca, Cb, Cc, Cd, Ce, Cf, Cg: out std_logic;
 An: out std_logic_vector(3 downto 0);
Txd: out std_logic;
RxdData: out std_logic_vector (7 downto 0));
end component;

          signal tb_reset, tb_send, tb_rxd: std_logic:='0';
			 
signal  tb_systemclock : std_logic:='0';

signal tb_DataIn : std_logic_vector(7 downto 0):="00000000" ;
signal tb_an : std_logic_vector (3 downto 0):="0000";
signal tb_ca, tb_cb, tb_cc, tb_cd, tb_ce, tb_cf, tb_cg : std_logic:='0';
signal tb_txd : std_logic:='0';
signal tb_switchBD : std_logic:='0';
signal tb_RxdData : std_logic_vector (7 downto 0):="00000000";

constant clock_period : time := 20 ns;
constant period : time := 325 * clock_period;
          

 BEGIN

  -- Component Instantiation
       -- unit uder test
UUT : TopLevelRS232 port map(
Reset=>tb_reset,
Send=>tb_send,
Rxd=>tb_rxd,
switchBD => tb_switchBD,
SystemClock=>tb_systemclock,
DataIn=>tb_dataIn,
An=>tb_an,
Ca=>tb_ca,
Cb=>tb_cb,
Cc=>tb_cc,
Cd=>tb_cd,
Ce=>tb_ce,
Cf=>tb_cf,
Cg=>tb_cg,

Txd=>tb_txd,
RxdData=>tb_RxdData);

  --  Test Bench Statements
 -- produce clock signal
process
begin
tb_systemclock <= '1';
wait for clock_period/2;
tb_systemclock <= '0';
wait for clock_period/2;
end process;

-- produce enable signal
--process
--begin
--
--
--tb_rxd <= '1';
--wait for 5.5*period;
--tb_rxd <= '0'; -- Start bit
--wait for 16*period;
--tb_rxd <= '0'; -- Bit 0
--wait for 16*period;
--tb_rxd <= '1'; -- Bit 1
--wait for 16*period;
--tb_rxd <= '0'; -- Bit 2
--wait for 16*period;
--tb_rxd <= '0'; -- Bit 3
--wait for 16*period;
--tb_rxd <= '0'; -- Bit 4
--wait for 16*period;
--tb_rxd <= '1'; -- Bit 5
--wait for 16*period;
--tb_rxd <= '1'; -- Bit 6
--wait for 16*period;
--tb_rxd <= '0'; -- Bit 7
--wait for 16*period;
--tb_rxd <= '1'; -- Stop bit
--wait for 16*period;
--
--wait for 20* period;
--tb_rxd <= '1';
--wait for 5.5*period;
--tb_rxd <= '0'; -- Start bit
--wait for 16*period;
--tb_rxd <= '0'; -- Bit 0
--wait for 16*period;
--tb_rxd <= '1'; -- Bit 1
--wait for 16*period;
--tb_rxd <= '0'; -- Bit 2
--wait for 16*period;
--tb_rxd <= '1'; -- Bit 3
--wait for 16*period;
--tb_rxd <= '1'; -- Bit 4
--wait for 16*period;
--tb_rxd <= '0'; -- Bit 5
--wait for 16*period;
--tb_rxd <= '1'; -- Bit 6
--wait for 16*period;
--tb_rxd <= '0'; -- Bit 7
--wait for 16*period;
--tb_rxd <= '1'; -- Stop bit
--wait for 16*period;
--wait;
--
--end process;
--
-- produce Send signal
process
begin

tb_switchBD <= '1';
wait for 2 * clock_period;
tb_switchBD <= '0';
wait for 2 * clock_period;tb_switchBD <= '1';
tb_switchBD <= '1';

wait for 2 * clock_period;tb_switchBD <= '1';
tb_switchBD <= '0';
wait for 2 * clock_period;



end process;



-- produce reset signal
--process
--begin
--tb_reset <= '1';
--wait for 1.5*clock_period;
--tb_reset <= '0';
--wait;
--end process;



  END;
