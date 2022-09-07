----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:03:14 07/09/2022 
-- Design Name: 
-- Module Name:    packages - Behavioral 
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
use ieee.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



package my_package is
	-- hard disk
	type two_word_data is array (0 to 1) of std_logic_vector(31 downto 0);	
	type type_of_page is array (0 to 15) of two_word_data;
	
	type memory_data_blocks is array (0 to 12) of type_of_page;
	type cach_data_blocks is array (0 to 31) of two_word_data;
	type tag_data is array (0 to 31) of std_logic_vector(2 downto 0);
	type valid_two_set is array (0 to 15) of std_logic_vector(1 downto 0);
	type tag2set is array (0 to 1) of std_logic_vector(2 downto 0);
	type tag_two_set is array (0 to 15) of tag2set;
	type cache2set is array (0 to 1) of two_word_data;
	type cache_two_set is array (0 to 15) of cache2set;
	
	--TLB
	type TLB_ppn is array (0 to 47) of std_logic_vector(3 downto 0); 
	type TLB_tag is array (0 to 47) of std_logic_vector(8 downto 0); 
	
	type ppn_arr is array (0 to 511) of std_logic_vector(3 downto 0);
end my_package;

