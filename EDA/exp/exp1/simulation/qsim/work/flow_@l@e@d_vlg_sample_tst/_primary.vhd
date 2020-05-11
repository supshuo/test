library verilog;
use verilog.vl_types.all;
entity flow_LED_vlg_sample_tst is
    port(
        rst_n           : in     vl_logic;
        sys_clk50m      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end flow_LED_vlg_sample_tst;
