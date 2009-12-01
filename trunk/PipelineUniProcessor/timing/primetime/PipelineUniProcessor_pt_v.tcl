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

## DATE "11/26/2009 00:22:29"

## 
## Device: Altera EP2S130F1020C3 Package FBGA1020
## 

## 
## This Tcl script should be used for PrimeTime (Verilog) only
## 

## This file can be sourced in primetime

set report_default_significant_digits 3
set hierarchy_separator .

set quartus_root "d:/altera/90/quartus/"
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
set_load -pin_load 0 [get_ports { TESTINST[0] } ]
set_load -pin_load 0 [get_ports { TESTINST[10] } ]
set_load -pin_load 0 [get_ports { TESTINST[11] } ]
set_load -pin_load 0 [get_ports { TESTINST[12] } ]
set_load -pin_load 0 [get_ports { TESTINST[13] } ]
set_load -pin_load 0 [get_ports { TESTINST[14] } ]
set_load -pin_load 0 [get_ports { TESTINST[15] } ]
set_load -pin_load 0 [get_ports { TESTINST[16] } ]
set_load -pin_load 0 [get_ports { TESTINST[17] } ]
set_load -pin_load 0 [get_ports { TESTINST[18] } ]
set_load -pin_load 0 [get_ports { TESTINST[19] } ]
set_load -pin_load 0 [get_ports { TESTINST[1] } ]
set_load -pin_load 0 [get_ports { TESTINST[20] } ]
set_load -pin_load 0 [get_ports { TESTINST[21] } ]
set_load -pin_load 0 [get_ports { TESTINST[22] } ]
set_load -pin_load 0 [get_ports { TESTINST[23] } ]
set_load -pin_load 0 [get_ports { TESTINST[24] } ]
set_load -pin_load 0 [get_ports { TESTINST[25] } ]
set_load -pin_load 0 [get_ports { TESTINST[26] } ]
set_load -pin_load 0 [get_ports { TESTINST[27] } ]
set_load -pin_load 0 [get_ports { TESTINST[28] } ]
set_load -pin_load 0 [get_ports { TESTINST[29] } ]
set_load -pin_load 0 [get_ports { TESTINST[2] } ]
set_load -pin_load 0 [get_ports { TESTINST[30] } ]
set_load -pin_load 0 [get_ports { TESTINST[31] } ]
set_load -pin_load 0 [get_ports { TESTINST[3] } ]
set_load -pin_load 0 [get_ports { TESTINST[4] } ]
set_load -pin_load 0 [get_ports { TESTINST[5] } ]
set_load -pin_load 0 [get_ports { TESTINST[6] } ]
set_load -pin_load 0 [get_ports { TESTINST[7] } ]
set_load -pin_load 0 [get_ports { TESTINST[8] } ]
set_load -pin_load 0 [get_ports { TESTINST[9] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[0] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[10] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[11] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[12] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[13] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[14] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[15] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[16] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[17] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[18] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[19] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[1] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[20] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[21] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[22] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[23] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[24] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[25] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[26] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[27] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[28] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[29] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[2] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[30] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[31] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[3] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[4] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[5] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[6] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[7] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[8] } ]
set_load -pin_load 0 [get_ports { TESTNEXTIADDR[9] } ]
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
