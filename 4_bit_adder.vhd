library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_AIRTH.all;
use ieee.STD_LOIGC_UNSIGNED.all;

entity binary_adder_4_bit is
    port (
        a: in std_logic_vector (3 downto 0);
        b: in std_logic_vector (3 downto 0);
        sum: out std_logic_vector (3 downto 0);
        carry: out std_logic
    );
end binary_adder_4_bit;

architecture behavioural of binary_adder_4_bit is
    begin
        process(a, b)
    variable temp_sum: std_logic_vector (4 downto 0);
    begin
        temp_sum <= ('0' & a) + ('0' & b);

        sum <= temp_sum (3 downto 0);
        carry <= temp_sum (4);
    end process;
end behavioural;