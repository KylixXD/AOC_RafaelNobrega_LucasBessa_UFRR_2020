library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memoriaROM is
    port(
        in_data     : in std_logic_vector(7 downto 0);
        clock       : in std_logic;
        out_data    : out std_logic_vector(7 downto 0)
    );
end entity;

architecture main of memoriaROM is
    type ROM is array(0 to 255) of std_logic_vector(7 downto 0);
    signal memoriaROM : ROM := (
	 
	 --Soma algoritmo
	 
--	 0 => "11000011",
--	 1 => "11000111",
--	 2 => "00000001",

	-- teste beq bne
--	0 => "11000001", -- Li $s0, 1
--	1 => "11000110", -- Li $s1, 2
--	2 => "11100100", -- JumpC $s0, $s1
--	3 => "01100100", -- Beq , 4
	 
	 -- Fatorial
--	 0 => "11001111", -- Li $s3, 3
--	 1 => "01111110", -- Addi $s3, 2
--	 2 => "11000001", -- Li $s0, 1
--	 3 => "11010100", -- Move $s1, $s0
--	 4 => "10000001", -- Mul $s0, $s1
--	 5 => "11100111", -- JumpC $s1, $s3
--	 6 => "01110101", -- Addi $s1, 1
--	 7 => "01100100", -- Bne 4
	 
	 -- Fibonacci
	 0 => "00000000", -- Li $s0, 1
     0 => "00000000", -- Move $s1, $s0
     0 => "00000000", -- Move $s2, $s1
     0 => "00000000", -- Add $s1, $s0
     0 => "00000000", -- Move $s1, $s2
     0 => "00000000", --
     0 => "00000000",
     0 => "00000000",
     0 => "00000000",
     0 => "00000000",
     0 => "00000000",
     0 => "00000000",
     0 => "00000000",
     0 => "00000000",
     0 => "00000000",
     0 => "00000000",
	 
	 others => "00000000"
    );
    begin
        process (clock)
		  begin
            out_data <= memoriaROM(to_integer(unsigned(in_data)));
        end process;
end main;   