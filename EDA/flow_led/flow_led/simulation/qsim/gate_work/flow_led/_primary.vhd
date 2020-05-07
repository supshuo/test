library verilog;
use verilog.vl_types.all;
entity flow_led is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        sys_clk50m      : in     vl_logic;
        rst_n           : in     vl_logic;
        led             : out    vl_logic_vector(3 downto 0)
    );
end flow_led;
