library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RS232 is
    Port ( Reset : in  STD_LOGIC;
           Clock16x : in  STD_LOGIC;
           Rxd : in  STD_LOGIC;
           Send : in  STD_LOGIC;
           DataIn : in  STD_LOGIC_VECTOR (7 downto 0);
           DataOut1 : out  STD_LOGIC_VECTOR (7 downto 0);
			   btShift : out STD_LOGIC_VECTOR (0 downto 0);
           Txd : out  STD_LOGIC);
end RS232;

architecture Behavioral of RS232 is

component Rs232Rxd
port( Reset, Clock16x, Rxd: in std_logic;
 btShift : out STD_LOGIC_VECTOR (0 downto 0);
DataOut1: out std_logic_vector (7 downto 0));

end component;

component Rs232Txd
port( Reset, Send, Clock16x: in std_logic;
		DataIn: in std_logic_vector(7 downto 0);
		Txd: out std_logic);
		
end component;

begin

u1: Rs232Rxd port map(
Reset => Reset,
Clock16x => Clock16x,
Rxd => Rxd,
btShift => btShift,
DataOut1 => DataOut1);


u2: Rs232Txd port map(
Reset => Reset,
Send => Send,
Clock16x => Clock16x,
DataIn => DataIn,
Txd => Txd);

end Behavioral;
