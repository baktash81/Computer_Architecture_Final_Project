----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:41:52 07/10/2022 
-- Design Name: 
-- Module Name:    Cache - Behavioral 
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
use work.my_package.all;
-- Direct MAp Cache + Two-way Set Assosiative

--- Direct Map : 

-- 32 entires --> 2^5 --> 5 bits index + 2 bits byte offset + 1 bit word offset
-- physical address has 11 bits so our tag will be 10 - 5 = 5 bits
entity Direct_Map_Cache is
	port(
	
		physical_addr : in std_logic_vector(10 downto 0);
		data_from_memory : in two_word_data;
		data_out : out std_logic_vector(7 downto 0);
		hit_status : out std_logic;
		read_bit : in std_logic;
		write_bit : in std_logic
	);
end Direct_Map_Cache;

architecture Behavioral of Direct_Map_Cache is

	signal valid_list : std_logic_vector(31 downto 0) := (others=> '0'); 
	signal tag_list : tag_data := (others => (others => '0'));
	signal data_cache : cach_data_blocks := (others => (others => (others => '0')));
	
begin
	
	process(physical_addr) is
	
		variable byte_offset : std_logic_vector(1 downto 0) := physical_addr(1 downto 0);
		variable word_offset : std_logic := physical_addr(2);
		variable index : std_logic_vector(4 downto 0) := physical_addr(7 downto 3);
		variable tag : std_logic_vector(2 downto 0) := physical_addr(10 downto 8);
		variable two_w_data : two_word_data;
		variable word : std_logic_vector(31 downto 0);
		
		begin
			if read_bit = '1' then
				if valid_list( to_integer(unsigned(index))) = '0' then 
					valid_list(to_integer(unsigned(index))) <= '1';
					hit_status <= '0';
				elsif tag_list(to_integer(unsigned(index))) = tag then
					hit_status <= '1';
					two_w_data := data_cache(to_integer(unsigned(index)));
					if word_offset = '1' then
						word := two_w_data(1);
					else
						word:=two_w_data(0);
					end if;
					data_out <= word(to_integer(unsigned(byte_offset)) * 8 + 7 downto to_integer(unsigned(byte_offset)) * 8);
				else
					hit_status <= '0';
			  end if;
			end if;
			
			if write_bit = '1' then
				valid_list(to_integer(unsigned(index))) <= '1';
				data_cache(to_integer(unsigned(index))) <= data_from_memory;
				tag_list(to_integer(unsigned(index))) <= tag;
			end if;
	end process;
end Behavioral;



-- Two-way set cache :

library ieee;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;  
use work.my_package.all;

entity two_way is
	port(
	
		physical_addr : in std_logic_vector(10 downto 0);
		data_from_memory : in two_word_data;
		data_out : out std_logic_vector(7 downto 0);
		hit_status : out std_logic;
		read_bit : in std_logic;
		write_bit : in std_logic
	);
end two_way;

architecture Behavioral of two_way is
	signal valid_list : valid_two_set := (others => (others => '0'));
	signal data_cache : cache_two_set := (others => (others => (others => (others => '0'))));
	signal tag_list : tag_two_set := (others => (others => (others => '0'))); 
	signal head : std_logic :='1';
begin
	
	process(physical_addr) is
	
		variable byte_offset : std_logic_vector(1 downto 0) := physical_addr(1 downto 0);
		variable word_offset : std_logic := physical_addr(2);
		variable index : std_logic_vector(4 downto 0) := physical_addr(7 downto 3);
		variable tag : std_logic_vector(2 downto 0) := physical_addr(10 downto 8);
		variable two_w_data : two_word_data;
		variable word : std_logic_vector(31 downto 0);
		
		begin
		
			if read_bit = '1' then
				if (valid_list(to_integer(unsigned(index)))(0) = '1') and (tag_list(to_integer(unsigned(index)))(0) = tag) then
					hit_status <= '1';
					two_w_data := data_cache(to_integer(unsigned(index)))(0);
					if word_offset = '0' then
						word := two_w_data(0);
					else
						word := two_w_data(1);
					end if;
					data_out <= word(to_integer(unsigned(byte_offset)) * 8 + 7 downto to_integer(unsigned(byte_offset)) * 8);
		
				elsif (valid_list(to_integer(unsigned(index)))(1) = '1') and (tag_list(to_integer(unsigned(index)))(1) = tag) then
					hit_status <= '1';
					two_w_data := data_cache(to_integer(unsigned(index)))(1);
					if word_offset = '0' then
						word := two_w_data(0);
					else
						word := two_w_data(1);
					end if;
					data_out <= word(to_integer(unsigned(byte_offset)) * 8 + 7 downto to_integer(unsigned(byte_offset)) * 8);
				else
					hit_status <= '0';
			end if;
		end if;
			
			if write_bit = '1' then
				valid_list(to_integer(unsigned(index)))(to_integer(unsigned'('0' & head))) <= '1';
				data_cache(to_integer(unsigned(index)))(to_integer(unsigned'('0' & head))) <= data_from_memory;
				tag_list(to_integer(unsigned(index)))(to_integer(unsigned'('0' & head))) <= tag;
				head <= not(head);
			end if;
	end process;
end Behavioral;
