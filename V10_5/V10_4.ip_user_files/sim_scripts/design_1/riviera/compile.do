vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xil_defaultlib
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_18
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/dds_compiler_v6_0_22
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_crossbar_v2_1_28
vlib riviera/xlconstant_v1_1_7
vlib riviera/axi_vip_v1_1_13
vlib riviera/zynq_ultra_ps_e_vip_v1_0_13
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_29
vlib riviera/gigantic_mux
vlib riviera/axi_protocol_converter_v2_1_27
vlib riviera/axi_clock_converter_v2_1_26
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/axi_dwidth_converter_v2_1_27

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 riviera/mult_gen_v12_0_18
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap dds_compiler_v6_0_22 riviera/dds_compiler_v6_0_22
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 riviera/axi_crossbar_v2_1_28
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 riviera/zynq_ultra_ps_e_vip_v1_0_13
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_29 riviera/axi_gpio_v2_0_29
vmap gigantic_mux riviera/gigantic_mux
vmap axi_protocol_converter_v2_1_27 riviera/axi_protocol_converter_v2_1_27
vmap axi_clock_converter_v2_1_26 riviera/axi_clock_converter_v2_1_26
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_27 riviera/axi_dwidth_converter_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0_1/sim/design_1_proc_sys_reset_0_0.vhd" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_22 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/a99f/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_dds_compiler_0_0_1/sim/design_1_dds_compiler_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_block.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_device_rom.sv" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_por_fsm.sv" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_por_fsm_disabled.sv" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_tile_config.sv" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_constants_config.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_drp_arbiter.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_drp_arbiter_adc.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_register_decode.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_address_decoder.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_axi_lite_ipif.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_counter_f.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_pselect_f.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_slave_attachment.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_rf_wrapper.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_drp_control_top.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_drp_control.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_drp_access_ctrl.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_irq_req_ack.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_irq_sync.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0bufg_gt_ctrl.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_overvol_irq.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_powerup_state_irq.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0_rst_cnt.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/synth/design_1_usp_rf_data_converter_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_1/util_ds_buf.vhd" \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_1/sim/design_1_util_ds_buf_0_1.vhd" \
"../../../bd/design_1/ip/design_1_util_ds_buf_1_1/sim/design_1_util_ds_buf_1_1.vhd" \
"../../../bd/design_1/ip/design_1_vio_0_0/sim/design_1_vio_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0_1/sim/design_1_xlconstant_0_0.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13  -sv2k12 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0_1/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_29 -93  \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.vhd" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/bd_f60c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/sim/bd_f60c_g_inst_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_26  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_27  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../V10_4.gen/sources_1/bd/design_1/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/c420/hdl" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../V10_4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

