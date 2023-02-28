/******************************************************************************
* Copyright (C) 2010 - 2021 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
* @file xiicps_polled_master_example.c
*
* A design example of using the device in polled mode as master.
*
* The example uses buffer size 132. Please set the send buffer of the
* Aardvark device to be continuous 64 bytes from 0x00 to 0x3F.
 *
 * <pre> MODIFICATION HISTORY:
 *
 * Ver   Who Date     Changes
 * ----- --- -------- -----------------------------------------------
 * 1.00a jz  01/30/10 First release
 *
 * </pre>
 *
 ****************************************************************************/

/***************************** Include Files **********************************/

#include "xiicps.h"

#include "alpha_iic.h"

/************************** Constant Definitions ******************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
//#define IIC_DEVICE_ID		XPAR_XIICPS_0_DEVICE_ID

/*
 * The slave address to send to and receive from.
 */
//#define IIC_SLAVE_ADDR		0x0F
#define IIC_SCLK_RATE		100000

/*
 * The following constant controls the length of the buffers to be sent
 * and received with the IIC.
 */
#define TEST_BUFFER_SIZE	1 // byte 132

/**************************** Type Definitions ********************************/


/************************** Function Prototypes *******************************/

//int IicPsMasterPolledExample(u16 DeviceId);
/************************** Variable Definitions ******************************/

XIicPs Iic_name;		/**< Instance of the IIC Device */

/*
 * The following buffers are used in this example to send and receive data
 * with the IIC.
 */
u8 SendBuffer[TEST_BUFFER_SIZE];    /**< Buffer for Transmitting Data */
u8 RecvBuffer[TEST_BUFFER_SIZE];    /**< Buffer for Receiving Data */


/******************************************************************************/
/**
*
* Main function to call the polled master example.
*
*
* @return	XST_SUCCESS if successful, XST_FAILURE if unsuccessful.
*
* @note		None.
*
*******************************************************************************/
/*int main(void)
{
	int Status;

	xil_printf("IIC Master Polled Example Test \r\n");


	Status = IicPsMasterPolledExample(IIC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("IIC Master Polled Example Test Failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran IIC Master Polled Example Test\r\n");
	return XST_SUCCESS;
}
*/


iic_return IicPsMasterPolledExample(unsigned short DeviceId, const command_struct* command )
{

	if (!command){
		return make_iic_return_failure(XST_FAILURE);
	}





	XIicPs_Config *Config = XIicPs_LookupConfig(DeviceId);
	if (NULL == Config) {
		return make_iic_return_failure(XST_FAILURE);
	}


	if (XIicPs_CfgInitialize(&Iic_name, Config, Config->BaseAddress) != XST_SUCCESS) {
		return make_iic_return_failure(XST_FAILURE);
	}

	if (XIicPs_SelfTest(&Iic_name) != XST_SUCCESS) {
		return make_iic_return_failure(XST_FAILURE);
	}

	XIicPs_SetSClk(&Iic_name, IIC_SCLK_RATE);



	int IIC_SLAVE_ADDR = command->asic_id  << 4 | command->command_content; //ID & reg


	for (int Index = 0; Index < TEST_BUFFER_SIZE; Index++) {
		SendBuffer[Index] = command->value_l;
		RecvBuffer[Index] = 0;
	}


	if ( command->read_write == command_struct_write ) {
		//(void)XIicPs_SetupMaster(&Iic_name, SENDING_ROLE);
		//(void)TransmitFifoFill(&Iic_name);
		XIicPs_MasterSendPolled(&Iic_name, SendBuffer, TEST_BUFFER_SIZE, IIC_SLAVE_ADDR);


	}else {
		//(void)XIicPs_SetupMaster(&Iic_name, RECVING_ROLE);
		XIicPs_MasterRecvPolled(&Iic_name, RecvBuffer, TEST_BUFFER_SIZE, IIC_SLAVE_ADDR);

	}
	return make_iic_return(IIC_SLAVE_ADDR ,RecvBuffer[0], SendBuffer[0] , ALPHA_HEADER);

	//return make_iic_return(0x12,0x34,0x56,0x78);

}
