#include "command_struct.h"
#include "xparameters.h"
#include "xiicps.h"
#include "xil_printf.h"
#include "sleep.h"

#define BIT_COUNT					32

int slice_integer(int input , int slice_start, int slice_end ){
// still has a bug
	int bit_num = slice_end - slice_start + 1;
	input = (input << slice_start);
	input = input >> (BIT_COUNT - bit_num);
	if (bit_num<5) input = input & 0x0f;
	//return ( input & (0xff << slice*8)) >> slice*8 ;
	return input;
}

int slice_id(int input){
	return  input>>1;
}

int slice_read_write(int input){
	return (input & (1<<0))>>0;
}


command_struct make_command_struct(int RecvInData){

	command_struct commands;
	commands.application_systems 	= 	 slice_integer(RecvInData, 24, 27);
	commands.device_type       		=    slice_integer(RecvInData, 28, 31);
	commands.command_content   		=    slice_integer(RecvInData, 16, 19);
	commands.sub_content       		=    slice_integer(RecvInData, 20, 23);
	commands.value_h           		=    slice_integer(RecvInData, 8, 15);
	commands.value_l           		=    slice_integer(RecvInData, 0, 7);
	commands.asic_id				= 	 slice_id(commands.sub_content);
	commands.read_write				= 	 slice_read_write(commands.sub_content);

	return commands;
}

iic_return make_iic_return(int IIC_SLAVE_ADDR, int RecvBuffer , int SendBuffer ,int header){
	iic_return ret;

	ret.IIC_SLAVE_ADDR = IIC_SLAVE_ADDR ;
	ret.Recv = RecvBuffer;
	ret.send = SendBuffer ;
	ret.header =header;
	ret.Error_code = XST_SUCCESS;
	return ret;
}


iic_return make_iic_return_failure(int ErrorCode){
	iic_return ret;

	ret.IIC_SLAVE_ADDR = 0;
	ret.Recv = 0;
	ret.send = 0;
	ret.header =0;
	ret.Error_code = ErrorCode;
	return ret;
}
