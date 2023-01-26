# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/ilkay/Desktop/fpga/project_8/project_8.cache/wt [current_project]
set_property parent.project_path C:/Users/ilkay/Desktop/fpga/project_8/project_8.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/ilkay/Desktop/fpga/project_8/project_8.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/ilkay/Desktop/fpga/project_8/project_8.srcs/sources_1/new/freq_divider.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top freq_divider -part xc7a35tcpg236-1


write_checkpoint -force -noxdef freq_divider.dcp

catch { report_utilization -file freq_divider_utilization_synth.rpt -pb freq_divider_utilization_synth.pb }
