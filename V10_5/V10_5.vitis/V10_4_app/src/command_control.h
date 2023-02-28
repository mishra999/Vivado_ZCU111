/*
 * command_control.h
 *
 *  Created on: Nov 23, 2022
 *      Author: JUNG
 */

#ifndef SRC_COMMAND_CONTROL_H_
#define SRC_COMMAND_CONTROL_H_
#include "alpha_iic.h"

iic_return CommandDecoding(int RecvInData, int len);

#endif /* SRC_COMMAND_CONTROL_H_ */
