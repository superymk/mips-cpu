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

## DATE "11/23/2009 15:38:47"

## 
## Device: Altera EPM7128SQC100-6 Package PQFP100
## 

## 
## This Tcl script should be used for PrimeTime (Verilog) only
## 

## This file can be sourced in primetime

set report_default_significant_digits 3
set hierarchy_separator .

set quartus_root "d:/altera/90/quartus/"
set search_path [list . [format "%s%s" $quartus_root "eda/synopsys/primetime/lib"]  ]

set link_path [list *  max_asynch_io_lib.db max_mcell_register_lib.db  max_asynch_mcell_lib.db max_asynch_sexp_lib.db  alt_vtl.db]

read_verilog  max_all_pt.v 

##########################
## DESIGN ENTRY SECTION ##
##########################

read_verilog  PipelineUniProcessor.vo
current_design InstMem
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
set_load -pin_load 10 [get_ports { MEMINST[0] } ]
set_load -pin_load 10 [get_ports { MEMINST[10] } ]
set_load -pin_load 10 [get_ports { MEMINST[11] } ]
set_load -pin_load 10 [get_ports { MEMINST[12] } ]
set_load -pin_load 10 [get_ports { MEMINST[13] } ]
set_load -pin_load 10 [get_ports { MEMINST[14] } ]
set_load -pin_load 10 [get_ports { MEMINST[15] } ]
set_load -pin_load 10 [get_ports { MEMINST[16] } ]
set_load -pin_load 10 [get_ports { MEMINST[17] } ]
set_load -pin_load 10 [get_ports { MEMINST[18] } ]
set_load -pin_load 10 [get_ports { MEMINST[19] } ]
set_load -pin_load 10 [get_ports { MEMINST[1] } ]
set_load -pin_load 10 [get_ports { MEMINST[20] } ]
set_load -pin_load 10 [get_ports { MEMINST[21] } ]
set_load -pin_load 10 [get_ports { MEMINST[22] } ]
set_load -pin_load 10 [get_ports { MEMINST[23] } ]
set_load -pin_load 10 [get_ports { MEMINST[24] } ]
set_load -pin_load 10 [get_ports { MEMINST[25] } ]
set_load -pin_load 10 [get_ports { MEMINST[26] } ]
set_load -pin_load 10 [get_ports { MEMINST[27] } ]
set_load -pin_load 10 [get_ports { MEMINST[28] } ]
set_load -pin_load 10 [get_ports { MEMINST[29] } ]
set_load -pin_load 10 [get_ports { MEMINST[2] } ]
set_load -pin_load 10 [get_ports { MEMINST[30] } ]
set_load -pin_load 10 [get_ports { MEMINST[31] } ]
set_load -pin_load 10 [get_ports { MEMINST[3] } ]
set_load -pin_load 10 [get_ports { MEMINST[4] } ]
set_load -pin_load 10 [get_ports { MEMINST[5] } ]
set_load -pin_load 10 [get_ports { MEMINST[6] } ]
set_load -pin_load 10 [get_ports { MEMINST[7] } ]
set_load -pin_load 10 [get_ports { MEMINST[8] } ]
set_load -pin_load 10 [get_ports { MEMINST[9] } ]
## End Output pin capacitance definition ##

## Start clock uncertainty definition ##
## End clock uncertainty definition ##

## Start Multicycle and Cut Path definition ##
## End Multicycle and Cut Path definition ##

## Destroy Collections ##

update_timing
