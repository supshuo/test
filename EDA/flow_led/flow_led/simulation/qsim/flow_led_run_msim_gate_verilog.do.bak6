transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {flow_led.vo}

vlog -vlog01compat -work work +incdir+D:/eda/flow_led/simulation/qsim {D:/eda/flow_led/simulation/qsim/flow_led.vt}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  flow_led_vlg_tst

add wave *
view structure
view signals
run -all
