#include "xparameters.h"
#include "xuartps.h"
#include "pc_uart.h"
#include "xrfdc.h"
#include "rfdc_read_write.h"

#include <stdio.h>


//#ifdef XPS_BOARD_ZCU111
//#include "functions/xrfdc_clk.h"
//#endif
/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define UART_DEVICE_ID              XPAR_XUARTPS_0_DEVICE_ID
//#ifdef __BAREMETAL__
#define RFDC_DEVICE_ID 				XPAR_XRFDC_0_DEVICE_ID
//#else
//#define RFDC_DEVICE_ID 	0
//#endif

/*****************************************************************************/
/**
*
* Main function to call the Uart Polled mode example.
*
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE
*
* @note		None
*
******************************************************************************/

//#ifndef TESTAPP_GEN
int main(void)
{

	u32 CommandRecv;

	/*
	 * Run the Uart_PS polled example , specify the the Device ID that is
	 * generated in xparameters.h
	 */
	init_platform();


		//xil_printf("RFdc Read and Write Example Test\r\n");

		//RFdcReadWriteExample(RFDC_DEVICE_ID);
		//rfdcStartup(NULL);
		/*if (Status != XRFDC_SUCCESS) {
			printf("Read and Write Example Test failed\r\n");
			return XRFDC_FAILURE;
		}

		printf("Successfully ran Read and Write Example\r\n");
		return XRFDC_SUCCESS;
	*/
		CommandRecv = UartPsPolledExample(UART_DEVICE_ID);
		//printf("CommandRecV: %x \n", CommandRecv);
		/*if (Status != XST_SUCCESS) {
			xil_printf("UART Polled Mode Example Test Failed\r\n");
			return XST_FAILURE;
		}

		xil_printf("Successfully ran UART Polled Mode Example Test\r\n");
		return XST_SUCCESS;
	*/

		xil_printf("IIC Master Polled Example Test \r\n");

		/*
		 * Run the Iic polled example in master mode, specify the Device
		 * ID that is specified in xparameters.h.
		 */
		//IicPsMasterPolledExample(IIC_DEVICE_ID);



	cleanup_platform();
}
//#endif



/*int RFdcReadWriteExample (u16 SysMonDeviceId)
{
	printf ("test \r\n");
}*/



