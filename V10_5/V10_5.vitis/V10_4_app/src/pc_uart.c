/******************************************************************************
* Copyright (C) 2010 - 2021 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/****************************************************************************/
/**
*
* @file     xuartps_polled_example.c
*
* This file contains an example using the XUartPs driver in polled mode.
*
* This function sends data and expects to receive the data through the device
* using the local loopback mode.
*
* @note
* If the device does not work properly, the example may hang.
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "xparameters.h"
#include "xuartps.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "command_control.h"
#include "command_struct.h"
/*
 *
 * The following constant controls the length of the buffers to be sent
 * and received with the device, this constant must be 32 bytes or less since
 * only as much as FIFO size data can be sent or received in polled mode.
 */
#define TEST_BUFFER_SIZE 4


XUartPs Uart_PS;		/* Instance of the UART Device */

/*
 * The following buffers are used in this example to send and receive data
 * with the UART.
 */
static u8 SendBuffer[TEST_BUFFER_SIZE];	/* Buffer for Transmitting Data */
static u8 RecvBuffer[TEST_BUFFER_SIZE];	/* Buffer for Receiving Data */

int UartXgpio(u32 RecvInData);

/*****************************************************************************/
/**
*
* This function does a minimal test on the XUartPs device in polled mode.
*
* This function sends data and expects to receive the data through the UART
* using the local loopback mode.
*
*
* @param	DeviceId is the unique device id from hardware build.
*
* @return	XST_SUCCESS if successful, XST_FAILURE if unsuccessful
*
* @note
* This function polls the UART, it may hang if the hardware is not
* working correctly.
*
****************************************************************************/
int UartPsPolledExample(u16 DeviceId)
{



	/*
	 * Initialize the UART driver so that it's ready to use.
	 * Look up the configuration in the config table, then initialize it.
	 */
	XUartPs_Config *Config = XUartPs_LookupConfig(DeviceId);
	if (NULL == Config) {
		return XST_FAILURE;
	}


	if (XUartPs_CfgInitialize(&Uart_PS, Config, Config->BaseAddress) != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Check hardware build. */

	if (XUartPs_SelfTest(&Uart_PS) != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Use local loopback mode. */
	//XUartPs_SetOperMode(&Uart_PS, XUARTPS_OPER_MODE_LOCAL_LOOP);
	XUartPs_SetOperMode(&Uart_PS, XUARTPS_OPER_MODE_NORMAL);
	/*
	 * Initialize the send buffer bytes with a pattern and zero out
	 * the receive buffer.
	 */
	for (u16 Index = 0; Index < TEST_BUFFER_SIZE; Index++) {
		SendBuffer[Index] = 0;
		RecvBuffer[Index] = 0;
		//xil_printf("index: %d \r\n", Index);
	}
	while(1){

		unsigned int ReceivedCount = 0;
		while (ReceivedCount < TEST_BUFFER_SIZE) {
			ReceivedCount +=
				XUartPs_Recv(&Uart_PS, &RecvBuffer[ReceivedCount],
						  (TEST_BUFFER_SIZE - ReceivedCount));
		}

		u32 RecvInData = RecvBuffer[3] << 24 | RecvBuffer[2] << 16 | RecvBuffer[1] << 8 | RecvBuffer[0];

		/*int a = 0x12;
		int b = 0x34;
		int c = 0x56;
		int d = 0x78;*/

		iic_return returndata = CommandDecoding(RecvInData, sizeof(RecvBuffer));

		//iic_return returndata = make_iic_return(a,b,c,d);


		if (returndata.Error_code != XST_SUCCESS){
			xil_printf("Error in reading I2C data &d" , returndata.Error_code);
		}
		UartXgpio(RecvInData);


		SendBuffer[3] = returndata.IIC_SLAVE_ADDR;
		SendBuffer[2] = returndata.send;
		SendBuffer[1] = returndata.Recv;
		SendBuffer[0] = returndata.header;





		/* Block sending the buffer. */
		XUartPs_Send(&Uart_PS, SendBuffer, TEST_BUFFER_SIZE);
	}

		/*
		 * Check the receive buffer against the send buffer and verify the
		 * data was correctly received
		 */
		for (u16 Index = 0; Index < TEST_BUFFER_SIZE; Index++) {
			if (SendBuffer[Index] != RecvBuffer[Index]) {
				return XST_FAILURE;
			}
		}

	/* Restore to normal mode. */
	//XUartPs_SetOperMode(&Uart_PS, XUARTPS_OPER_MODE_NORMAL);

	//return RecvInData;
}

int UartXgpio(u32 RecvInData){
	int a = 0;

	XGpio input, output;  //The Instance of the GPIO Driver
	//Initialize the GPIO driver
	XGpio_Initialize(&input, XPAR_AXI_GPIO_0_DEVICE_ID);
	XGpio_Initialize(&output, XPAR_AXI_GPIO_1_DEVICE_ID);

	//Set the direction for all signals (input is 1, output is 0)
	XGpio_SetDataDirection(&input, 1, 1);
	XGpio_SetDataDirection(&output, 1, 0);

	XGpio_DiscreteWrite(&output, 1, RecvInData); //gpio 1
	a = XGpio_DiscreteRead(&input, 1); //gpio 0


	return a;
}

