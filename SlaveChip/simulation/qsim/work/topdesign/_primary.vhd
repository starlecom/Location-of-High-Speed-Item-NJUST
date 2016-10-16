library verilog;
use verilog.vl_types.all;
entity topdesign is
    port(
        Lsignal         : in     vl_logic_vector(31 downto 0);
        address         : in     vl_logic_vector(7 downto 0);
        dataout         : out    vl_logic_vector(7 downto 0);
        cs              : out    vl_logic;
        cs_led          : out    vl_logic
    );
end topdesign;
