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

entity Rs232Txd is
    Port ( Reset : in  STD_LOGIC;
           Send : in  STD_LOGIC;
           Clock16x : in  STD_LOGIC;
           DataIn : in  STD_LOGIC_VECTOR (7 downto 0);
           Txd : out  STD_LOGIC);
end Rs232Txd;

architecture Behavioral of Rs232Txd is

attribute enum_encoding: string;
-- state definitions
type stateType is (stIdle, stData, stStop, stTxdCompleted);
attribute enum_encoding of stateType: type is "00 01 11 10";
signal presState: stateType;
signal nextState: stateType;
signal iReset, iClock1xEnable, iEnableTxdBuffer, iEnableShift: std_logic:='0';
signal iSend1, iSend2 : std_logic:='0'; --detect rising edge of Send signal.
signal iTxdBuffer: std_logic_vector (8 downto 0):="111111111";
signal iClockDiv: std_logic_vector (3 downto 0):="0000";
signal iClock1x: std_logic:='0';
signal iNoBitsSend: std_logic_vector (3 downto 0):="0000";
--signal sendCount: std_logic_vector (19 downto 0) :="00000000000000000000"; this may not be needed




begin

	process (Clock16x)
	begin
	if rising_edge(Clock16x) then
	
		if Reset = '1' or iReset = '1' then -- if the fli flop is reset
			--iSend1 <= '0';
			--iSend2 <= '0';
			--sendCount <= "00000000000000000000"; this may not be needed
			
			iClockDiv <=(others => '0'); -- reset the system
			iClock1xEnable <= '0'; --reset the system
	
		else
		
			iSend1 <= Send;
			iSend2 <= iSend1;
			
		
		end if;
		
		if iSend1 = '1' and iSend2 = '0' then --it might have switch debouncing. (assume now dont have)
			
			iClock1xEnable <= '1'; --low to high has been detected
			
		end if;
--
--		if iSend1 = '1' and iSend2 = '1' then
--			
--			sendCount <= sendCount + '1';
--			
--		else if iSend1 = '1' and iSend2 = '0' then --falling edge
--			
--			sendCount <= "00000000000000000000"; --reset
--			
--		else if iSend1 = '0' and iSend2 = '1' then
--			
--			sendCount <= "00000000000000000000"; -- reset
--			
--		end if;
--		end if;
--		end if;
--		
		
--		if sendCount = x"C3" then
--		--if sendCount = x"02" then
--		
--		iClock1xEnable <= '1';
--		
--		end if;
		
			
		if iClock1xEnable = '1' then
				iClockDiv <= iClockDiv + '1'; --start divinding the clock
		else 
			iClockDiv <= (others => '0'); --till iClock1xEnable is not 1 then this will obviosly be zero
			end if;
		
	
	end if;
	
	end process;
	
iClock1x <= iClockDiv(3);



	process(iClock1xEnable, iClock1x)
	begin  
	
	if iClock1xEnable = '0' then
		iNoBitsSend <= (others => '0');
		
		presState <= stIdle;
		
	else if iClock1x'event and iClock1x = '1' then --rising edge has been detected and number of bits transmitted will start incrementing
		iNoBitsSend <= iNoBitsSend + '1'; --counter for the program, this will count until 9 
		presState <= nextState; -- now we head to stData state
	end if;
	end if;
	
	if rising_edge(iClock1x) then --upon the rising edge of clock
	
	if iEnableTxdBuffer = '1' then
		iTxdBuffer <= DataIn & '0'; --first 0 is the start bit
	
	else if iEnableShift = '1' then --shifting is enabled meaning bits are being accepted
		
		iTxdBuffer <= '1' & iTxdBuffer(8 downto 1) ; --main data to be transmitted
		
		end if;
		end if;
	
	end if;
	
	end process;
	
	
	Txd <= iTxdBuffer(0); --always take the iTxdBuffer LSB which is the main bit to be trasnmitted
	
	
	process (presState, iClock1xEnable, iNoBitsSend)
	begin
	
		iEnableTxdBuffer <= '0';
		iEnableShift <= '0';
		iReset <= '0';
		
		case presState is
		when stIdle =>
			if iClock1xEnable = '1' then
			nextState <= stData;
			iEnableTxdBuffer <= '1';
			
			else
			nextState <= stIdle;
			end if;
		
		when stData =>
			
			iEnableTxdBuffer <= '0';
			iEnableShift <= '1';
			
			if iNoBitsSend = "1010" then --the first clock ccle is the loading, second to 9th cycle is data transmit.
				iEnableShift <= '0';
				nextState <= sttxdCompleted;
			else
				
				nextState <= stData;
				end if;
				
				
		when stStop =>
				nextState <= sttxdCompleted;
				
		when sttxdCompleted =>
				iReset <= '1';
				nextState <= stIdle;
		
		end case;
		end process;
	
	
end Behavioral;

