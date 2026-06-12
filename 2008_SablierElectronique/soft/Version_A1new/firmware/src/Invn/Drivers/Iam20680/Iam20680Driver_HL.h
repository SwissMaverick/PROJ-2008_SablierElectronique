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

/** @defgroup DriverIam20680Driver_HL Iam20680 driver high level functions
 *  @brief High-level function to setup an Iam20680 device
 *  @ingroup  DriverIam20680
 *  @{
 */

#ifndef _INV_IAM20680_DRIVER_HL_H_
#define _INV_IAM20680_DRIVER_HL_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include "Iam20680Transport.h"


/** @brief return WHOAMI value
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @param[out] who_am_i WHOAMI for device
 *  @return     0 on success, negative value on error
 */
int inv_iam20680_get_who_am_i( uint8_t * who_am_i);

/** @brief Check WHOAMI value
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return     0 on success, negative value on error
 */
int inv_iam20680_check_who_am_i();

/** @brief Perform a soft reset of the device
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_device_reset();

/** @brief Initialize the device
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_init();

/** @brief Put accel in low power mode
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_set_accel_low_power_mode();

/** @brief Put accel in low noise mode
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_set_accel_low_noise_mode();

/** @brief Put gyro in low power mode
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_set_gyro_low_power_mode();

/** @brief Put gyro in low noise mode
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_set_gyro_low_noise_mode();

/** @brief Enable all 3 axes of accel
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_enable_accel();

/** @brief Disable all 3 axes of accel
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_disable_accel();

/** @brief Enable all 3 axes of gyro
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_enable_gyro();

/** @brief Disable all 3 axes of gyro
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_disable_gyro();

/** @brief  Configures accel WOM.
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @param[in] wom_th threshold value for the Wake on Motion Interrupt accelerometer.
 *  @param[in] odr_ms   Frequency of Wake-Up. Value range: 2ms ~ 250ms (4Hz ~ 500Hz)
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_configure_accel_wom( uint8_t wom_th, uint8_t odr_ms);

/** @brief  Get chip info.
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @param[out] chip_info   chip specific information
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_get_chip_info( uint8_t chip_info[3]);

/** @brief Set accel full scale range
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @param[in] accel_fsr_g Accel full scale range in g. Possible values: 2, 4, 8, 16.
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_set_accel_fsr( int accel_fsr_g);

/** @brief Set gyro full scale range
 *  @param[in] s Pointer to the driver context structure inv_iam20680
 *  @param[in] gyro_fsr_dps Gyro full scale range in dps. Possible values: 250, 500, 1000, 2000.
 *  @return 0 on success, negative value on error.
 */
int inv_iam20680_set_gyro_fsr( int gyro_fsr_dps);

#ifdef __cplusplus
}
#endif

#endif /* _INV_IAM20680_DRIVER_HL_H_ */

/** @} */
