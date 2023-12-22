```vhdl
-- Cooling System
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CoolingSystem is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           temperature : out STD_LOGIC_VECTOR (7 downto 0));
end CoolingSystem;

architecture Behavioral of CoolingSystem is
    signal temp : STD_LOGIC_VECTOR (7 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            temp <= "00000000"; -- Initial temperature
        elsif rising_edge(clk) then
            -- Cooling system logic
            -- This is a placeholder. You need to replace this with your actual cooling system logic
            temp <= temp;
        end if;
    end process;

    -- Temperature output
    temperature <= temp;
end Behavioral;
```
