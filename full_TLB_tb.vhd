--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:42:12 07/10/2022
-- Design Name:   
-- Module Name:   D:/CE_IUST/Term_4/Computer_Architecture/Final_Project/full_TLB_tb.vhd
-- Project Name:  Final_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_TLB
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
 
ENTITY full_TLB_tb IS
END full_TLB_tb;
 
ARCHITECTURE behavior OF full_TLB_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_TLB
    PORT(
         vpn : IN  std_logic_vector(8 downto 0);
         inner_ppn_from_table : IN  std_logic_vector(3 downto 0);
         ppn : OUT  std_logic_vector(3 downto 0);
         hit : OUT  std_logic;
         read_bit : IN  std_logic;
         write_bit : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal vpn : std_logic_vector(8 downto 0) := (others => '0');
   signal inner_ppn_from_table : std_logic_vector(3 downto 0) := (others => '0');
   signal read_bit : std_logic := '0';
   signal write_bit : std_logic := '0';

 	--Outputs
   signal ppn : std_logic_vector(3 downto 0);
   signal hit : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_TLB PORT MAP (
          vpn => vpn,
          inner_ppn_from_table => inner_ppn_from_table,
          ppn => ppn,
          hit => hit,
          read_bit => read_bit,
          write_bit => write_bit
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

			read_bit <= '1';
			vpn <= "100110010";
			write_bit <= '0';
			inner_ppn_from_table <= "0000";
			wait for 300 ns;
			read_bit <= '0';
			vpn <= "101110110";
			write_bit <= '1';
			inner_ppn_from_table <= "0111";
			wait for 300 ns;
			read_bit <= '1';
			vpn <= "100011010";
			write_bit <= '0';
			inner_ppn_from_table <= "0000";
			wait for 300 ns;
			read_bit <= '0';
			vpn <= "100000010";
			write_bit <= '1';
			inner_ppn_from_table <= "1001";
			wait for 300 ns;
			read_bit <= '1';
			vpn <= "110010101";
			write_bit <= '0';
			inner_ppn_from_table <= "0000";
			wait for 300 ns;
			read_bit <= '0';
			vpn <= "100101000";
			write_bit <= '1';
			inner_ppn_from_table <= "0100";
			wait for 300 ns;
			read_bit <= '1';
			vpn <= "101000000";
			write_bit <= '0';
			inner_ppn_from_table <= "0000";
			wait for 300 ns;
			read_bit <= '0';
			vpn <= "100110011";
			write_bit <= '1';
			inner_ppn_from_table <= "1000";
			wait for 300 ns;
			read_bit <= '1';
			vpn <= "111111111";
			write_bit <= '0';
			inner_ppn_from_table <= "0000";
			wait for 300 ns;
			read_bit <= '0';
			vpn <= "111100010";
			write_bit <= '1';
			inner_ppn_from_table <= "0110";
      

      wait;
   end process;

END;
