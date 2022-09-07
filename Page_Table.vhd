----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:14:19 07/10/2022 
-- Design Name: 
-- Module Name:    Page_Table - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.my_package.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Page_Table is

port(

	vpn : in std_logic_vector(8 downto 0);
	ppn_for_read : out std_logic_vector(3 downto 0);
	ppn_for_write : in std_logic_vector(3 downto 0);
	hit_status : out std_logic;
	write_bit : in std_logic;
	read_bit : in std_logic

);

end Page_Table;

architecture Behavioral of Page_Table is

signal valid_list: std_logic_vector(0 to 511) := (others => '0');
signal ppn_list : ppn_arr := (others => (others => '0'));  


begin
	
	process(vpn) is?
	
		begin 
			if read_bit = '1' then
				hit_status <= '0';
				if valid_list(to_integer(unsigned(vpn))) = '1' then
					ppn_for_read <= ppn_list(to_integer(unsigned(vpn)));
					hit_status <= '1';
				end if;
			end if;   
			
			if write_bit = '1' then
				valid_list(to_integer(unsigned(vpn))) <= '1';
				ppn_list(to_integer(unsigned(vpn))) <= ppn_for_write;
			end if;
  end process;

end Behavioral;

