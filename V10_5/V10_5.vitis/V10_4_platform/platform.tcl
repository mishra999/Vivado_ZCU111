# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Work\UH\1_FPGA\1_2022\2_ZCU111\3_Code\V10_4\V10_4.vitis\V10_4_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Work\UH\1_FPGA\1_2022\2_ZCU111\3_Code\V10_4\V10_4.vitis\V10_4_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {V10_4_platform}\
-hw {D:\Work\UH\1_FPGA\1_2022\2_ZCU111\3_Code\V10_4\design_1_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {D:/Work/UH/1_FPGA/1_2022/2_ZCU111/3_Code/V10_4/V10_4.vitis}

platform write
platform generate -domains 
platform active {V10_4_platform}
domain active {zynqmp_fsbl}
bsp reload
bsp setlib -name libmetal -ver 2.4
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform generate
platform generate -domains standalone_domain,zynqmp_fsbl,zynqmp_pmufw 
