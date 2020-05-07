transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/eda/flow_led {D:/eda/flow_led/flow_led.v}

vlog -vlog01compat -work work +incdir+D:/eda/flow_led/simulation/qsim {D:/eda/flow_led/simulation/qsim/flow_led.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  flow_led_vlg_tst

add wave *
view structure
view signals
run -all
