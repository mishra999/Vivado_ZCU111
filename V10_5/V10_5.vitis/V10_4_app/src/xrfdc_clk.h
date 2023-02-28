/*
 * xrfdc_clk.h
 *
 *  Created on: Nov 23, 2022
 *      Author: JUNG
 */

#ifndef SRC_XRFDC_CLK_H_
#define SRC_XRFDC_CLK_H_

#ifndef RFDC_CLK_H_
#define RFDC_CLK_H_
#ifdef XPS_BOARD_ZCU111

void LMX2594ClockConfig(int XIicBus, int XFrequency);
void LMK04208ClockConfig(int XIicBus, unsigned int LMK04208_CKin[1][26]);

#endif /* XPS_BOARD_ZCU111 */
#endif /* RFDC_CLK_H_ */

#endif /* SRC_XRFDC_CLK_H_ */
