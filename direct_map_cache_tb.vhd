--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:24:46 07/10/2022
-- Design Name:   
-- Module Name:   D:/CE_IUST/Term_4/Computer_Architecture/Final_Project/direct_map_cache_tb.vhd
-- Project Name:  Final_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Direct_Map_Cache
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.my_package.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY direct_map_cache_tb IS
END direct_map_cache_tb;
 
ARCHITECTURE behavior OF direct_map_cache_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Direct_Map_Cache
    PORT(
         physical_addr : IN  std_logic_vector(10 downto 0);
         data_from_memory : IN  two_word_data;
         data_out : OUT  std_logic_vector(7 downto 0);
         hit_status : OUT  std_logic;
         read_bit : IN  std_logic;
         write_bit : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal physical_addr : std_logic_vector(10 downto 0) ;
   signal data_from_memory : two_word_data;
   signal read_bit : std_logic ;
   signal write_bit : std_logic ;

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);
   signal hit_status : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Direct_Map_Cache PORT MAP (
          physical_addr => physical_addr,
          data_from_memory => data_from_memory,
          data_out => data_out,
          hit_status => hit_status,
          read_bit => read_bit,
          write_bit => write_bit
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		write_bit <= '0';
		read_bit <= '1';
		physical_addr <= "10110100011";
		data_from_memory <= (others => (others => '0'));
		
		wait for 300 ns;
		
		read_bit <= '0';
		write_bit <= '1';
		physical_addr <= "01100100110";
		data_from_memory <= ("11100110110100110100001001101001",
									"11001001010011001100101110011011");
      wait;
   end process;

END;
