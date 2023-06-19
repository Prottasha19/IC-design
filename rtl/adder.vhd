library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_adder is

  port (
    clk,rstn: in std_logic;
    dta,dtb : in  std_logic_vector(7 downto 0);
    dto : out std_logic_vector(7 downto 0));

end my_adder;

architecture rtl of my_adder is

  signal dta_int,dtb_int,dto_int : std_logic_vector(7 downto 0);

begin  -- architecture rtl

  -- Define the memory elements
  process (clk, rstn) is
  begin  -- process
    if rstn = '0' then                   -- asynchronous reset (active low)
       dta_int <= (others=>'0');
       dtb_int <= (others=>'0');
       dto     <= (others=>'0');
    elsif clk'event and clk = '1' then  -- rising clock edge
       dta_int <= dta;
       dtb_int <= dtb;
       dto     <= dto_int;
    end if;
  end process;

  -- Define the adder
  dto_int <= std_logic_vector( signed(dta_int)+signed(dtb_int) );

end architecture rtl;
