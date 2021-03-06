LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Pc IS
    PORT (
        clock : IN std_logic;
        in_port : IN std_logic_vector (7 DOWNTO 0);
        out_port : OUT std_logic_vector (7 DOWNTO 0)
        );
END pc;

ARCHITECTURE behavior OF Pc IS
BEGIN
    PROCESS (clock)
    BEGIN
        IF rising_edge(clock) THEN
            out_port <= in_port;
        END IF;
    END PROCESS;
END behavior;