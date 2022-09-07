----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:45 07/09/2022 
-- Design Name: 
-- Module Name:    TLB - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_TLB is
	port(
		vpn : in std_logic_vector(8 downto 0);
		inner_ppn_from_table : in std_logic_vector(3 downto 0);
		ppn : out std_logic_vector(3 downto 0);
		hit : out std_logic;
		read_bit : in std_logic;
		write_bit : in std_logic
	);
end Full_TLB;

architecture Behavioral of Full_TLB is
	signal ppn_list : TLB_ppn := (others => ( others => '0' ));
	signal tags : TLB_tag := (others => ( others => '0' ));
	signal head : integer :=0;
	signal valid : std_logic_vector(47 downto 0) ;
begin

	process(vpn) is
		begin 
			if read_bit = '1' then
				hit <= '0';
				for j in 0 to 47 loop 
					if valid(j)='1' and tags(j) = vpn then
						ppn <= ppn_list(j);
						hit <= '1';
						exit;
					end if;
				end loop;
			end if;
			if write_bit = '1' then 
				valid(head) <= '1';
				tags(head) <= vpn;
				ppn_list(head) <= inner_ppn_from_table;
				head <= (head+1) mod 48;
			end if;
	end process;
				
end Behavioral;

