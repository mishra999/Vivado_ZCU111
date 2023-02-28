//----------------------------------------------------------------------------
// Title : ROM for tile configuration
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 

`timescale 1ps/1ps

module design_1_usp_rf_data_converter_0_0_device_rom (
    aux_clk,
    data_index,
    data_out,
    addr_out,
    tile_out
  );

    input aux_clk;

    input [10:0] data_index;

    output [15:0] data_out;
    output [10:0] addr_out;
    output [2:0]  tile_out;

    reg [29:0] data;

    // The 30-bit data in the array follows the format below:
    // 29:27 |  26:24  |    23:16    |    15:0
    // Tile  |  Slice  | DRP Address |  DRP Data

    (* rom_style = "distributed" *) reg [29:0] data_array [0:238] = '{
       30'h07230000,  // Clock Network Control 0 (ADC0)
       30'h07240000,  // Clock Network Control 1 (ADC0)
       30'h072c0022,  // CLK_DIV (ADC0)
       30'h07280280,  // SYSREF Distribution (ADC0)
       30'h072df240,  // HSCOM_PWR_MASK (ADC0)
       30'h00020101,  // ADC00 Data Width
       30'h00100003,  // ADC00 Decimation Config
       30'h00110004,  // ADC00 Decimation Mode
       30'h00200000,  // ADC00 Mixer Config 0
       30'h00210924,  // ADC00 Mixer Config 1
       30'h003a0020,  // ADC00 Switch Matrix Config
       30'h007101d1,  // ADC00 RX MC Config 0
       30'h00518243,  // ADC00 TI_DCB_CTRL0
       30'h0055904a,  // ADC00 TI_TIME_SKEW_CTRL0
       30'h00060001,  // ADC00 FABRIC_DEBUG
       30'h01020101,  // ADC01 Data Width
       30'h01100003,  // ADC01 Decimation Config
       30'h01110004,  // ADC01 Decimation Mode
       30'h01200000,  // ADC01 Mixer Config 0
       30'h01210924,  // ADC01 Mixer Config 1
       30'h013a0024,  // ADC01 Switch Matrix Config
       30'h017101d9,  // ADC01 RX MC Config 0
       30'h01518247,  // ADC01 TI_DCB_CTRL0
       30'h0155904a,  // ADC01 TI_TIME_SKEW_CTRL0
       30'h01060001,  // ADC01 FABRIC_DEBUG
       30'h02020101,  // ADC02 Data Width
       30'h02100003,  // ADC02 Decimation Config
       30'h02110004,  // ADC02 Decimation Mode
       30'h02200000,  // ADC02 Mixer Config 0
       30'h02210924,  // ADC02 Mixer Config 1
       30'h023a0028,  // ADC02 Switch Matrix Config
       30'h027101d1,  // ADC02 RX MC Config 0
       30'h02518243,  // ADC02 TI_DCB_CTRL0
       30'h0255904a,  // ADC02 TI_TIME_SKEW_CTRL0
       30'h02060001,  // ADC02 FABRIC_DEBUG
       30'h03020101,  // ADC03 Data Width
       30'h03100003,  // ADC03 Decimation Config
       30'h03110004,  // ADC03 Decimation Mode
       30'h03200000,  // ADC03 Mixer Config 0
       30'h03210924,  // ADC03 Mixer Config 1
       30'h033a002c,  // ADC03 Switch Matrix Config
       30'h037101d9,  // ADC03 RX MC Config 0
       30'h03518247,  // ADC03 TI_DCB_CTRL0
       30'h0355904a,  // ADC03 TI_TIME_SKEW_CTRL0
       30'h03060001,  // ADC03 FABRIC_DEBUG
       30'h0f230000,  // Clock Network Control 0 (ADC1)
       30'h0f240000,  // Clock Network Control 1 (ADC1)
       30'h0f2c0025,  // CLK_DIV (ADC1)
       30'h0f280600,  // SYSREF Distribution (ADC1)
       30'h0f2df240,  // HSCOM_PWR_MASK (ADC1)
       30'h08020101,  // ADC10 Data Width
       30'h08100003,  // ADC10 Decimation Config
       30'h08110004,  // ADC10 Decimation Mode
       30'h08200000,  // ADC10 Mixer Config 0
       30'h08210924,  // ADC10 Mixer Config 1
       30'h083a0020,  // ADC10 Switch Matrix Config
       30'h087101d1,  // ADC10 RX MC Config 0
       30'h08518243,  // ADC10 TI_DCB_CTRL0
       30'h0855904a,  // ADC10 TI_TIME_SKEW_CTRL0
       30'h08060001,  // ADC10 FABRIC_DEBUG
       30'h09020101,  // ADC11 Data Width
       30'h09100003,  // ADC11 Decimation Config
       30'h09110004,  // ADC11 Decimation Mode
       30'h09200000,  // ADC11 Mixer Config 0
       30'h09210924,  // ADC11 Mixer Config 1
       30'h093a0024,  // ADC11 Switch Matrix Config
       30'h097101d9,  // ADC11 RX MC Config 0
       30'h09518247,  // ADC11 TI_DCB_CTRL0
       30'h0955904a,  // ADC11 TI_TIME_SKEW_CTRL0
       30'h09060001,  // ADC11 FABRIC_DEBUG
       30'h0a020101,  // ADC12 Data Width
       30'h0a100003,  // ADC12 Decimation Config
       30'h0a110004,  // ADC12 Decimation Mode
       30'h0a200000,  // ADC12 Mixer Config 0
       30'h0a210924,  // ADC12 Mixer Config 1
       30'h0a3a0028,  // ADC12 Switch Matrix Config
       30'h0a7101d1,  // ADC12 RX MC Config 0
       30'h0a518243,  // ADC12 TI_DCB_CTRL0
       30'h0a55904a,  // ADC12 TI_TIME_SKEW_CTRL0
       30'h0a060001,  // ADC12 FABRIC_DEBUG
       30'h0b020101,  // ADC13 Data Width
       30'h0b100003,  // ADC13 Decimation Config
       30'h0b110004,  // ADC13 Decimation Mode
       30'h0b200000,  // ADC13 Mixer Config 0
       30'h0b210924,  // ADC13 Mixer Config 1
       30'h0b3a002c,  // ADC13 Switch Matrix Config
       30'h0b7101d9,  // ADC13 RX MC Config 0
       30'h0b518247,  // ADC13 TI_DCB_CTRL0
       30'h0b55904a,  // ADC13 TI_TIME_SKEW_CTRL0
       30'h0b060001,  // ADC13 FABRIC_DEBUG
       30'h17230000,  // Clock Network Control 0 (ADC2)
       30'h17240000,  // Clock Network Control 1 (ADC2)
       30'h172c0025,  // CLK_DIV (ADC2)
       30'h17288880,  // SYSREF Distribution (ADC2)
       30'h172df240,  // HSCOM_PWR_MASK (ADC2)
       30'h10020101,  // ADC20 Data Width
       30'h10100003,  // ADC20 Decimation Config
       30'h10110004,  // ADC20 Decimation Mode
       30'h10200000,  // ADC20 Mixer Config 0
       30'h10210924,  // ADC20 Mixer Config 1
       30'h103a0020,  // ADC20 Switch Matrix Config
       30'h107101d1,  // ADC20 RX MC Config 0
       30'h10518243,  // ADC20 TI_DCB_CTRL0
       30'h1055904a,  // ADC20 TI_TIME_SKEW_CTRL0
       30'h10060001,  // ADC20 FABRIC_DEBUG
       30'h11020101,  // ADC21 Data Width
       30'h11100003,  // ADC21 Decimation Config
       30'h11110004,  // ADC21 Decimation Mode
       30'h11200000,  // ADC21 Mixer Config 0
       30'h11210924,  // ADC21 Mixer Config 1
       30'h113a0024,  // ADC21 Switch Matrix Config
       30'h117101d9,  // ADC21 RX MC Config 0
       30'h11518247,  // ADC21 TI_DCB_CTRL0
       30'h1155904a,  // ADC21 TI_TIME_SKEW_CTRL0
       30'h11060001,  // ADC21 FABRIC_DEBUG
       30'h12020101,  // ADC22 Data Width
       30'h12100003,  // ADC22 Decimation Config
       30'h12110004,  // ADC22 Decimation Mode
       30'h12200000,  // ADC22 Mixer Config 0
       30'h12210924,  // ADC22 Mixer Config 1
       30'h123a0028,  // ADC22 Switch Matrix Config
       30'h127101d1,  // ADC22 RX MC Config 0
       30'h12518243,  // ADC22 TI_DCB_CTRL0
       30'h1255904a,  // ADC22 TI_TIME_SKEW_CTRL0
       30'h12060001,  // ADC22 FABRIC_DEBUG
       30'h13020101,  // ADC23 Data Width
       30'h13100003,  // ADC23 Decimation Config
       30'h13110004,  // ADC23 Decimation Mode
       30'h13200000,  // ADC23 Mixer Config 0
       30'h13210924,  // ADC23 Mixer Config 1
       30'h133a002c,  // ADC23 Switch Matrix Config
       30'h137101d9,  // ADC23 RX MC Config 0
       30'h13518247,  // ADC23 TI_DCB_CTRL0
       30'h1355904a,  // ADC23 TI_TIME_SKEW_CTRL0
       30'h13060001,  // ADC23 FABRIC_DEBUG
       30'h1f230000,  // Clock Network Control 0 (ADC3)
       30'h1f240000,  // Clock Network Control 1 (ADC3)
       30'h1f2c0025,  // CLK_DIV (ADC3)
       30'h1f281700,  // SYSREF Distribution (ADC3)
       30'h1f2df240,  // HSCOM_PWR_MASK (ADC3)
       30'h18020101,  // ADC30 Data Width
       30'h18100003,  // ADC30 Decimation Config
       30'h18110004,  // ADC30 Decimation Mode
       30'h18200000,  // ADC30 Mixer Config 0
       30'h18210924,  // ADC30 Mixer Config 1
       30'h183a0020,  // ADC30 Switch Matrix Config
       30'h187101d1,  // ADC30 RX MC Config 0
       30'h18518243,  // ADC30 TI_DCB_CTRL0
       30'h1855904a,  // ADC30 TI_TIME_SKEW_CTRL0
       30'h18060001,  // ADC30 FABRIC_DEBUG
       30'h19020101,  // ADC31 Data Width
       30'h19100003,  // ADC31 Decimation Config
       30'h19110004,  // ADC31 Decimation Mode
       30'h19200000,  // ADC31 Mixer Config 0
       30'h19210924,  // ADC31 Mixer Config 1
       30'h193a0024,  // ADC31 Switch Matrix Config
       30'h197101d9,  // ADC31 RX MC Config 0
       30'h19518247,  // ADC31 TI_DCB_CTRL0
       30'h1955904a,  // ADC31 TI_TIME_SKEW_CTRL0
       30'h19060001,  // ADC31 FABRIC_DEBUG
       30'h1a020101,  // ADC32 Data Width
       30'h1a100003,  // ADC32 Decimation Config
       30'h1a110004,  // ADC32 Decimation Mode
       30'h1a200000,  // ADC32 Mixer Config 0
       30'h1a210924,  // ADC32 Mixer Config 1
       30'h1a3a0028,  // ADC32 Switch Matrix Config
       30'h1a7101d1,  // ADC32 RX MC Config 0
       30'h1a518243,  // ADC32 TI_DCB_CTRL0
       30'h1a55904a,  // ADC32 TI_TIME_SKEW_CTRL0
       30'h1a060001,  // ADC32 FABRIC_DEBUG
       30'h1b020101,  // ADC33 Data Width
       30'h1b100003,  // ADC33 Decimation Config
       30'h1b110004,  // ADC33 Decimation Mode
       30'h1b200000,  // ADC33 Mixer Config 0
       30'h1b210924,  // ADC33 Mixer Config 1
       30'h1b3a002c,  // ADC33 Switch Matrix Config
       30'h1b7101d9,  // ADC33 RX MC Config 0
       30'h1b518247,  // ADC33 TI_DCB_CTRL0
       30'h1b55904a,  // ADC33 TI_TIME_SKEW_CTRL0
       30'h1b060001,  // ADC33 FABRIC_DEBUG
       30'h2728c980,  // SYSREF Distribution (DAC0)
       30'h2f230000,  // Clock Network Control 0 (DAC1)
       30'h2f240000,  // Clock Network Control 1 (DAC1)
       30'h2f2c0011,  // CLK_DIV (DAC1)
       30'h2f280100,  // SYSREF Distribution (DAC1)
       30'h2f2df240,  // HSCOM_PWR_MASK (DAC1)
       30'h28020101,  // DAC10 Data Width
       30'h28100004,  // DAC10 Interpolation Control
       30'h28110000,  // DAC10 Interpolation Data
       30'h28200000,  // DAC10 Mixer Config 0
       30'h28210924,  // DAC10 Mixer Config 1
       30'h28300000,  // DAC10 Inv Sinc Filter
       30'h28310040,  // DAC10 Multiband Config
       30'h28600001,  // DAC10 Decoder Control
       30'h28610001,  // DAC10 Decoder Clock Enable
       30'h28710000,  // DAC10 MC_CONFIG0
       30'h28734858,  // DAC10 MC_CONFIG2
       30'h287487c0,  // DAC10 MC_CONFIG3
       30'h28070001,  // DAC10 FABRIC_DEBUG
       30'h29020101,  // DAC11 Data Width
       30'h29100004,  // DAC11 Interpolation Control
       30'h29110000,  // DAC11 Interpolation Data
       30'h29200000,  // DAC11 Mixer Config 0
       30'h29210924,  // DAC11 Mixer Config 1
       30'h29300000,  // DAC11 Inv Sinc Filter
       30'h29310040,  // DAC11 Multiband Config
       30'h29600001,  // DAC11 Decoder Control
       30'h29610001,  // DAC11 Decoder Clock Enable
       30'h29710000,  // DAC11 MC_CONFIG0
       30'h29734858,  // DAC11 MC_CONFIG2
       30'h297487c0,  // DAC11 MC_CONFIG3
       30'h29070001,  // DAC11 FABRIC_DEBUG
       30'h2a020101,  // DAC12 Data Width
       30'h2a100004,  // DAC12 Interpolation Control
       30'h2a110000,  // DAC12 Interpolation Data
       30'h2a200000,  // DAC12 Mixer Config 0
       30'h2a210924,  // DAC12 Mixer Config 1
       30'h2a300000,  // DAC12 Inv Sinc Filter
       30'h2a310040,  // DAC12 Multiband Config
       30'h2a600001,  // DAC12 Decoder Control
       30'h2a610001,  // DAC12 Decoder Clock Enable
       30'h2a710000,  // DAC12 MC_CONFIG0
       30'h2a734858,  // DAC12 MC_CONFIG2
       30'h2a7487c0,  // DAC12 MC_CONFIG3
       30'h2a070001,  // DAC12 FABRIC_DEBUG
       30'h2b020101,  // DAC13 Data Width
       30'h2b100004,  // DAC13 Interpolation Control
       30'h2b110000,  // DAC13 Interpolation Data
       30'h2b200000,  // DAC13 Mixer Config 0
       30'h2b210924,  // DAC13 Mixer Config 1
       30'h2b300000,  // DAC13 Inv Sinc Filter
       30'h2b310040,  // DAC13 Multiband Config
       30'h2b600001,  // DAC13 Decoder Control
       30'h2b610001,  // DAC13 Decoder Clock Enable
       30'h2b710000,  // DAC13 MC_CONFIG0
       30'h2b734858,  // DAC13 MC_CONFIG2
       30'h2b7487c0,  // DAC13 MC_CONFIG3
       30'h2b070001,  // DAC13 FABRIC_DEBUG
       30'h00000000};

    //-------------------------------------------------------------------------
    // Output the tile number, address and data for the DRP writes
    // depending on the data_index input
    //-------------------------------------------------------------------------
    always @(posedge aux_clk)
    begin
      data <= data_array[data_index];
    end

    assign data_out = data[15:0];
    assign addr_out = data[26:16];
    assign tile_out = data[29:27];

endmodule
