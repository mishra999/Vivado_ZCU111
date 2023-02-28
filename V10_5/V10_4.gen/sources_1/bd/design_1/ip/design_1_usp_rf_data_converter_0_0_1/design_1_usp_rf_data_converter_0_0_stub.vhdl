-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Jan 23 16:38:19 2023
-- Host        : Aera running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Work/UH/1_FPGA/1_2022/2_ZCU111/3_Code/V10_5/V10_4.gen/sources_1/bd/design_1/ip/design_1_usp_rf_data_converter_0_0_1/design_1_usp_rf_data_converter_0_0_stub.vhdl
-- Design      : design_1_usp_rf_data_converter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_usp_rf_data_converter_0_0 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sysref_in_p : in STD_LOGIC;
    sysref_in_n : in STD_LOGIC;
    adc0_clk_p : in STD_LOGIC;
    adc0_clk_n : in STD_LOGIC;
    clk_adc0 : out STD_LOGIC;
    m0_axis_aclk : in STD_LOGIC;
    m0_axis_aresetn : in STD_LOGIC;
    adc1_clk_p : in STD_LOGIC;
    adc1_clk_n : in STD_LOGIC;
    clk_adc1 : out STD_LOGIC;
    m1_axis_aclk : in STD_LOGIC;
    m1_axis_aresetn : in STD_LOGIC;
    adc2_clk_p : in STD_LOGIC;
    adc2_clk_n : in STD_LOGIC;
    clk_adc2 : out STD_LOGIC;
    m2_axis_aclk : in STD_LOGIC;
    m2_axis_aresetn : in STD_LOGIC;
    adc3_clk_p : in STD_LOGIC;
    adc3_clk_n : in STD_LOGIC;
    clk_adc3 : out STD_LOGIC;
    m3_axis_aclk : in STD_LOGIC;
    m3_axis_aresetn : in STD_LOGIC;
    vin0_01_p : in STD_LOGIC;
    vin0_01_n : in STD_LOGIC;
    vin0_23_p : in STD_LOGIC;
    vin0_23_n : in STD_LOGIC;
    vin1_01_p : in STD_LOGIC;
    vin1_01_n : in STD_LOGIC;
    vin1_23_p : in STD_LOGIC;
    vin1_23_n : in STD_LOGIC;
    vin2_01_p : in STD_LOGIC;
    vin2_01_n : in STD_LOGIC;
    vin2_23_p : in STD_LOGIC;
    vin2_23_n : in STD_LOGIC;
    vin3_01_p : in STD_LOGIC;
    vin3_01_n : in STD_LOGIC;
    vin3_23_p : in STD_LOGIC;
    vin3_23_n : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m02_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m02_axis_tvalid : out STD_LOGIC;
    m02_axis_tready : in STD_LOGIC;
    m10_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m10_axis_tvalid : out STD_LOGIC;
    m10_axis_tready : in STD_LOGIC;
    m12_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m12_axis_tvalid : out STD_LOGIC;
    m12_axis_tready : in STD_LOGIC;
    m20_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m20_axis_tvalid : out STD_LOGIC;
    m20_axis_tready : in STD_LOGIC;
    m22_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m22_axis_tvalid : out STD_LOGIC;
    m22_axis_tready : in STD_LOGIC;
    m30_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m30_axis_tvalid : out STD_LOGIC;
    m30_axis_tready : in STD_LOGIC;
    m32_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m32_axis_tvalid : out STD_LOGIC;
    m32_axis_tready : in STD_LOGIC;
    dac1_clk_p : in STD_LOGIC;
    dac1_clk_n : in STD_LOGIC;
    clk_dac1 : out STD_LOGIC;
    s1_axis_aclk : in STD_LOGIC;
    s1_axis_aresetn : in STD_LOGIC;
    vout10_p : out STD_LOGIC;
    vout10_n : out STD_LOGIC;
    vout11_p : out STD_LOGIC;
    vout11_n : out STD_LOGIC;
    vout12_p : out STD_LOGIC;
    vout12_n : out STD_LOGIC;
    vout13_p : out STD_LOGIC;
    vout13_n : out STD_LOGIC;
    s10_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s10_axis_tvalid : in STD_LOGIC;
    s10_axis_tready : out STD_LOGIC;
    s11_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s11_axis_tvalid : in STD_LOGIC;
    s11_axis_tready : out STD_LOGIC;
    s12_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s12_axis_tvalid : in STD_LOGIC;
    s12_axis_tready : out STD_LOGIC;
    s13_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s13_axis_tvalid : in STD_LOGIC;
    s13_axis_tready : out STD_LOGIC;
    irq : out STD_LOGIC
  );

end design_1_usp_rf_data_converter_0_0;

architecture stub of design_1_usp_rf_data_converter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[17:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[17:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,sysref_in_p,sysref_in_n,adc0_clk_p,adc0_clk_n,clk_adc0,m0_axis_aclk,m0_axis_aresetn,adc1_clk_p,adc1_clk_n,clk_adc1,m1_axis_aclk,m1_axis_aresetn,adc2_clk_p,adc2_clk_n,clk_adc2,m2_axis_aclk,m2_axis_aresetn,adc3_clk_p,adc3_clk_n,clk_adc3,m3_axis_aclk,m3_axis_aresetn,vin0_01_p,vin0_01_n,vin0_23_p,vin0_23_n,vin1_01_p,vin1_01_n,vin1_23_p,vin1_23_n,vin2_01_p,vin2_01_n,vin2_23_p,vin2_23_n,vin3_01_p,vin3_01_n,vin3_23_p,vin3_23_n,m00_axis_tdata[15:0],m00_axis_tvalid,m00_axis_tready,m02_axis_tdata[15:0],m02_axis_tvalid,m02_axis_tready,m10_axis_tdata[15:0],m10_axis_tvalid,m10_axis_tready,m12_axis_tdata[15:0],m12_axis_tvalid,m12_axis_tready,m20_axis_tdata[15:0],m20_axis_tvalid,m20_axis_tready,m22_axis_tdata[15:0],m22_axis_tvalid,m22_axis_tready,m30_axis_tdata[15:0],m30_axis_tvalid,m30_axis_tready,m32_axis_tdata[15:0],m32_axis_tvalid,m32_axis_tready,dac1_clk_p,dac1_clk_n,clk_dac1,s1_axis_aclk,s1_axis_aresetn,vout10_p,vout10_n,vout11_p,vout11_n,vout12_p,vout12_n,vout13_p,vout13_n,s10_axis_tdata[15:0],s10_axis_tvalid,s10_axis_tready,s11_axis_tdata[15:0],s11_axis_tvalid,s11_axis_tready,s12_axis_tdata[15:0],s12_axis_tvalid,s12_axis_tready,s13_axis_tdata[15:0],s13_axis_tvalid,s13_axis_tready,irq";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "usp_rf_data_converter_v2_6_3,Vivado 2022.2";
begin
end;
