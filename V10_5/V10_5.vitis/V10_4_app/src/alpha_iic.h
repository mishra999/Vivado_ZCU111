/*
 * alpha_iic.h
 *
 *  Created on: Nov 23, 2022
 *      Author: JUNG
 */

#ifndef SRC_ALPHA_IIC_H_
#define SRC_ALPHA_IIC_H_
#include "command_struct.h"




iic_return IicPsMasterPolledExample(unsigned short DeviceId, const command_struct* command );

#endif /* SRC_ALPHA_IIC_H_ */
