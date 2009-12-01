## Copyright (C) 1991-2009 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.

## VENDOR "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

## DATE "12/01/2009 22:56:59"

## 
## Device: Altera EP2S130F1020C3 Package FBGA1020
## 

## 
## This Tcl script should be used for PrimeTime (Verilog) only
## 

## This file can be sourced in primetime

set report_default_significant_digits 3
set hierarchy_separator .

set quartus_root "e:/altera/90/quartus/"
set search_path [list . [format "%s%s" $quartus_root "eda/synopsys/primetime/lib"]  ]

set link_path [list *  stratixii_lcell_comb_lib.db  stratixii_lcell_ff_lib.db  stratixii_asynch_io_lib.db  stratixii_io_register_lib.db  stratixii_termination_lib.db  bb2_lib.db  stratixii_ram_internal_lib.db  stratixii_memory_register_lib.db  stratixii_memory_addr_register_lib.db  stratixii_mac_out_internal_lib.db stratixii_mac_mult_internal_lib.db  stratixii_mac_register_lib.db  stratixii_lvds_receiver_lib.db stratixii_lvds_transmitter_lib.db  stratixii_asmiblock_lib.db stratixii_crcblock_lib.db  stratixii_jtag_lib.db stratixii_rublock_lib.db  stratixii_pll_lib.db  stratixii_dll_lib.db alt_vtl.db]

read_verilog  stratixii_all_pt.v 

##########################
## DESIGN ENTRY SECTION ##
##########################

read_verilog  PipelineUniProcessor.vo
current_design MotherBoard
link
## Set variable timing_propagate_single_condition_min_slew to false only for versions 2004.06 and earlier
regexp {([1-9][0-9][0-9][0-9]\.[0-9][0-9])} $sh_product_version dummy version
if { [string compare "2004.06" $version ] != -1 } {
   set timing_propagate_single_condition_min_slew false
}
set_operating_conditions -analysis_type single
read_sdf PipelineUniProcessor_v.sdo

################################
## TIMING CONSTRAINTS SECTION ##
################################


## Start clock definition ##
# WARNING:  The required clock period is not set. The default value (100 ns) is used. 
create_clock -period 100.000 -waveform {0.000 50.000} [get_ports { CLK } ] -name CLK  

set_propagated_clock [all_clocks]
## End clock definition ##

## Start create collections ##
## End create collections ##

## Start global settings ##
## End global settings ##

## Start collection commands definition ##

## End collection commands definition ##

## Start individual pin commands definition ##
## End individual pin commands definition ##

## Start Output pin capacitance definition ##
set_load -pin_load 0 [get_ports { INST[0] } ]
set_load -pin_load 0 [get_ports { INST[10] } ]
set_load -pin_load 0 [get_ports { INST[11] } ]
set_load -pin_load 0 [get_ports { INST[12] } ]
set_load -pin_load 0 [get_ports { INST[13] } ]
set_load -pin_load 0 [get_ports { INST[14] } ]
set_load -pin_load 0 [get_ports { INST[15] } ]
set_load -pin_load 0 [get_ports { INST[16] } ]
set_load -pin_load 0 [get_ports { INST[17] } ]
set_load -pin_load 0 [get_ports { INST[18] } ]
set_load -pin_load 0 [get_ports { INST[19] } ]
set_load -pin_load 0 [get_ports { INST[1] } ]
set_load -pin_load 0 [get_ports { INST[20] } ]
set_load -pin_load 0 [get_ports { INST[21] } ]
set_load -pin_load 0 [get_ports { INST[22] } ]
set_load -pin_load 0 [get_ports { INST[23] } ]
set_load -pin_load 0 [get_ports { INST[24] } ]
set_load -pin_load 0 [get_ports { INST[25] } ]
set_load -pin_load 0 [get_ports { INST[26] } ]
set_load -pin_load 0 [get_ports { INST[27] } ]
set_load -pin_load 0 [get_ports { INST[28] } ]
set_load -pin_load 0 [get_ports { INST[29] } ]
set_load -pin_load 0 [get_ports { INST[2] } ]
set_load -pin_load 0 [get_ports { INST[30] } ]
set_load -pin_load 0 [get_ports { INST[31] } ]
set_load -pin_load 0 [get_ports { INST[3] } ]
set_load -pin_load 0 [get_ports { INST[4] } ]
set_load -pin_load 0 [get_ports { INST[5] } ]
set_load -pin_load 0 [get_ports { INST[6] } ]
set_load -pin_load 0 [get_ports { INST[7] } ]
set_load -pin_load 0 [get_ports { INST[8] } ]
set_load -pin_load 0 [get_ports { INST[9] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[0] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[10] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[11] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[12] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[13] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[14] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[15] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[16] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[17] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[18] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[19] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[1] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[20] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[21] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[22] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[23] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[24] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[25] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[26] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[27] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[28] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[29] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[2] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[30] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[31] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[3] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[4] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[5] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[6] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[7] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[8] } ]
set_load -pin_load 0 [get_ports { TESTINSTIF[9] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[0] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[10] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[11] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[12] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[13] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[14] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[15] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[16] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[17] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[18] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[19] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[1] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[20] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[21] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[22] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[23] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[24] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[25] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[26] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[27] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[28] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[29] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[2] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[30] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[31] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[3] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[4] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[5] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[6] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[7] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[8] } ]
set_load -pin_load 0 [get_ports { TESTPCIF[9] } ]
set_load -pin_load 0 [get_ports { TESTPC[0] } ]
set_load -pin_load 0 [get_ports { TESTPC[10] } ]
set_load -pin_load 0 [get_ports { TESTPC[11] } ]
set_load -pin_load 0 [get_ports { TESTPC[12] } ]
set_load -pin_load 0 [get_ports { TESTPC[13] } ]
set_load -pin_load 0 [get_ports { TESTPC[14] } ]
set_load -pin_load 0 [get_ports { TESTPC[15] } ]
set_load -pin_load 0 [get_ports { TESTPC[16] } ]
set_load -pin_load 0 [get_ports { TESTPC[17] } ]
set_load -pin_load 0 [get_ports { TESTPC[18] } ]
set_load -pin_load 0 [get_ports { TESTPC[19] } ]
set_load -pin_load 0 [get_ports { TESTPC[1] } ]
set_load -pin_load 0 [get_ports { TESTPC[20] } ]
set_load -pin_load 0 [get_ports { TESTPC[21] } ]
set_load -pin_load 0 [get_ports { TESTPC[22] } ]
set_load -pin_load 0 [get_ports { TESTPC[23] } ]
set_load -pin_load 0 [get_ports { TESTPC[24] } ]
set_load -pin_load 0 [get_ports { TESTPC[25] } ]
set_load -pin_load 0 [get_ports { TESTPC[26] } ]
set_load -pin_load 0 [get_ports { TESTPC[27] } ]
set_load -pin_load 0 [get_ports { TESTPC[28] } ]
set_load -pin_load 0 [get_ports { TESTPC[29] } ]
set_load -pin_load 0 [get_ports { TESTPC[2] } ]
set_load -pin_load 0 [get_ports { TESTPC[30] } ]
set_load -pin_load 0 [get_ports { TESTPC[31] } ]
set_load -pin_load 0 [get_ports { TESTPC[3] } ]
set_load -pin_load 0 [get_ports { TESTPC[4] } ]
set_load -pin_load 0 [get_ports { TESTPC[5] } ]
set_load -pin_load 0 [get_ports { TESTPC[6] } ]
set_load -pin_load 0 [get_ports { TESTPC[7] } ]
set_load -pin_load 0 [get_ports { TESTPC[8] } ]
set_load -pin_load 0 [get_ports { TESTPC[9] } ]
set_load -pin_load 0 [get_ports { TESTWRITEMEM } ]
## End Output pin capacitance definition ##

## Start clock uncertainty definition ##
## End clock uncertainty definition ##

## Start Multicycle and Cut Path definition ##
## End Multicycle and Cut Path definition ##

## Destroy Collections ##

update_timing
