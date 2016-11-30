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

entity TopLevelRS232 is
    Port ( Rxd : in  STD_LOGIC; --this was declared two times
			  switchBD : in  STD_LOGIC;--newly added for switching baudrate
           Send : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           SystemClock : in  STD_LOGIC;
           DataIn : in  STD_LOGIC_VECTOR (7 downto 0); --incoming data
			  
			  --ye sab LED ke segments hai , mobile par photo dekh 
           An : out  STD_LOGIC_VECTOR (3 downto 0);
           Ca : out  STD_LOGIC;
           Cb : out  STD_LOGIC;
           Cc : out  STD_LOGIC;
           Cd : out  STD_LOGIC;
           Ce : out  STD_LOGIC;
           Cf : out  STD_LOGIC;
           Cg : out  STD_LOGIC;
         -- ground : out  STD_LOGIC;
           Txd : out  STD_LOGIC;
          RxdData : out  STD_LOGIC_VECTOR (7 downto 0)); --data to be sent out this might not be needed
end TopLevelRS232;

architecture Behavioral of TopLevelRS232 is


component RS232 --RS232.vhd ki entity ye hai
port( Reset, Clock16x, Rxd: in std_logic;
Send: in std_logic;
DataIn: in std_logic_vector(7 downto 0);
DataOut1: out std_logic_vector (7 downto 0);
btShift : out STD_LOGIC_VECTOR (0 downto 0);
Txd: out std_logic);
end component;

component D4to7 --d4to7.vhd ki entity ya hai
port ( Q: in std_logic_vector (3 downto 0);
Seg: out std_logic_vector (6 downto 0));
end component;

component scan4digit --scan4digit.vhd ki entity hai ye
port ( Digit3, Digit2, Digit1, Digit0: in std_logic_vector(6 downto 0);
Clock: in std_logic; An : out std_logic_vector(3 downto 0);
Ca, Cb, Cc, Cd, Ce, Cf, Cg: out std_logic);
end component;

signal iClock16x: std_logic := '0'; --this wil be generated based on the systemclock
signal iClock : std_logic := '0'; 

signal iDigitOut3, iDigitOut2, iDigitOut1, iDigitOut0: std_logic_vector (6 downto 0) := "0000000"; --newly added for each of the 4 main LED's
signal iDataOut1: std_logic_vector (7 downto 0) := "00000000";
signal iDataOut2: std_logic_vector (7 downto 0) := "00000000";
signal iCount9: std_logic_vector (8 downto 0):= "000000000";
signal ibtShift :STD_LOGIC_VECTOR (0 downto 0):="0";--newly added
--signal isend : std_logic := '0'; 
signal iPrev1: std_logic_vector (7 downto 0) := "00000000"; --newly added
signal iPrev2: std_logic_vector (7 downto 0) := "00000000"; --newly added
signal ishiftsend :STD_LOGIC_VECTOR (1 downto 0):="00" ; --newly added
signal iBD1 : std_logic := '0'; --newly added (for switch detect)
signal iBD2 : std_logic := '0';  --newly added (for switch detect)
signal iEnableBD : std_logic := '0'; --newly added
type stateBD is (st9600, st38400, st115200); --state machine for the baud rates
attribute enum_encoding: string;
attribute enum_encoding of stateBD: type is "00 01 10";
signal presState: stateBD :=st9600; --currently both the states are at the default 9600bits/s baud rate
signal nextState: stateBD :=st9600;
signal brCount : std_logic_vector (23 downto 0):="000000000000000000000000"; --newly added for baud rate count



begin

	--ground <= '0';
	RxdData <= iDataOut1;
--	iDataOut2 <= DataIn;
--	ishiftsend <= ibtShift & isend;

process(ibtShift,Reset) --this process is not be needed!!!
	begin
		
		case ibtShift  is 
		when "1" =>
			iDataOut2 <= iPrev1;
			iPrev2 <= iDataOut1;
			
		when "0" =>
			iDataOut2 <= iPrev2;
			iPrev1 <= iDataOut1;
			
		when others => 
		--	iDataOut2 <= DataIn;

		end case;
		
end process;
		
	
	
	
	
process(SystemClock) --this is the 50M clock on the fpga
	begin
		if rising_edge(SystemClock) then
		
		iCount9 <= iCount9 + '1';
		presState <= nextState;
		
			if Reset = '1' then
				iCount9 <= (others=>'0');
			else
			iBD1 <= switchBD; --waiting for the switch to be pressed to change the baud rate
			iBD2 <= iBD1;
			iEnableBD <= '0';
			end if;
		
		case presState is
			when st9600 =>
				if iCount9 = "101000101" then -- the divider is 325, or "101000101"
				iCount9 <= (others=>'0');--should be set to null otherwise the divider will fail
				end if;
			
			when st38400 =>
				if iCount9 = "001010000" then -- the divider is 80 thus the baud rate is 38400
				iCount9 <= (others=>'0');--should be set to null otherwise the divider will fail
				end if;
				
			when st115200 =>
				if iCount9 = "000011011" then -- the divider is 27 thus the baud rate is 115200
				iCount9 <= (others=>'0');--should be set to null otherwise the divider will fail
				end if;
				
		end case;
		
		if iBD1 = '1' and iBD2 = '0' then
			iEnableBD <= '1';--this means that the baud rate change button has been pressed
			iCount9 <= (others=>'0');
		end if;

--		if iBD1 = '1' and iBD2 = '1' then
--			brCount <= brCount + '1';
--		else if iBD1 = '1' and iBD2 = '0' then
--			brCount <= (others =>'0'); --reset
--		else if iBD1 = '0' and iBD2 = '1' then
--			brCount <= (others =>'0');
--		
--		end if;
--		end if;
--		end if;
--		
--		if brCount = x"4C4640" then
--			iEnableBD <= '1';
--		end if;
--		
		
		end if;
end process;

process(iCount9,iEnableBD,presState)--this is the main process that will change the baud rate upon pressing the button
begin
	
	case presState is 
	when st9600 =>
		iClock16x <= iCount9(8); --frequency for baud rate 9600
		if iEnableBD = '1' then --first press of the switch
			nextState <= st38400;
		else nextState <= presState; --else remain in the current state
		end if;
	
	when st38400 =>
		iClock16x <= iCount9(6); --frequency for baud rate 38400
		if iEnableBD = '1' then --second press of the switch
			nextState <= st115200;
		else nextState <= presState; --else remain in the current state
		end if;
	
	when st115200 =>
		iClock16x <= iCount9(4); --frequency for baud rate 115200
		if iEnableBD = '1' then --third press of the switch
			nextState <= st9600;
		else nextState <= presState; --else remain in the current state
		end if;
	
	end case;
	
end process;

--iClock16x <= iCount9(8); --this is the default baud rate of 9600

	U1: RS232 port map (
			Reset => Reset,
			Clock16x => iClock16x,
			Rxd => Rxd,
			Send => Send,
			DataIn => DataIn,
			DataOut1 => iDataOut1, --the final received value will be passed from DataOut1 to iDataOut1
			btShift => ibtShift,
			Txd => Txd);
			
	U2: D4to7 port map (
			Q => iDataOut1(3 downto 0), --push the last 4 bits of the received data to the last LED
			Seg => iDigitOut0);
			
	U3: D4to7 port map (
			Q => iDataOut1(7 downto 4), --push the first 4 bits of the received data to the 2nd last LED
			Seg => iDigitOut1);
			
	--these are for sending data to the first 2 LEDS which denote the ascii value being sent
	U4: D4to7 port map (
			Q => iDataOut2(3 downto 0),
			Seg => iDigitOut2);
			
	U5: D4to7 port map (
			Q => iDataOut2(7 downto 4),
			Seg => iDigitOut3);


	U6: scan4digit port map (
			Digit3 => iDigitOut3,
			Digit2 => iDigitOut2,
			Digit1 => iDigitOut1,
			Digit0 => iDigitOut0,
			Clock => SystemClock,
			An => An,
			Ca => Ca,
			Cb => Cb,
			Cc => Cc,
			Cd => Cd,
			Ce => Ce,
			Cf => Cf,
			Cg => Cg);

end Behavioral;

