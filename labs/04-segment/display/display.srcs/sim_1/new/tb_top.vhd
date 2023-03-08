----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2023 18:34:45
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

entity tb_top is
--  Port ( );
-- Entity of testbench is always empty
end tb_top;

architecture testbench of tb_top is
  -- Testbench local signals
       signal    sig_SW : std_logic_vector(3 downto 0);
       signal    sig_LED : std_logic_vector(7 downto 0);
       signal    sig_CA : std_logic;
       signal    sig_CB : std_logic;
       signal    sig_CC : std_logic;
       signal    sig_CD : std_logic;
       signal   sig_CE : std_logic;
       signal    sig_CF : std_logic;
       signal    sig_CG : std_logic;
       signal    sig_AN : std_logic_vector(6 downto 0);
       signal    sig_BTNC : std_logic;

begin

uut_top : entity work.top
    port map (
           SW  => sig_SW,
           LED => sig_Led,
           CA => sig_CA,
           CB => sig_CB,
           CC => sig_CC,
           CD => sig_CD,
           CE => sig_CE,
           CF => sig_CF,
           CG => sig_CG,
           
           BTNC => sig_BTNC
    
    );

 p_stimulus : process is
 begin
report "Stimulus process started";
    
        --sig_AN <= b"1111_0111";
        sig_BTNC <= '0';    -- any value
        -- First test case
        sig_SW <= "0000"; wait for 50 ns;
        assert (sig_LED(4) = '1')
        report "LED(4) indicator FAILED for combination 0 " severity error;
        assert (sig_LED(5) = '0')
        report "LED(5) indicator FAILED for combination 0" severity error;
        assert (sig_LED(6) = '0')
        report "LED(6) indicator FAILED for combination 0" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 0" severity error;
        
        -- 2nd test case
        sig_SW <= "0001"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 1" severity error;
        assert (sig_LED(5) = '0')
        report "LED(5) indicator FAILED for combination 1" severity error;
        assert (sig_LED(6) = '1')
        report "LED(6) indicator FAILED for combination 1" severity error;
        assert (sig_LED(7) = '1')
        report "LED(7) indicator FAILED for combination 1" severity error;
        
        -- 3rd test case
        sig_SW <= "0010"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 2" severity error;
        assert (sig_LED(5) = '0')
        report "LED(5) indicator FAILED for combination 2" severity error;
        assert (sig_LED(6) = '0')
        report "LED(6) indicator FAILED for combination 2" severity error;
        assert (sig_LED(7) = '1')
        report "LED(7) indicator FAILED for combination 2" severity error;
        
        -- 4th test case
        sig_SW <= "0011"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 3" severity error;
        assert (sig_LED(5) = '0')
        report "LED(5) indicator FAILED for combination 3" severity error;
        assert (sig_LED(6) = '1')
        report "LED(6) indicator FAILED for combination 3" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 3" severity error;
        
        -- 5th test case
        sig_SW <= "0100"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 4" severity error;
        assert (sig_LED(5) = '0')
        report "LED(5) indicator FAILED for combination 4" severity error;
        assert (sig_LED(6) = '0')
        report "LED(6) indicator FAILED for combination 4" severity error;
        assert (sig_LED(7) = '1')
        report "LED(7) indicator FAILED for combination 4" severity error;
        
        -- 6th test case
        sig_SW <= "0101"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 5" severity error;
        assert (sig_LED(5) = '0')
        report "LED(5) indicator FAILED for combination 5" severity error;
        assert (sig_LED(6) = '1')
        report "LED(6) indicator FAILED for combination 5" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 5" severity error;
        
        -- 7th test case
        sig_SW <= "0110"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 6" severity error;
        assert (sig_LED(5) = '0')
        report "LED(5) indicator FAILED for combination 6" severity error;
        assert (sig_LED(6) = '0')
        report "LED(6) indicator FAILED for combination 6" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 6" severity error;
        
        -- 8th test case
        sig_SW <= "0111"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 7" severity error;
        assert (sig_LED(5) = '0')
        report "LED(5) indicator FAILED for combination 7" severity error;
        assert (sig_LED(6) = '1')
        report "LED(6) indicator FAILED for combination 7" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 7" severity error;
        
        -- 9th test case
        sig_SW <= "1000"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 8" severity error;
        assert (sig_LED(5) = '0')
        report "LED(5) indicator FAILED for combination 8" severity error;
        assert (sig_LED(6) = '0')
        report "LED(6) indicator FAILED for combination 8" severity error;
        assert (sig_LED(7) = '1')
        report "LED(7) indicator FAILED for combination 8" severity error;
        
        -- 10th test case
        sig_SW <= "1001"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 9" severity error;
        assert (sig_LED(5) = '0')
        report "LED(5) indicator FAILED for combination 9" severity error;
        assert (sig_LED(6) = '1')
        report "LED(6) indicator FAILED for combination 9" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 9" severity error;
        
        -- 11th test case
        sig_SW <= "1010"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 10" severity error;
        assert (sig_LED(5) = '1')
        report "LED(5) indicator FAILED for combination 10" severity error;
        assert (sig_LED(6) = '0')
        report "LED(6) indicator FAILED for combination 10" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 10" severity error;
        
        -- 12th test case
        sig_SW <= "1011"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 11" severity error;
        assert (sig_LED(5) = '1')
        report "LED(5) indicator FAILED for combination 11" severity error;
        assert (sig_LED(6) = '1')
        report "LED(6) indicator FAILED for combination 11" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 11" severity error;
        
        -- 13th test case
        sig_SW <= "1100"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 12" severity error;
        assert (sig_LED(5) = '1')
        report "LED(5) indicator FAILED for combination 12" severity error;
        assert (sig_LED(6) = '0')
        report "LED(6) indicator FAILED for combination 12" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 12" severity error;
        
        -- 14th test case
        sig_SW <= "1101"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 13" severity error;
        assert (sig_LED(5) = '1')
        report "LED(5) indicator FAILED for combination 13" severity error;
        assert (sig_LED(6) = '1')
        report "LED(6) indicator FAILED for combination 13" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 13" severity error;
        
        -- 15th test case
        sig_SW <= "1110"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 14" severity error;
        assert (sig_LED(5) = '1')
        report "LED(5) indicator FAILED for combination 14" severity error;
        assert (sig_LED(6) = '0')
        report "LED(6) indicator FAILED for combination 14" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 14" severity error;
        
        -- 16th test case
        sig_SW <= "1111"; wait for 50 ns;
        assert (sig_LED(4) = '0')
        report "LED(4) indicator FAILED for combination 15" severity error;
        assert (sig_LED(5) = '1')
        report "LED(5) indicator FAILED for combination 15" severity error;
        assert (sig_LED(6) = '1')
        report "LED(6) indicator FAILED for combination 15" severity error;
        assert (sig_LED(7) = '0')
        report "LED(7) indicator FAILED for combination 15" severity error;
        


        report "Stimulus process finished";
        wait;
        
    end process p_stimulus;

end architecture testbench;