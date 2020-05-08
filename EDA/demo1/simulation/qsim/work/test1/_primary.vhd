library verilog;
use verilog.vl_types.all;
entity test1 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        s               : in     vl_logic;
        y               : out    vl_logic
    );
end test1;
