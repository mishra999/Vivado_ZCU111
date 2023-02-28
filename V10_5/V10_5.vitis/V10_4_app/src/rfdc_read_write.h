/*
 * rfdc_read_write.h
 *
 *  Created on: Nov 23, 2022
 *      Author: JUNG
 */

#ifndef SRC_RFDC_READ_WRITE_H_
#define SRC_RFDC_READ_WRITE_H_

int RFdcReadWriteExample(u16 SysMonDeviceId);
int CompareMixerSettings(XRFdc_Mixer_Settings *SetMixerSettings,
								 XRFdc_Mixer_Settings *GetMixerSettings);
int CompareQMCSettings(XRFdc_QMC_Settings *SetQMCSettings,
								 XRFdc_QMC_Settings *GetQMCSettings);
int CompareCoarseDelaySettings(XRFdc_CoarseDelay_Settings *SetCoarseDlySettings,
								 XRFdc_CoarseDelay_Settings *GetCoarseDlySettings);
int CompareThresholdSettings(XRFdc_Threshold_Settings *SetThresholdSettings,
								 XRFdc_Threshold_Settings *GetThresholdSettings);




#endif /* SRC_RFDC_READ_WRITE_H_ */
