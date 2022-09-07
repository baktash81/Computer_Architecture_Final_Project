----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:51:13 07/10/2022 
-- Design Name: 
-- Module Name:    Memory - Behavioral 
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
library ieee;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
use work.my_package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory is

	port(
	
		
		physical_addr : in std_logic_vector(10 downto 0);
		data_from_disk : in type_of_page;
		read_data : out two_word_data;
		outer_ppn: out std_logic_vector(3 downto 0);
		read_bit : in std_logic;
		write_bit : in std_logic
	);

end Memory;

architecture Behavioral of Memory is
signal data_list : memory_data_blocks := (others => (others => (others => (others => '0'))));
signal head : integer := 0;
begin
	
	process(physical_addr)
	is
		variable ppn : std_logic_vector(3 downto 0);  
		variable page : type_of_page; 
		variable page_offset : std_logic_vector(6 downto 0);
		variable word_offset : integer;
	begin
		if write_bit = '1' then
			data_list(head) <= data_from_disk;
			outer_ppn <= std_logic_vector(to_unsigned(head, 4));
			head <= (head + 1) mod 13;
		end if;
			if read_bit = '1' then
				page_offset := physical_addr(6 downto 0);
				ppn := physical_addr(10 downto 7);
				page := data_list(to_integer(unsigned(ppn)));
				word_offset := to_integer(unsigned(page_offset(6 downto 3)));--block offset
				read_data <= page(word_offset);
			end if;
	end process;

end Behavioral;

