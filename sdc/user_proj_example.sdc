###############################################################################
# Created by write_sdc
# Sun Jan  1 06:52:46 2023
###############################################################################
current_design user_proj_example
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name wb_clk_i -period 10.0000 
set_clock_uncertainty 0.2500 wb_clk_i
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[0]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[1]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[2]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[3]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[4]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[5]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[6]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {A[7]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[0]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[1]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[2]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[3]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[4]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[5]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[6]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {B[7]}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {clock}]
set_input_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {reset}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[0]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[1]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[2]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[3]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[4]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[5]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[6]}]
set_output_delay 2.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[7]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {sum[7]}]
set_load -pin_load 0.0334 [get_ports {sum[6]}]
set_load -pin_load 0.0334 [get_ports {sum[5]}]
set_load -pin_load 0.0334 [get_ports {sum[4]}]
set_load -pin_load 0.0334 [get_ports {sum[3]}]
set_load -pin_load 0.0334 [get_ports {sum[2]}]
set_load -pin_load 0.0334 [get_ports {sum[1]}]
set_load -pin_load 0.0334 [get_ports {sum[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clock}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
