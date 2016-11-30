library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RS232Rxd is
    Port ( Reset : in  STD_LOGIC;
           Clock16x: in  STD_LOGIC;
           Rxd : in  STD_LOGIC;
			  btShift : out STD_LOGIC_VECTOR (0 downto 0);
           DataOut1 : out  STD_LOGIC_VECTOR (7 downto 0));
end RS232Rxd;

architecture Behavioral of RS232Rxd is

attribute enum_encoding: string;
-- state definitions
type stateType is (stIdle, stData, stStop, stRxdCompleted);
--type stateType is (stRxdCompleted, stData, stStop, stIdle);
attribute enum_encoding of statetype: type is "00 01 11 10";
--attribute enum_encoding of statetype: type is "11 01 00 10";
signal presState: stateType;
signal nextState: stateType;
signal iReset, iResetReg, iRxd1, iRxd2, iClock1xEnable, iClock1x, iEnableDataOut: std_logic :='0' ;
signal iClockDiv: std_logic_vector (3 downto 0):="0000";
signal iBtShift: STD_LOGIC_VECTOR (0 downto 0) := "0";
signal iDataOut1, iShiftRegister: std_logic_vector (7 downto 0):="00000000" ;
signal iNoBitsReceived: std_logic_vector (3 downto 0):="0000" ;

begin

	process (Clock16x)
	begin
		if rising_edge(Clock16x) then
			if Reset ='1' then 
				iResetReg <= '1'; 
				iClock1xEnable <= '1';
			end if;
			
			if Reset = '1' or iReset = '1' then
				iRxd1 <= '1'; --initially both these signals have to be high
				iRxd2 <= '1';
				iClock1xEnable <= '0';
				iClockDiv <= (others => '0');
			else 
				iRxd1 <= Rxd;
				iRxd2 <= iRxd1;
			end if;
			
			if iRxd1 = '0' and iRxd2 = '1' then --drop in signal is detected
				iClock1xEnable <= '1'; --start receving the bits
			end if;
			
			if iClock1xEnable = '1' then --start enabling iclock1x
				iClockDiv <= iClockDiv + '1';
			else iClockDiv <= (others => '0'); --this means no receving hence iclock1x should not have any value
			end if;
		
		end if;
		
	end process;
	
	
	iClock1x <= iClockDiv(3);

	process(iClock1xEnable, iClock1x)
	begin  
			
		if iClock1xEnable = '0' then --no receving
			iNoBitsReceived <= (others => '0');
			presState <= stIdle;
			
			else if iClock1x'event and iClock1x = '1' then --receving the bits now
				iNoBitsReceived <= iNoBitsReceived + '1'; --start counting the bits
				presState <= nextState; -- move to stData
			end if;	
		end if;
		
		if rising_edge(iClock1x) then
			if iResetReg ='1' then --this means no receving of data so much clear internal shift register
				iShiftRegister <= "00000000";
			else if iEnableDataOut = '1' then --this means all 8 bits have been received
				iDataOut1 <= iShiftRegister;
				iBtShift <= iBtShift + '1'; --this is not needed
			else 
				iShiftRegister <= Rxd & iShiftRegister(7 downto 1); --push the incoming bit 'Rxd' into this register
			end if;
			
			end if;
		end if;
	
	end process;
	

	
	DataOut1 <= iDataOut1; --receive all the data and push for LED display
	btShift <= iBtShift; --this may not be needed
	
	
	process (presState, iClock1xEnable, iNoBitsReceived)
	begin

		iReset <= '0';
		iEnableDataOut <= '0';
		case presState is
		when stIdle =>
			if iClock1xEnable = '1' then
				nextState <= stData;
			else
				nextState <= stIdle;
			end if;
		when stData =>
			if iNoBitsReceived = "1001" then
				iEnableDataOut <= '1'; 
				nextState <= stStop;
			else
				iEnableDataOut <= '0'; --keep receiving data
				nextState <= stData;
			end if;
		when stStop =>
				nextState <= stRxdCompleted;
				--iEnableDataOut <= '1'; --this might not be needed!!!
		when stRxdCompleted =>
				iReset <= '1'; --reset the entire system for it to receive the nexy byte of data
				nextState <= stIdle;
		end case;
	end process;




end Behavioral;

