## Pre-Lab preparation

The Nexys A7 board provides five push buttons for user applications.

2. Calculate how many periods of clock signal with frequency of 100&nbsp;MHz contain time intervals 2&nbsp;ms, 4&nbsp;ms, 10&nbsp;ms, 250&nbsp;ms, 500&nbsp;ms, and 1&nbsp;s. Write values in decimal, binary, and hexadecimal forms.


<!--
https://editor.codecogs.com/
T_{clk}=\frac{1}{f_{clk}}=
\textup{number of clk period} = \frac{\textup{time interval}}{T_{clk}}=
-->

   | **Time interval** | **Number of clk periods** | **Number of clk periods in hex** | **Number of clk periods in binary** |
   | :-: | :-: | :-: | :-: |
   | 2 ms | 200 000 | `x"3_0d40"` | `b"0011_0000_1101_0100_0000"` |
   | 4 ms | 400 000 | 61A80 | 1100_0011_0101_0000_000 |
   | 10 ms | 1 000 000 | F4240 | 1111_0100_0010_0100_0000 |
   | 250 ms | 25 000 000 | 17D7840 | 1011_1110_1011_1100_0010_0000_0 |
   | 500 ms | 50 000 000 | 2FAF080 | 1011_1110_1011_1100_0010_0000_00 |
   | 1 sec | 100 000 000 | `x"5F5_E100"` | `b"0101_1111_0101_1110_0001_0000_0000"` |

<a name="part1"></a>
