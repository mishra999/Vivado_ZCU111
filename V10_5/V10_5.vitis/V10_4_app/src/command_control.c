#include <stdio.h>
#include "xparameters.h"
#include "xiicps.h"
#include "rfdc_StartUp.h"
#include <stdbool.h>

#include "alpha_iic.h"
#include "command_struct.h"

#define IIC_DEVICE_ID				XPAR_XIICPS_0_DEVICE_ID




iic_return CommandDecoding(int RecvInData, int len)
{
	command_struct commands = make_command_struct(RecvInData);

	if (commands.application_systems == ALPHA_HEADER) {
		return IicPsMasterPolledExample(IIC_DEVICE_ID, &commands);
	} else if (commands.application_systems == RFSoC_HEADER){
		return make_iic_return(rfdc_main(&commands) ,0, 0, 0) ;
	}

	return make_iic_return(RecvInData, 0, 0, 0) ;

	//return make_iic_return(commands.application_systems, commands.device_type, commands.command_content, commands.value_l);

}


