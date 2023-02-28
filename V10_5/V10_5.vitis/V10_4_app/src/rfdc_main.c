#include <stdio.h>
#include <stdbool.h>
#include "xparameters.h"
#include "rfdc_StartUp.h"

#define BIT_COUNT 8
int rfdc_main(unsigned short type, unsigned short command, unsigned short value_high, unsigned short value_low)
{
	unsigned char device_type, function, sub_function;
	device_type = (unsigned char)0x0f & type; // get least 4bits [27:24]
	function = ((unsigned char)0xf0 & command)>>4; // get most 4bits [23:20]
	sub_function = (unsigned char)0x0f & command; //[19:16]


	int ret  = value_low<<24 | value_high<<16 | sub_function<<12 | function<<8 | device_type<<4 | 0xa;
	if (device_type!=0x0){//[27:24]
		return ret;
	}
	if (function!=0x0){//[23:20]
		return ret;
	}
	if (sub_function!=0x0){//[19:16]
		return ret;
	}
	if(value_high!=0x00){//[15:8]
		return ret;
	}
	if (value_low==0x01){//[7:0]
		return ret;
	}

	rfdcStartup(NULL);


	return ret;
}



