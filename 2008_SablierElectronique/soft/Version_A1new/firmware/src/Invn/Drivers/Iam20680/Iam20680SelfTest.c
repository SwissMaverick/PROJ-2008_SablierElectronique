/*
 * ________________________________________________________________________________________________________
 * Copyright (c) 2015-2015 InvenSense Inc. All rights reserved.
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

#include "Iam20680SelfTest.h"
#include "Iam20680Defs.h"
#include "Iam20680ExtFunc.h"
#include "Iam20680Transport.h"
#include "Iam20680Driver_HL.h"

#define DEF_ST_SCALE                           	32768
#define DEF_ST_GYRO_FS_DPS                      250
#define DEF_SELFTEST_GYRO_SENS                  (DEF_ST_SCALE / DEF_ST_GYRO_FS_DPS)
#define DEF_ST_PRECISION						1000
#define DEF_ST_ACCEL_FS_MG						2000
#define DEF_ST_TRY_TIMES						2
#define DEF_ST_SAMPLES							200
#define DEF_GYRO_CT_SHIFT_DELTA					500
#define DEF_ACCEL_ST_SHIFT_DELTA				500
#define ACCEL_ST_AL_MIN ((DEF_ACCEL_ST_AL_MIN * DEF_ST_SCALE \
				 / DEF_ST_ACCEL_FS_MG) * DEF_ST_PRECISION)
#define ACCEL_ST_AL_MAX ((DEF_ACCEL_ST_AL_MAX * DEF_ST_SCALE \
				 / DEF_ST_ACCEL_FS_MG) * DEF_ST_PRECISION)
#define DEF_ST_ACCEL_LPF						2
#define DEF_ST_GYRO_LPF							2
#define DEF_SELFTEST_SAMPLE_RATE				0 			/*	1000Hz 	*/
#define DEF_SELFTEST_SAMPLE_RATE_LP				4 			/* 	200Hz 	*/
#define DEF_SELFTEST_SAMPLE_RATE_LP_ACCEL       10			/* 	250Hz	*/
#define DEF_SELFTEST_ACCEL_FS					(0 << 3) 	/* 	2g 		*/
#define DEF_SELFTEST_GYRO_FS					(0 << 3) 	/* 	250dps 	*/
#define DEF_ST_STABLE_TIME						20
#define DEF_GYRO_WAIT_TIME						5
#define DEF_GYRO_WAIT_TIME_LP					50
#define GYRO_ENGINE_UP_TIME                     50

/* Gyro Offset Max Value (dps) */
#define DEF_GYRO_OFFSET_MAX						20
/* Gyro Self Test Absolute Limits ST_AL (dps) */
#define DEF_GYRO_ST_AL							60
/* Accel Self Test Absolute Limits ST_AL (mg) */
#define DEF_ACCEL_ST_AL_MIN						225
#define DEF_ACCEL_ST_AL_MAX						675

#define BYTES_PER_SENSOR                       	6
#define BYTES_PER_TEMP_SENSOR                  	2
#define FIFO_COUNT_BYTE                        	2
#define THREE_AXES                             	3

enum {
	ST_NORMAL_MODE = 0,
	ST_GYRO_LP_MODE = 1,
	ST_ACCEL_LP_MODE = 2
};

/** @brief the registers to recover after self-test
 */
struct recover_regs {
	uint8_t int_enable;		/* REG_INT_ENABLE      */
	uint8_t fifo_en;		/* REG_FIFO_EN         */
	uint8_t user_ctrl;		/* REG_USER_CTRL       */
	uint8_t config;			/* REG_CONFIG          */
	uint8_t gyro_config;	/* REG_GYRO_CONFIG     */
	uint8_t accel_config;	/* REG_ACCEL_CONFIG    */
	uint8_t accel_config_2;	/* REG_ACCEL_CONFIG_2  */
	uint8_t smplrt_div;		/* REG_SAMPLE_RATE_DIV */
	uint8_t lp_mode;		/* REG_LP_MODE_CTRL    */
	uint8_t pwr_mgmt_1;		/* REG_PWR_MGMT_1      */
	uint8_t pwr_mgmt_2;		/* REG_PWR_MGMT_2      */
};

static const uint16_t sSelfTestEquation[256] = {
	2620, 2646, 2672, 2699, 2726, 2753, 2781, 2808,
	2837, 2865, 2894, 2923, 2952, 2981, 3011, 3041,
	3072, 3102, 3133, 3165, 3196, 3228, 3261, 3293,
	3326, 3359, 3393, 3427, 3461, 3496, 3531, 3566,
	3602, 3638, 3674, 3711, 3748, 3786, 3823, 3862,
	3900, 3939, 3979, 4019, 4059, 4099, 4140, 4182,
	4224, 4266, 4308, 4352, 4395, 4439, 4483, 4528,
	4574, 4619, 4665, 4712, 4759, 4807, 4855, 4903,
	4953, 5002, 5052, 5103, 5154, 5205, 5257, 5310,
	5363, 5417, 5471, 5525, 5581, 5636, 5693, 5750,
	5807, 5865, 5924, 5983, 6043, 6104, 6165, 6226,
	6289, 6351, 6415, 6479, 6544, 6609, 6675, 6742,
	6810, 6878, 6946, 7016, 7086, 7157, 7229, 7301,
	7374, 7448, 7522, 7597, 7673, 7750, 7828, 7906,
	7985, 8065, 8145, 8227, 8309, 8392, 8476, 8561,
	8647, 8733, 8820, 8909, 8998, 9088, 9178, 9270,
	9363, 9457, 9551, 9647, 9743, 9841, 9939, 10038,
	10139, 10240, 10343, 10446, 10550, 10656, 10763, 10870,
	10979, 11089, 11200, 11312, 11425, 11539, 11654, 11771,
	11889, 12008, 12128, 12249, 12371, 12495, 12620, 12746,
	12874, 13002, 13132, 13264, 13396, 13530, 13666, 13802,
	13940, 14080, 14221, 14363, 14506, 14652, 14798, 14946,
	15096, 15247, 15399, 15553, 15709, 15866, 16024, 16184,
	16346, 16510, 16675, 16842, 17010, 17180, 17352, 17526,
	17701, 17878, 18057, 18237, 18420, 18604, 18790, 18978,
	19167, 19359, 19553, 19748, 19946, 20145, 20347, 20550,
	20756, 20963, 21173, 21385, 21598, 21814, 22033, 22253,
	22475, 22700, 22927, 23156, 23388, 23622, 23858, 24097,
	24338, 24581, 24827, 25075, 25326, 25579, 25835, 26093,
	26354, 26618, 26884, 27153, 27424, 27699, 27976, 28255,
	28538, 28823, 29112, 29403, 29697, 29994, 30294, 30597,
	30903, 31212, 31524, 31839, 32157, 32479, 32804
};

static int save_settings( struct recover_regs * saved_regs)
{
	int result = 0;
	uint8_t data;

	result |= inv_iam20680_read_reg( MPUREG_PWR_MGMT_1, 1, &saved_regs->pwr_mgmt_1);

	/* wake up */
	data = CLK_SEL;
	result |= inv_iam20680_write_reg( MPUREG_PWR_MGMT_1, 1, &data);

	result |= inv_iam20680_read_reg( MPUREG_INT_ENABLE, 1, &saved_regs->int_enable);
	result |= inv_iam20680_read_reg( MPUREG_FIFO_EN, 1, &saved_regs->fifo_en);
	result |= inv_iam20680_read_reg( MPUREG_USER_CTRL, 1, &saved_regs->user_ctrl);
	result |= inv_iam20680_read_reg( MPUREG_CONFIG, 1, &saved_regs->config);
	result |= inv_iam20680_read_reg( MPUREG_GYRO_CONFIG, 1, &saved_regs->gyro_config);
	result |= inv_iam20680_read_reg( MPUREG_ACCEL_CONFIG, 1, &saved_regs->accel_config);
	result |= inv_iam20680_read_reg( MPUREG_ACCEL_CONFIG_2, 1, &saved_regs->accel_config_2);
	result |= inv_iam20680_read_reg( MPUREG_SMPLRT_DIV, 1, &saved_regs->smplrt_div);
	result |= inv_iam20680_read_reg( MPUREG_LP_MODE_CONFIG, 1, &saved_regs->lp_mode);
	result |= inv_iam20680_read_reg( MPUREG_PWR_MGMT_2, 1, &saved_regs->pwr_mgmt_2);

	return result;
}

static int recover_settings(struct recover_regs * saved_regs)
{
	int result = 0;
	uint8_t data;

	// Stop sensors
	data = BIT_PWR_ALL_OFF_MASK;
	result |= inv_iam20680_write_reg( MPUREG_PWR_MGMT_2, 1, &data);

	// Restore sensor configurations
	result |= inv_iam20680_write_reg( MPUREG_INT_ENABLE, 1, &saved_regs->int_enable);
	result |= inv_iam20680_write_reg( MPUREG_FIFO_EN, 1, &saved_regs->fifo_en);
	result |= inv_iam20680_write_reg( MPUREG_USER_CTRL, 1, &saved_regs->user_ctrl);
	result |= inv_iam20680_write_reg( MPUREG_CONFIG, 1, &saved_regs->config);
	result |= inv_iam20680_write_reg( MPUREG_GYRO_CONFIG, 1, &saved_regs->gyro_config);
	result |= inv_iam20680_write_reg( MPUREG_ACCEL_CONFIG, 1, &saved_regs->accel_config);
	result |= inv_iam20680_write_reg( MPUREG_ACCEL_CONFIG_2, 1, &saved_regs->accel_config_2);
	result |= inv_iam20680_write_reg( MPUREG_SMPLRT_DIV, 1, &saved_regs->smplrt_div);
	result |= inv_iam20680_write_reg( MPUREG_LP_MODE_CONFIG, 1, &saved_regs->lp_mode);
	result |= inv_iam20680_write_reg( MPUREG_PWR_MGMT_1, 1, &saved_regs->pwr_mgmt_1);
	result |= inv_iam20680_write_reg( MPUREG_PWR_MGMT_2, 1, &saved_regs->pwr_mgmt_2);

	return result;
}

/**
*  @brief check gyro self test
*  @param[in] s Pointer to the driver context structure inv_iam20680
*  @param[in] meanNormalTestValues average value of normal test.
*  @param[in] meanSelfTestValues   average value of self test
*  @return zero as success. A non-zero return value indicates failure in self test.
*/
static int check_gyro_self_test( int *meanNormalTestValues, int *meanSelfTestValues)
{
	int ret_val = 0;

	uint8_t regs[3];
	int otp_value_zero = 0;
	int st_shift_prod[3], st_shift_cust[3], i;
	int result;

	result = inv_iam20680_read_reg( MPUREG_SELF_TEST_X_GYRO, 3, regs);
	if (result)
		return result;

	for (i = 0; i < 3; i++) {
		if (regs[i] != 0) {
			st_shift_prod[i] = sSelfTestEquation[regs[i] - 1];
		} else {
			st_shift_prod[i] = 0;
			otp_value_zero = 1;
		}
	}

	for (i = 0; i < 3; i++) {
		st_shift_cust[i] = meanSelfTestValues[i] - meanNormalTestValues[i];
		if (!otp_value_zero) {
			/* Self Test Pass/Fail Criteria A */
			if (st_shift_cust[i] < DEF_GYRO_CT_SHIFT_DELTA * st_shift_prod[i])
				ret_val = 1;
		} else {
			/* Self Test Pass/Fail Criteria B */
			if (st_shift_cust[i] < DEF_GYRO_ST_AL * DEF_SELFTEST_GYRO_SENS * DEF_ST_PRECISION)
				ret_val = 1;
		}
	}

	if (ret_val == 0) {
		/* Self Test Pass/Fail Criteria C */
		for (i = 0; i < 3; i++) {
			if (INV_ABS(meanNormalTestValues[i]) > DEF_GYRO_OFFSET_MAX * DEF_SELFTEST_GYRO_SENS * DEF_ST_PRECISION)
				ret_val = 1;
		}
	}

	return ret_val;
}

/**
*  @brief check accel self test
*  @param[in] s Pointer to the driver context structure inv_iam20680
*  @param[in] meanNormalTestValues average value of normal test.
*  @param[in] meanSelfTestValues   average value of self test
*  @return zero as success. A non-zero return value indicates failure in self test.
*/
static int check_accel_self_test( int *meanNormalTestValues, int *meanSelfTestValues)
{
	int ret_val = 0;

	uint8_t regs[3];
	int otp_value_zero = 0;
	int st_shift_prod[3], st_shift_cust[3], st_shift_ratio[3], i;
	int result;

	result = inv_iam20680_read_reg( MPUREG_SELF_TEST_X_ACCEL, 3, regs);
	if (result)
		return result;

	for (i = 0; i < 3; i++) {
		if (regs[i] != 0) {
			st_shift_prod[i] = sSelfTestEquation[regs[i] - 1];
		} else {
			st_shift_prod[i] = 0;
			otp_value_zero = 1;
		}
	}

	if (!otp_value_zero) {
		/* Self Test Pass/Fail Criteria A */
		for (i = 0; i < 3; i++) {
			st_shift_cust[i] = meanSelfTestValues[i] - meanNormalTestValues[i];
			st_shift_ratio[i] = INV_ABS(st_shift_cust[i] / st_shift_prod[i] - DEF_ST_PRECISION);
			if (st_shift_ratio[i] > DEF_ACCEL_ST_SHIFT_DELTA)
				ret_val = 1;
		}
	} else {
		/* Self Test Pass/Fail Criteria B */
		for (i = 0; i < 3; i++) {
			st_shift_cust[i] = INV_ABS(meanSelfTestValues[i] - meanNormalTestValues[i]);
			if (st_shift_cust[i] < ACCEL_ST_AL_MIN || st_shift_cust[i] > ACCEL_ST_AL_MAX)
				ret_val = 1;
		}
	}

	return ret_val;
}

/*
*  do_test() - do the actual test of self testing
*/
static int do_test( int self_test_flag, int *gyro_result, int *accel_result, int lp_mode)
{
	int result = 0;

	int i, j, packet_size;
	uint8_t data[BYTES_PER_SENSOR * 2 + BYTES_PER_TEMP_SENSOR], d, dd, da, tmp;
	int fifo_count, packet_count, ind, ss;

	/* switch engine */
	d = 0;
	if (lp_mode == ST_GYRO_LP_MODE)
		d = BIT_PWR_ACCEL_STBY_MASK | BIT_PWR_MGMT_2_FIFO_LP_EN_MASK;
	else if (lp_mode == ST_ACCEL_LP_MODE)
		d = BIT_PWR_GYRO_STBY_MASK | BIT_PWR_MGMT_2_FIFO_LP_EN_MASK;

	result |= inv_iam20680_write_reg( MPUREG_PWR_MGMT_2, 1, &d);
	inv_iam20680_sleep_us(GYRO_ENGINE_UP_TIME*1000);

	packet_size = BYTES_PER_SENSOR * 2;

	/* clear signal path */
	d = 1;
	result |= inv_iam20680_write_reg( MPUREG_USER_CTRL, 1, &d);

	inv_iam20680_sleep_us(30000);

	/* disable interrupt */
	d = 0;
	result |= inv_iam20680_write_reg( MPUREG_INT_ENABLE, 1, &d);

	/* disable the sensor output to FIFO */
	d = 0;
	result |= inv_iam20680_write_reg( MPUREG_FIFO_EN, 1, &d);

	/* disable fifo reading */
	d = 0;
	result |= inv_iam20680_write_reg( MPUREG_USER_CTRL, 1, &d);

	/* setup parameters */
	d = DEF_ST_GYRO_LPF;
	result |= inv_iam20680_write_reg( MPUREG_CONFIG, 1, &d);

	/* gyro lp mode */
	if (lp_mode == ST_GYRO_LP_MODE)
		d  = BIT_GYRO_CYCLE_MASK;
	else
		d = 0;
 	result |= inv_iam20680_write_reg( MPUREG_LP_MODE_CONFIG, 1, &d);

	/* set sampling rate */
	if (lp_mode == ST_ACCEL_LP_MODE) {
		/* Set the rate to 250 Hz */
		inv_iam20680_sleep_us(30000);
		result |= inv_iam20680_read_reg( MPUREG_LP_MODE_CONFIG, 1, &d);
		if (lp_mode == ST_ACCEL_LP_MODE)
			d |= DEF_SELFTEST_SAMPLE_RATE_LP_ACCEL;
		result |= inv_iam20680_write_reg( MPUREG_LP_MODE_CONFIG, 1, &d);
	} else {
		if (lp_mode == ST_GYRO_LP_MODE)
			d = DEF_SELFTEST_SAMPLE_RATE_LP;
		else
			d = DEF_SELFTEST_SAMPLE_RATE;
		result |= inv_iam20680_write_reg( MPUREG_SMPLRT_DIV, 1, &d);
	}

	/* wait for the sampling rate change to stabilize */
	inv_iam20680_sleep_us(GYRO_ENGINE_UP_TIME*1000);

	/* config accel LPF register */
	if (lp_mode == ST_ACCEL_LP_MODE)
		d = BIT_A_DLPF_CFG_MASK;
	else
		d = DEF_ST_ACCEL_LPF;
	result |= inv_iam20680_write_reg( MPUREG_ACCEL_CONFIG_2, 1, &d);

	d = self_test_flag | DEF_SELFTEST_GYRO_FS;
	result |= inv_iam20680_write_reg( MPUREG_GYRO_CONFIG, 1, &d);

	d = self_test_flag | DEF_SELFTEST_ACCEL_FS;
	result |= inv_iam20680_write_reg( MPUREG_ACCEL_CONFIG, 1, &d);

	/* accel lp mode */
	dd = CLK_SEL;
	if (lp_mode == ST_ACCEL_LP_MODE)
		dd |= BIT_CYCLE_MASK;
	result |= inv_iam20680_write_reg( MPUREG_PWR_MGMT_1, 1, &dd);

	/* wait for the output to get stable */
	inv_iam20680_sleep_us(DEF_ST_STABLE_TIME*1000);

	/* enable sensor output to FIFO */
	d = BIT_GYRO_FIFO_EN_MASK | BIT_ACCEL_FIFO_EN_MASK;
	for (i = 0; i < THREE_AXES; i++) {
		gyro_result[i] = 0;
		accel_result[i] = 0;
	}

	ss = 0;
	while(ss < 200) {

		/* clear FIFO + enable FIFO reading */
		da = BIT_FIFO_RST_MASK | BIT_FIFO_EN_MASK;
		result |= inv_iam20680_write_reg( MPUREG_USER_CTRL, 1, &da);

		result |= inv_iam20680_write_reg( MPUREG_FIFO_EN, 1, &d);

		if (lp_mode)
			inv_iam20680_sleep_us(DEF_GYRO_WAIT_TIME_LP*1000);
		else
			inv_iam20680_sleep_us(DEF_GYRO_WAIT_TIME*1000);

		/* stop FIFO */
		tmp = 0;
		result |= inv_iam20680_write_reg( MPUREG_FIFO_EN, 1, &tmp);

		result |= inv_iam20680_read_reg( MPUREG_FIFO_COUNTH, FIFO_COUNT_BYTE, data);

		fifo_count = (data[0] << 8) | data[1];
		packet_count = fifo_count / packet_size;

		i = 0;
		while ((i < packet_count) && (ss < 200)) {
			short vals[3];
			result |= inv_iam20680_read_reg( MPUREG_FIFO_R_W, packet_size, data);
			ind = 0;
			for (j = 0; j < THREE_AXES; j++) {
				vals[j] = (data[ind + 2 * j] << 8) | data[ind + 2 * j + 1];
				accel_result[j] += vals[j];
			}
			ind += BYTES_PER_SENSOR;
			for (j = 0; j < THREE_AXES; j++) {
				vals[j] = (data[ind + 2 * j] << 8) | data[ind + 2 * j + 1];
				gyro_result[j] += vals[j];
			}
			ss++;
			i++;
		}
	}

	for (j = 0; j < THREE_AXES; j++) {
		accel_result[j] = accel_result[j] / ss;
		accel_result[j] *= DEF_ST_PRECISION;
	}
	for (j = 0; j < THREE_AXES; j++) {
		gyro_result[j] = gyro_result[j] / ss;
		gyro_result[j] *= DEF_ST_PRECISION;
	}

	/* Disable ACCEL Lp Mode */
	if (lp_mode == ST_ACCEL_LP_MODE) {
		result |= inv_iam20680_read_reg( MPUREG_PWR_MGMT_1, 1, &d);
		d &= ~BIT_CYCLE_MASK;
		result |= inv_iam20680_write_reg( MPUREG_PWR_MGMT_1, 1, &d);
	}

	return result;
}

int inv_iam20680_run_selftest()
{
	int result = 0;
	int gyro_bias_st[THREE_AXES], gyro_bias_regular[THREE_AXES];
	int accel_bias_st[THREE_AXES], accel_bias_regular[THREE_AXES];
	int gyro_bias_regular_lp[THREE_AXES], accel_bias_regular_lp[THREE_AXES];
	int test_times;
	char accel_result, gyro_result;
	int i;
	struct recover_regs recover_regs;
	uint8_t data;

	result |= save_settings( &recover_regs);

	/* enable sensros */
	data = 0;
	result |= inv_iam20680_write_reg( MPUREG_PWR_MGMT_2, 1, &data);
	inv_iam20680_sleep_us(GYRO_ENGINE_UP_TIME*1000);

	accel_result = 0;
	gyro_result = 0;

	/* (1) hardware self-test */
	/* Collect averaged data of gyro and accel in normal mode.
	   Try up to DEF_ST_TRY_TIMES times in case of some error such as I2C error.
	   The collected data can be utilized as factory bias of normal mode.
	   Will be checked later.*/
	test_times = DEF_ST_TRY_TIMES;
	while (test_times > 0) {
		result = do_test( 0, gyro_bias_regular, accel_bias_regular, ST_NORMAL_MODE);
		if (result)
			test_times--;
		else
			break;
	}
	if (result)
		goto test_fail;

	for (i = 0; i < 3; i++) {
		s->gyro_ois_st_bias[i] = gyro_bias_regular[i] / DEF_ST_PRECISION;
		s->accel_ois_st_bias[i] = accel_bias_regular[i] / DEF_ST_PRECISION;
	}

	/* (2) hardware self-test */
	/* Collect averaged data of gyro and accel in hardware selftest mode.
	   Try up to DEF_ST_TRY_TIMES times in case of some error such as I2C error.
	   Will be checked later */
	test_times = DEF_ST_TRY_TIMES;
	while (test_times > 0) {
		result = do_test( (BIT_XG_ST_MASK | BIT_YG_ST_MASK | BIT_ZG_ST_MASK), gyro_bias_st, accel_bias_st, ST_NORMAL_MODE);
		if (result)
			test_times--;
		else
			break;
	}
	if (result)
		goto test_fail;

	/* (3) Bias collection for accel lp mode */
	/* Collect averaged accel data in lp mode.
	   Try up to DEF_ST_TRY_TIMES times in case of some error such as I2C error.
	   This is only for factory bias of accel lp mode */
	test_times = DEF_ST_TRY_TIMES;
	while (test_times > 0) {
		result = do_test( 0, gyro_bias_regular_lp, accel_bias_regular_lp, ST_ACCEL_LP_MODE);
		if (result)
			test_times--;
		else
			break;
	}
	if (result)
		goto test_fail;

	for (i = 0; i < 3; i++) {
		s->accel_st_bias[i] = accel_bias_regular_lp[i] / DEF_ST_PRECISION;
	}

	/* (4) Bias collection for gyro lp mode */
	/* Collect averaged gyro data in lp mode.
	   Try up to DEF_ST_TRY_TIMES times in case of some error such as I2C error.
	   This is only for factory bias of gyro lp mode */
	test_times = DEF_ST_TRY_TIMES;
	while (test_times > 0) {
		result = do_test( 0, gyro_bias_regular_lp, accel_bias_regular_lp, ST_GYRO_LP_MODE);
		if (result)
			test_times--;
		else
			break;
	}
	if (result)
		goto test_fail;

	for (i = 0; i < 3; i++) {
		s->gyro_st_bias[i] = gyro_bias_regular_lp[i] / DEF_ST_PRECISION;
	}

	/* Check data collected in step (1) and (2).
	   Compare with OTP values which are stored at factory */
	accel_result = !check_accel_self_test( accel_bias_regular, accel_bias_st);
	gyro_result = !check_gyro_self_test( gyro_bias_regular, gyro_bias_st);

test_fail:
	recover_settings( &recover_regs);

	return (accel_result << 1) | gyro_result;
}

void inv_iam20680_get_st_bias( int * st_bias)
{
	int axi axis_sign;
	int gravity;
	int i, t;
	int check;
	int scale;

	/* check bias there ? */
	check = 0;
	for (i = 0; i < 3; i++) {
		if (s->gyro_ois_st_bias[i] != 0)
			check = 1;
		if (s->gyro_st_bias[i] != 0)
			check = 1;
		if (s->accel_ois_st_bias[i] != 0)
			check = 1;
		if (s->accel_st_bias[i] != 0)
			check = 1;
	}

	/* if no bia return all 0 */
	if (check == 0) {
		for (i = 0; i < 12; i++)
			st_bias[i] = 0;
		return;
	}

	/* dps scaled by 2^16 */
	scale = 65536 / DEF_SELFTEST_GYRO_SENS;

	/* Gyro normal mode */
	t = 0;
	for (i = 0; i < 3; i++)
		st_bias[i + t] = s->gyro_ois_st_bias[i] * scale;

	/* Gyro LP mode */
	t += 3;
	for (i = 0; i < 3; i++)
		st_bias[i + t] = s->gyro_st_bias[i] * scale;

	axis = 0;
	axis_sign = 1;
	if (INV_ABS(s->accel_ois_st_bias[1]) > INV_ABS(s->accel_ois_st_bias[0]))
		axis = 1;
	if (INV_ABS(s->accel_ois_st_bias[2]) > INV_ABS(s->accel_ois_st_bias[axis]))
		axis = 2;
	if (s->accel_ois_st_bias[axis] < 0)
		axis_sign = -1;

	/* gee scaled by 2^16 */
	scale = 65536 / (DEF_ST_SCALE / (DEF_ST_ACCEL_FS_MG / 1000));

	gravity = 32768 / (DEF_ST_ACCEL_FS_MG / 1000) * axis_sign;
	gravity *= scale;

	/* Accel normal mode */
	t += 3;
	for (i = 0; i < 3; i++) {
		st_bias[i + t] = s->accel_ois_st_bias[i] * scale;
		if (axis == i)
			st_bias[i + t] -= gravity;
	}

	/* Accel LP mode */
	t += 3;
	for (i = 0; i < 3; i++) {
		st_bias[i + t] = s->accel_st_bias[i] * scale;
		if (axis == i)
			st_bias[i + t] -= gravity;
	}
}

void inv_iam20680_set_st_bias( int * st_bias)
{
	int i, t;
	int scale;
	int check_gyro = 0;
	int check_acc = 0;

	/* check bias there ? */
	for (i = 0; i < 6; i++) {
		if (st_bias[i] != 0)
			check_gyro = 1;
		if (st_bias[i + 6] != 0)
			check_acc = 1;
	}

	if((check_gyro == 0) && (check_acc == 0))
		return;

	if(check_gyro) {
		/* dps scaled by 2^16 */
		scale = 65536 / DEF_SELFTEST_GYRO_SENS;

		/* Gyro normal mode */
		t = 0;
		for (i = 0; i < 3; i++)
			s->gyro_ois_st_bias[i] = st_bias[i + t] / scale;

		/* Gyro LP mode */
		t += 3;
		for (i = 0; i < 3; i++)
			s->gyro_st_bias[i] = st_bias[i + t] / scale;
	}

	if(check_acc) {
		int gravity;
		int axis = 0;
		int axis_sign = 1;
		if (INV_ABS(st_bias[1 + 6]) > INV_ABS(st_bias[0 + 6]))
			axis = 1;
		if (INV_ABS(st_bias[2 + 6]) > INV_ABS(st_bias[axis + 6]))
			axis = 2;
		if (st_bias[axis + 6] < 0)
			axis_sign = -1;

		/* gee scaled by 2^16 */
		scale = 65536 / (DEF_ST_SCALE / (DEF_ST_ACCEL_FS_MG / 1000));

		gravity = 32768 / (DEF_ST_ACCEL_FS_MG / 1000) * axis_sign;

		/* Accel normal mode */
		t = 6;
		for (i = 0; i < 3; i++) {
			s->accel_ois_st_bias[i] = st_bias[i + t] / scale;
			if (axis == i)
				s->accel_ois_st_bias[i] += gravity;
		}

		/* Accel LP mode */
		t += 3;
		for (i = 0; i < 3; i++) {
			s->accel_st_bias[i] = st_bias[i + t] / scale;
			if (axis == i)
				s->accel_st_bias[i] += gravity;
		}
	}
}
