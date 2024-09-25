onerror {exit -code 1}
vlib work
vlog -work work lab_8_1_.vo
vlog -work work lab_8_1_.vwf.vt
vsim -novopt -c -t 1ps -L fiftyfivenm_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.lab_8_1__vlg_vec_tst -voptargs="+acc"
vcd file -direction lab_8_1_.msim.vcd
vcd add -internal lab_8_1__vlg_vec_tst/*
vcd add -internal lab_8_1__vlg_vec_tst/i1/*
run -all
quit -f
