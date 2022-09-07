--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:53:58 07/10/2022
-- Design Name:   
-- Module Name:   D:/CE_IUST/Term_4/Computer_Architecture/Final_Project/memory_tb.vhd
-- Project Name:  Final_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memory
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
 
ENTITY memory_tb IS
END memory_tb;
 
ARCHITECTURE behavior OF memory_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memory
    PORT(
         physical_addr : IN  std_logic_vector(10 downto 0);
         data_from_disk : IN  type_of_page;
         read_data : OUT  two_word_data;
         outer_ppn : OUT  std_logic_vector(3 downto 0);
         read_bit : IN  std_logic;
         write_bit : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal physical_addr : std_logic_vector(10 downto 0) := (others => '0');
   signal data_from_disk : type_of_page;
   signal read_bit : std_logic := '0';
   signal write_bit : std_logic := '0';

 	--Outputs
   signal read_data : two_word_data;
   signal outer_ppn : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memory PORT MAP (
          physical_addr => physical_addr,
          data_from_disk => data_from_disk,
          read_data => read_data,
          outer_ppn => outer_ppn,
          read_bit => read_bit,
          write_bit => write_bit
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		read_bit <= '1' ;
		physical_addr <= "01100110010";
		write_bit <= '0'; 
		
		
		wait for 200 ns;
		
		read_bit <= '1' ;
		physical_addr <= "01110010110";
		write_bit <= '0'; 
		
		wait for 300 ns;
		
		
		read_bit <= '0';
		write_bit <= '1';
		physical_addr <= (others => '0');
		data_from_disk <= 	(("01000100010110001111111111011110", "01101010110111111100010100101101"), 
									("01011001001101010010011100000011", "10001001101101110000001011110111"), 
									("11101110100011000010010000010111", "00000100100100101110000010000010"), 
									("10001000011011101011111111101001", "10110010010000111111110011101010"), 
									("10110000000100110011010001011010", "00001111000011111101100010101000"), 
									("01001010011100000100001011110110", "11111101101111011010100010101110"), 
									("01001100101001100111111111110011", "00110000000101101001000111111011"), 
									("10010101100100011001111011001001", "10000010110111110011110110110001"), 
									("01000100110010011010001101100110", "11101000010000011011000000000110"), 
									("11011000001000001010110010101001", "01010001101001110001110010100000"), 
									("10101000011011000011101101001101", "01101101010100001111101010110100"), 
									("01111101001001100110010110100011", "10011001010110100000110110110000"), 
									("10111001100010101111110110110100", "01011011110110100010100100110100"), 
									("01101011010111100100100111010010", "11000110010111000101001100101111"), 
									("00110001100100101010001010101011", "11110110000110111011111111001101"), 
									("11001011101001101101000011010100", "10100110110101101010001100011001"));																	
      -- insert stimulus here 

      wait;
   end process;

END;
