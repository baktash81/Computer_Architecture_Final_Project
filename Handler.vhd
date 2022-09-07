----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:42:47 07/10/2022 
-- Design Name: 
-- Module Name:    Handler - Behavioral 
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
use work.my_package.all;


entity Handler is

port(

	start_time : in bit;
	
	final_result : out std_logic_vector(7 downto 0)

);

end Handler;

architecture Behavioral of Handler is


	signal read_bit_page_table : std_logic;
	signal read_bit_cache      : std_logic;
	signal read_bit_hard_disk  : std_logic;
	signal read_bit_processor  : std_logic;
	signal read_bit_tlb        : std_logic;
	signal read_bit_memory     : std_logic;
	
	
	signal ppn_tlb                      : std_logic_vector(3 downto 0);
	signal ppn_tlb_come_from_page_table : std_logic_vector(3 downto 0);
	signal ppn_write_page_table         : std_logic_vector(3 downto 0);
	signal ppn_read_page_table          : std_logic_vector(3 downto 0);
	signal ppn_out_memory               : std_logic_vector(3 downto 0);
	
	
	signal write_bit_page_table : std_logic;
	signal write_bit_cache      : std_logic;
	signal write_bit_memory     : std_logic;
	signal write_bit_tlb        : std_logic;
	
	signal virtual_addr    : std_logic_vector(15 downto 0);
	signal index_processor : integer;
	
	
	signal data_from_memory_cache : two_word_data;
	signal data_read_cache        : std_logic_vector(7 downto 0);
	signal data_from_disk_memory  : type_of_page;
	signal data_read_memory       : two_word_data;
	
	signal vpn_tlb           : std_logic_vector(8 downto 0);
	signal vpn_page_table    : std_logic_vector(8 downto 0);
	signal address_hard_disk : std_logic_vector(8 downto 0);
	

	
	signal hit_status_tlb        : std_logic;
	signal hit_status_cache      : std_logic;
	signal hit_status_page_table : std_logic;
	
	
	signal physical_addr_cache  : std_logic_vector(10 downto 0);
	signal physical_addr_memory : std_logic_vector(10 downto 0);
	
	
	
	
	signal page_hard_disk : type_of_page;
	
begin
	-- Port MaPPing :
	
	hard_disk : entity work.Hard_Disk(Behavioral) port map(
		storage_add => address_hard_disk ,
		page => page_hard_disk ,
		read_bit => read_bit_hard_disk );
		
	page_table: entity work.Page_Table(Behavioral) port map(
		vpn => vpn_page_table,
		ppn_for_read => ppn_read_page_table,
		ppn_for_write => ppn_write_page_table,
		hit_status => hit_status_page_table,
		write_bit => write_bit_page_table,
		read_bit => read_bit_page_table);
		
	tlb : entity work.Full_TLB(Behavioral) port map(
		vpn => vpn_tlb,
		inner_ppn_from_table => ppn_tlb_come_from_page_table,
		ppn => ppn_tlb,
		hit => hit_status_tlb,
		read_bit =>read_bit_tlb,
		write_bit =>write_bit_tlb);
		
	memory: entity work.Memory(Behavioral) port map(
		physical_addr => physical_addr_memory,
		data_from_disk => data_from_disk_memory,
		read_data => data_read_memory,
		outer_ppn => ppn_out_memory,
		read_bit =>read_bit_memory,
		write_bit => write_bit_memory);
		
	cache : entity work.Direct_Map_Cache(Behavioral) port map(
		physical_addr => physical_addr_cache,
		data_from_memory => data_from_memory_cache,
		data_out => data_read_cache,
		hit_status => hit_status_cache,
		read_bit =>read_bit_cache,
		write_bit => write_bit_cache);
		
	--cache : entity work.two_way(Behavioral) port map(
	--	physical_addr => physical_addr_cache,
	--	data_from_memory => data_from_memory_cache,
	--	data_out => data_read_cache,
	--	hit_status =>hit_status_cache,
	--	read_bit =>read_bit_cache,
	--	write_bit => write_bit_cache);
		
	processor : entity work.Processor(Behavioral) port map (
		index_file => index_processor,
		Output => virtual_addr,
		read_bit => read_bit_processor);


	process(start_time)
	is
	variable page_offset : std_logic_vector(6 downto 0);
	variable read_page : type_of_page;
	variable two_word : two_word_data;
	variable word : std_logic_vector(31 downto 0);
	variable byte_offset : std_logic_vector(1 downto 0);
	variable vpn : std_logic_vector(8 downto 0);
	variable ppn : std_logic_vector(3 downto 0);
	variable physical_addr : std_logic_vector(10 downto 0);
	
	begin
	
	end process;
	
end Behavioral;

