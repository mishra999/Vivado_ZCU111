#ifndef SRC_COMMAND_STRUCT_H__
#define SRC_COMMAND_STRUCT_H__

#define ALPHA_HEADER 				0x09
#define RFSoC_HEADER 				0x0a

typedef struct {
	int IIC_SLAVE_ADDR;
	int send;
	int Recv;
	int header ;
	int Error_code;

} iic_return;

iic_return make_iic_return(int IIC_SLAVE_ADDR, int RecvBuffer , int SendBuffer ,int header);
iic_return make_iic_return_failure(int ErrorCode);

enum command_read_write{
	command_struct_write = 0,
	command_struct_read = 1

};

typedef struct command_struct_{
	int application_systems;
	int device_type;
	int command_content;
	int sub_content;
	int value_h;
	int value_l;
	enum command_read_write read_write;
	int asic_id;

} command_struct;


command_struct make_command_struct(int input);

#endif // SRC_COMMAND_STRUCT_H__
