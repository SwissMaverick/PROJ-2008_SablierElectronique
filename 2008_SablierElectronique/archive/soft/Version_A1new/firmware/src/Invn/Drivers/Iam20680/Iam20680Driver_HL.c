/*
 * ________________________________________________________________________________________________________
 * Copyright (c) 2017 InvenSense Inc. All rights reserved.
 *
 * This software, related documentation and any modifications thereto (collectively “Software”) is subject
 * to InvenSense and its licensors' intellectual property rights under U.S. and international copyright
 * and other intellectual property rights laws.
 *
 * InvenSense and its licensors retain all intellectual property and proprietary rights in and to the Software
 * and any use, reproduction, disclosure or distribution of the Software without an express license agreement
 * from InvenSense is strictly prohibited.
 *
 * EXCEPT AS OTHERWISE PROVIDED IN A LICENSE AGREEMENT BETWEEN THE PARTIES, THE SOFTWARE IS
 * PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
 * TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.
 * EXCEPT AS OTHERWISE PROVIDED IN A LICENSE AGREEMENT BETWEEN THE PARTIES, IN NO EVENT SHALL
 * INVENSENSE BE LIABLE FOR ANY DIRECT, SPECIAL, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, OR ANY
 * DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
 * NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
 * OF THE SOFTWARE.
 * ________________________________________________________________________________________________________
 */

#include "Iam20680Defs.h"
#include "Mc32Delays.h"
#include "Iam20680Driver_HL.h"

#include "Invn/EmbUtils/InvStatus.h"

void inv_iam20680_sleep_us(int us)
{
    delay_us(us);
}

int inv_iam20680_get_who_am_i( uint8_t * who_am_i)
{
	return inv_iam20680_rd_who_am_i( who_am_i);
}

int inv_iam20680_check_who_am_i()
{
	int status = 0;
	uint8_t data;

	status = inv_iam20680_rd_who_am_i( &data);
	if(status)
		return status;

	if ( data != WHO_AM_I_VAL )
	{
		return INV_ERROR;
	}

	return INV_SUCCESS;
}

int inv_iam20680_device_reset()
{
	int status = 0;
	int timeout = 1000; /* 1s */
	uint8_t data;

	// Reset the internal registers and restores the default settings.
	// The bit automatically clears to 0 once the reset is done.
	status = inv_iam20680_wr_pwr_mgmt_1_device_reset();
	if(status)
		return status;

	inv_iam20680_sleep_us(50000); // wait for 50ms after soft reset

	do {
		status = inv_iam20680_rd_pwr_mgmt_1( &data);
		if(status)
			return status;

		inv_iam20680_sleep_us(1000);
		timeout -= 1;

		if(timeout < 0)
			return INV_ERROR_TIMEOUT;
	} while (data != RST_VAL_PWR_MGMT_1); // this is the default expected value

	return INV_SUCCESS;
}

int inv_iam20680_init()
{
	int status = 0;

    
	/* Reset device */
	status |= inv_iam20680_device_reset();
    
	/* Wake up device */
	status |= inv_iam20680_wr_pwr_mgmt_1_sleep( IAM20680_PWR_MGMT_1_SLEEP_awake);
    
	/* Setup CLKSEL */
	status |= inv_iam20680_wr_pwr_mgmt_1_clksel( CLK_SEL);
    
	/* Disable Accel and Gyro all axes */
	status |= inv_iam20680_wr_pwr_mgmt_2_accel_stby( (uint8_t)IAM20680_PWR_MGMT_2_XA_disable | (uint8_t)IAM20680_PWR_MGMT_2_YA_disable | (uint8_t)IAM20680_PWR_MGMT_2_ZA_disable);
    
	status |= inv_iam20680_wr_pwr_mgmt_2_gyro_stby( (uint8_t)IAM20680_PWR_MGMT_2_XG_disable | (uint8_t)IAM20680_PWR_MGMT_2_YG_disable | (uint8_t)IAM20680_PWR_MGMT_2_ZG_disable);
    
	/* Set default full scale range */
	status |= inv_iam20680_wr_accel_config_accel_fs_sel( IAM20680_ACCEL_CONFIG_FS_SEL_2g);
    
	status |= inv_iam20680_wr_gyro_config_fs_sel( IAM20680_GYRO_CONFIG_FS_SEL_2000dps);
    
	/* Set default bandwidth */
	//status |= inv_iam20680_wr_accel_config2_a_dlpf_cfg( IAM20680_ACCEL_CONFIG2_A_DLPF_CFG_420);
    
	//status |= inv_iam20680_wr_config_dlpf_cfg( IAM20680_CONFIG_DLPF_CFG_176);
    

	/* Set default averaging filter */
	//status |= inv_iam20680_wr_accel_config2_dec2_cfg( IAM20680_ACCEL_CONFIG2_DEC2_CFG_4x);
    
	//status |= inv_iam20680_wr_lp_mode_cfg_g_avgcfg( IAM20680_LP_MODE_CFG_G_AVGCFG_1x);
    
	/* Initial sampling rate to 100Hz*/
	//status |= inv_iam20680_wr_smplrt_div( SAMPLE_RATE_DIVIDER);
    
	/* make sure FIFO is disabled */
	//status |= inv_iam20680_wr_user_ctrl_fifo_en( IAM20680_USER_CTRL_FIFO_EN_disable);
    
	//status |= inv_iam20680_wr_fifo_en_gyro_fifo_en( IAM20680_FIFO_EN_GYRO_FIFO_EN_disable);
    
	//status |= inv_iam20680_wr_fifo_en_accel_fifo_en( IAM20680_FIFO_EN_ACCEL_FIFO_EN_disable);
    
   	//status |= inv_iam20680_wr_fifo_en_temp_fifo_en( IAM20680_FIFO_EN_TEMP_FIFO_EN_disable);

	/* Configure FIFO:
	  - FIFO snapshot mode i.e drop the data when the FIFO overflows
	*/
	//status |= inv_iam20680_wr_config_fifo_mode( IAM20680_CONFIG_FIFO_MODE_SNAPSHOT);
    

	/* Enable Data Ready Interrupt */
	//status |= inv_iam20680_wr_int_enable_data_rdy_int_en( IAM20680_INT_ENABLE_DATA_RDY_INT_EN_enable);
    

	return status;
}

int inv_iam20680_set_accel_low_power_mode()
{
	return inv_iam20680_wr_pwr_mgmt_1_cycle( IAM20680_PWR_MGMT_1_CYCLE_on);
}

int inv_iam20680_set_accel_low_noise_mode()
{
	return inv_iam20680_wr_pwr_mgmt_1_cycle( IAM20680_PWR_MGMT_1_CYCLE_off);
}

int inv_iam20680_set_gyro_low_power_mode()
{
	return inv_iam20680_wr_lp_mode_cfg_gyro_cycle( IAM20680_LP_MODE_CFG_GYRO_CYCLE_on);
}

int inv_iam20680_set_gyro_low_noise_mode()
{
	return inv_iam20680_wr_lp_mode_cfg_gyro_cycle( IAM20680_LP_MODE_CFG_GYRO_CYCLE_off);
}

int inv_iam20680_enable_accel()
{
	int status = 0;
	status = inv_iam20680_wr_pwr_mgmt_2_accel_stby( (uint8_t)IAM20680_PWR_MGMT_2_XA_enable | (uint8_t)IAM20680_PWR_MGMT_2_YA_enable | (uint8_t)IAM20680_PWR_MGMT_2_ZA_enable);
	inv_iam20680_sleep_us(20000); // wait for 20ms for accel startup
	return status;
}

int inv_iam20680_disable_accel()
{
	return inv_iam20680_wr_pwr_mgmt_2_accel_stby( (uint8_t)IAM20680_PWR_MGMT_2_XA_disable | (uint8_t)IAM20680_PWR_MGMT_2_YA_disable | (uint8_t)IAM20680_PWR_MGMT_2_ZA_disable);
}

int inv_iam20680_enable_gyro()
{
	int status = 0;
	status = inv_iam20680_wr_pwr_mgmt_2_gyro_stby( (uint8_t)IAM20680_PWR_MGMT_2_XG_enable | (uint8_t)IAM20680_PWR_MGMT_2_YG_enable | (uint8_t)IAM20680_PWR_MGMT_2_ZG_enable);
	inv_iam20680_sleep_us(50000); // wait for 50ms for gyro startup
	return status;
}

int inv_iam20680_disable_gyro()
{
	return inv_iam20680_wr_pwr_mgmt_2_gyro_stby( (uint8_t)IAM20680_PWR_MGMT_2_XG_disable | (uint8_t)IAM20680_PWR_MGMT_2_YG_disable | (uint8_t)IAM20680_PWR_MGMT_2_ZG_disable);
}

int inv_iam20680_configure_accel_wom( uint8_t wom_th, uint8_t odr_ms)
{
	int status = 0;

	/* Step 1: Ensure that Accelerometer is running */
	/* In PWR_MGMT_1 register (0x6B) set CYCLE = 0, SLEEP = 0, and GYRO_STANDBY = 0 */
	/* In PWR_MGMT_2 register (0x6C) set STBY_XA = STBY_YA = STBY_ZA = 0, and STBY_XG = STBY_YG = STBY_ZG = 1 */
	status |= inv_iam20680_wr_pwr_mgmt_1_sleep( IAM20680_PWR_MGMT_1_SLEEP_awake);
	status |= inv_iam20680_wr_pwr_mgmt_1_cycle( IAM20680_PWR_MGMT_1_CYCLE_off);
	status |= inv_iam20680_wr_pwr_mgmt_1_gyro_stdby( IAM20680_PWR_MGMT_1_GYRO_STDBY_off);

	/* Enable Accel*/
	/* Disable Gyro*/
	status |= inv_iam20680_wr_pwr_mgmt_2_accel_stby( (uint8_t)IAM20680_PWR_MGMT_2_XA_enable | (uint8_t)IAM20680_PWR_MGMT_2_YA_enable | (uint8_t)IAM20680_PWR_MGMT_2_ZA_enable);
	status |= inv_iam20680_wr_pwr_mgmt_2_gyro_stby( (uint8_t)IAM20680_PWR_MGMT_2_XG_disable | (uint8_t)IAM20680_PWR_MGMT_2_YG_disable | (uint8_t)IAM20680_PWR_MGMT_2_ZG_disable);

	/* Step 2: Set Accelerometer LPF bandwidth to 218.1Hz */
	/* In ACEEL_CONFIG2 register (0x1D) set ACCEL_FCHOICE_B = 0 and A_DLPF_CFG[2:0] = 1 (b001) */
	status |= inv_iam20680_wr_accel_config2_accel_fchoice_b( 0);
	status |= inv_iam20680_wr_accel_config2_a_dlpf_cfg( IAM20680_ACCEL_CONFIG2_A_DLPF_CFG_218);

	/* Step 3: Enable Motion Interrupt */
	/* In INT_ENABLE register (0x38) set WOM_INT_EN = 111 to enable motion interrupt */
   	status |= inv_iam20680_wr_int_enable_wom_int_en( BIT_WOM_INT_EN_MASK);
	status |= inv_iam20680_wr_int_enable_data_rdy_int_en( IAM20680_INT_ENABLE_DATA_RDY_INT_EN_disable);

	/* Step 4: Set Motion Threshold */
	/* Set the motion threshold for ACCEL_WOM_THR register (0x1F) */
	status |= inv_iam20680_wr_accel_wom_thr( wom_th);

	/* Step 5: Enable Accelerometer Hardware Intelligence */
	/* In ACCEL_INTEL_CTRL register (0x69) set ACCEL_INTEL_EN = ACCEL_INTEL_MODE = 1; Ensure that bit 0 is set to 0. */
	status |= inv_iam20680_wr_accel_intel_ctrl_accel_intel_en( IAM20680_ACCEL_INTEL_CTRL_ACCEL_INTEL_EN_enable);
	status |= inv_iam20680_wr_accel_intel_ctrl_accel_intel_mode( IAM20680_ACCEL_INTEL_CTRL_ACCEL_INTEL_MODE_comp_w_prev);
	status |= inv_iam20680_wr_accel_intel_ctrl_wom_th_mode( IAM20680_ACCEL_INTEL_CTRL_WOM_TH_MODE_or);

	/* Step 6: Set Frequency of Wake-Up */
	/* In SMPLRT_DIV register (0x19) set SMPLRT_DIV[7:0] = 3.9Hz – 500Hz */
	status |= inv_iam20680_wr_smplrt_div( (odr_ms - 1));

	/* For Low Power Mode, In LP_MODE_CONFIG set LPOSC_CLKSEL[3:0] = index based on the defined table  */
	status |= inv_iam20680_wr_lp_mode_cfg_set_lp_accel_odr( (double)(1000.0/odr_ms)-1);

	/* Step 7: Enable Cycle Mode (Accelerometer Low-Power Mode) */
	/* In PWR_MGMT_1 register (0x6B) set CYCLE = 1 */
	status |= inv_iam20680_wr_pwr_mgmt_1_cycle( IAM20680_PWR_MGMT_1_CYCLE_on);

	return status;
}

int inv_iam20680_get_chip_info( uint8_t chip_info[3])
{
	int status = 0;

	status	= inv_iam20680_rd_who_am_i( &chip_info[0]);

	chip_info[1] = chip_info[2] = 0;

	return status;
}

int inv_iam20680_set_accel_fsr( int accel_fsr_g)
{
	IAM20680_ACCEL_CONFIG_FS_SEL_t value;

	switch(accel_fsr_g) {
	case 2:
		value = IAM20680_ACCEL_CONFIG_FS_SEL_2g;
		break;
	case 4:
		value =	IAM20680_ACCEL_CONFIG_FS_SEL_4g;
		break;
	case 8:
		value = IAM20680_ACCEL_CONFIG_FS_SEL_8g;
		break;
	case 16:
		value = IAM20680_ACCEL_CONFIG_FS_SEL_16g;
		break;
	default:
		return INV_ERROR_BAD_ARG;
	}

	return inv_iam20680_wr_accel_config_accel_fs_sel( value);
}

int inv_iam20680_set_gyro_fsr( int gyro_fsr_dps)
{
	IAM20680_GYRO_CONFIG_FS_SEL_t value;

	switch(gyro_fsr_dps) {
	case 250:
		value = IAM20680_GYRO_CONFIG_FS_SEL_250dps;
		break;
	case 500:
		value =	IAM20680_GYRO_CONFIG_FS_SEL_500dps;
		break;
	case 1000:
		value = IAM20680_GYRO_CONFIG_FS_SEL_1000dps;
		break;
	case 2000:
		value = IAM20680_GYRO_CONFIG_FS_SEL_2000dps;
		break;
	default:
		return INV_ERROR_BAD_ARG;
	}

	return inv_iam20680_wr_gyro_config_fs_sel( value);
}
