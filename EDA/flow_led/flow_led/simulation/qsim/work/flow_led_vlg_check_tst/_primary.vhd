library verilog;
use verilog.vl_types.all;
entity flow_led_vlg_check_tst is
    port(
        led             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end flow_led_vlg_check_tst;
