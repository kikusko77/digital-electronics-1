----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2023 03:53:46 PM
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
    Port ( CLK100MHZ : in STD_LOGIC;
           SW : in STD_LOGIC;
  
            LED: out std_logic_vector(11 downto 0);
           CA : out STD_LOGIC;
           CB : out STD_LOGIC;
           CC : out STD_LOGIC;
           CD : out STD_LOGIC;
           CE : out STD_LOGIC;
           CF : out STD_LOGIC;
           CG : out STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0);
          BTNC : in STD_LOGIC);
end top;



architecture behavioral of top is

  -- 4-bit counter @ 250 ms
  signal sig_en_250ms : std_logic;                    --! Clock enable signal for Counter0
  signal sig_cnt_4bit : std_logic_vector(3 downto 0); --! Counter0
  -- 12-bit counter @ 10 ms
  signal sig_en_10ms : std_logic;                    --! Clock enable signal for Counter0
  signal sig_cnt_12bit : std_logic_vector(11 downto 0); --! Counter0

begin

  --------------------------------------------------------
  -- Instance (copy) of clock_enable entity
  --------------------------------------------------------
  clk_en0 : entity work.clock_enable
      generic map(
          g_MAX => 25000000
      )
      port map(
          clk => CLK100MHZ,
          rst => BTNC,
          ce  => sig_en_250ms
      );
  
  clk_en1 : entity work.clock_enable
      generic map(
          g_MAX => 1000000      -- 10ms
      )
      port map(
          clk => CLK100MHZ, --! Main clock
          rst => BTNC, --! High-active synchronous reset
          ce  => sig_en_10ms
      );
  --------------------------------------------------------
  -- Instance (copy) of cnt_up_down entity
  --------------------------------------------------------
  bin_cnt0 : entity work.cnt_up_down
     generic map(
          g_CNT_WIDTH => 4
      )
      port map(
       clk => CLK100MHZ,
       rst => BTNC,
       en  => sig_en_250ms,
         cnt_up => SW,
         cnt=> sig_cnt_4bit
);
  bin_cnt1 : entity work.cnt_up_down_12bit
    generic map(
    g_CNT_WIDTH => 12 --! Default number of counter bits
  )
  port map (
    clk    => CLK100MHZ, --! Main clock
    rst    => BTNC, --! Synchronous reset
    en     => sig_en_10ms, --! Enable input
    cnt_up => SW, --! Direction of the counter
    cnt    => sig_cnt_12bit
  );

  --------------------------------------------------------
  -- Instance (copy) of hex_7seg entity
  --------------------------------------------------------
  hex2seg : entity work.hex_7seg
      port map(
          blank  => BTNC,
          hex    => sig_cnt_4bit,
          seg(6) => CA,
          seg(5) => CB,
          seg(4) => CC,
          seg(3) => CD,
          seg(2) => CE,
          seg(1) => CF,
          seg(0) => CG
      );



  --------------------------------------------------------
  -- Other settings
  --------------------------------------------------------
  -- Connect one common anode to 3.3V
  AN <= b"1111_1110";
  
  LED <= sig_cnt_12bit;
 end architecture behavioral;
