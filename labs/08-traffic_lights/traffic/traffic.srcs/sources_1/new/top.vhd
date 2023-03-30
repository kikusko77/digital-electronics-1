----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2023 11:51:55 AM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
 port (
    CLK100MHZ   : in    std_logic;                    --! Main clock
    LED16_R     : out    std_logic;                    --! High-active synchronous reset
    LED16_G     : out   std_logic; --! Traffic light for "south" direction
    LED16_B     : out   std_logic; 
    LED17_R     : out    std_logic;                    --! Main clock
    LED17_G     : out    std_logic;                    --! High-active synchronous reset
    LED17_B     : out   std_logic; --! Traffic light for "south" direction
    BTNC        : in   std_logic  --! Traffic light for "west" direction
  );
end top;

architecture Behavioral of top is
----------------------------------------------------------
-- Architecture body for top level
----------------------------------------------------------



begin
  --------------------------------------------------------
  -- Instance (copy) of tlc entity
  --------------------------------------------------------
  tlc : entity work.tlc
    port map (
     clk      => CLK100MHZ,
      south(2) => LED16_R,
       south(1) => LED16_G,
        south(0) => LED16_B,
          west(2) => LED17_R,
       west(1) => LED17_G,
        west(0) => LED17_B,
      rst      => BTNC
    );

end architecture behavioral;


