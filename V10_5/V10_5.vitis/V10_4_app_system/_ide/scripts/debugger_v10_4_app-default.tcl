# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\Work\UH\1_FPGA\1_2022\2_ZCU111\3_Code\V10_5\V10_5.vitis\V10_4_app_system\_ide\scripts\debugger_v10_4_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\Work\UH\1_FPGA\1_2022\2_ZCU111\3_Code\V10_5\V10_5.vitis\V10_4_app_system\_ide\scripts\debugger_v10_4_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source D:/Xilinx/Vitis/2022.2/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 97530A" && level==0 && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-97530A-147e0093-0"}
fpga -file D:/Work/UH/1_FPGA/1_2022/2_ZCU111/3_Code/V10_5/V10_5.vitis/V10_4_app/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/Work/UH/1_FPGA/1_2022/2_ZCU111/3_Code/V10_4/V10_4.vitis/V10_4_platform/export/V10_4_platform/hw/design_1_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow D:/Work/UH/1_FPGA/1_2022/2_ZCU111/3_Code/V10_4/V10_4.vitis/V10_4_platform/export/V10_4_platform/sw/V10_4_platform/boot/fsbl.elf
set bp_36_21_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_36_21_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow D:/Work/UH/1_FPGA/1_2022/2_ZCU111/3_Code/V10_5/V10_5.vitis/V10_4_app/Debug/V10_4_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
