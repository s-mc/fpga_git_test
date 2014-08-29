-------------------------------------------------------------------------------
--
-- Title       : edgedetect
-- Design      : edgedet
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\edgedet\src\edgedetect.vhd
-- Generated   : Fri Aug 29 09:42:29 2014
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {edgedetect} architecture {edgedetect}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity edgedetect is
	 port(
		 clk : in STD_LOGIC;
		 signal_in : in STD_LOGIC;
		 output : out STD_LOGIC
	     );
end edgedetect;

--}} End of automatically maintained section

architecture edgedetect of edgedetect is
signal signal_d:STD_LOGIC;
begin

	-- enter your statements here --
	process(clk)
	begin
	 if clk ='1' and clk'event then
		 signal_d<=signal_in;
	 end if;
end process;

output<=(not signal_d) and signal_in;

end edgedetect;
