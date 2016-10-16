proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  set_param simulator.modelsimInstallPath C:/ProgramData/modeltech64_10.1c/win64
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir K:/xilinx/LocationP2/Location.cache/wt [current_project]
  set_property parent.project_path K:/xilinx/LocationP2/Location.xpr [current_project]
  set_property ip_repo_paths k:/xilinx/LocationP2/Location.cache/ip [current_project]
  set_property ip_output_repo k:/xilinx/LocationP2/Location.cache/ip [current_project]
  set_property XPM_LIBRARIES XPM_MEMORY [current_project]
  add_files -quiet K:/xilinx/LocationP2/Location.runs/synth_1/topdesign.dcp
  read_xdc -ref fifo_generator_0 -cells U0 k:/xilinx/LocationP2/Location.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0.xdc
  set_property processing_order EARLY [get_files k:/xilinx/LocationP2/Location.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0.xdc]
  read_xdc K:/xilinx/LocationP2/Location.srcs/constrs_1/new/Basys3.xdc
  link_design -top topdesign -part xc7a35tcpg236-1
  write_hwdef -file topdesign.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force topdesign_opt.dcp
  report_drc -file topdesign_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force topdesign_placed.dcp
  report_io -file topdesign_io_placed.rpt
  report_utilization -file topdesign_utilization_placed.rpt -pb topdesign_utilization_placed.pb
  report_control_sets -verbose -file topdesign_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force topdesign_routed.dcp
  report_drc -file topdesign_drc_routed.rpt -pb topdesign_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file topdesign_timing_summary_routed.rpt -rpx topdesign_timing_summary_routed.rpx
  report_power -file topdesign_power_routed.rpt -pb topdesign_power_summary_routed.pb -rpx topdesign_power_routed.rpx
  report_route_status -file topdesign_route_status.rpt -pb topdesign_route_status.pb
  report_clock_utilization -file topdesign_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force topdesign.mmi }
  write_bitstream -force topdesign.bit -bin_file
  catch { write_sysdef -hwdef topdesign.hwdef -bitfile topdesign.bit -meminfo topdesign.mmi -file topdesign.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

