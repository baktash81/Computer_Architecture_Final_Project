--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:11:17 07/10/2022
-- Design Name:   
-- Module Name:   D:/CE_IUST/Term_4/Computer_Architecture/Final_Project/processor_tb.vhd
-- Project Name:  Final_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Processor
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY processor_tb IS
END processor_tb;
 
ARCHITECTURE behavior OF processor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Processor
    PORT(
         index_file : IN  integer;
         Output : OUT  std_logic_vector(15 downto 0);
         read_bit : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal index_file : integer ;
   signal read_bit : std_logic := '0';

 	--Outputs
   signal Output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Processor PORT MAP (
          index_file => index_file,
          Output => Output,
          read_bit => read_bit
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		read_bit <= '1';
		index_file <= 2;
		wait for 100 ns;
		index_file <= 46;
		wait for 100 ns;
		index_file <= 120;
		wait for 100 ns;
		index_file <= 0;
		wait for 100 ns;
		index_file <= 11;
		wait for 100 ns;
		index_file <= 96;
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
