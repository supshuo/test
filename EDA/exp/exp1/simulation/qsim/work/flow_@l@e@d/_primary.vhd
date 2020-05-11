library verilog;
use verilog.vl_types.all;
entity flow_LED is
    port(
        sys_clk50m      : in     vl_logic;
        rst_n           : in     vl_logic;
        led             : out    vl_logic_vector(3 downto 0)
    );
end flow_LED;
