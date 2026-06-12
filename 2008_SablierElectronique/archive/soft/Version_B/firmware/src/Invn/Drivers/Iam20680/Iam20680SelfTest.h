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

/** @defgroup DriverIam20680Selftest Iam20680 self test
 *  @brief Perform self test to a Iam20680 device
 *  @ingroup  DriverIam20680
 *  @{
 */

#ifndef _INV_IAM20680_SELFTEST_H_
#define _INV_IAM20680_SELFTEST_H_

#ifdef __cplusplus
extern "C" {
#endif


/**
*  @brief      Perform hardware self-test for Accel and Gyro.
*  @param[in]  s Pointer to the driver context structure inv_iam20680
*  @return     ACCEL_SUCCESS<<1 | GYRO_SUCCESS
*/
int inv_iam20680_run_selftest();

/**
*  @brief      Retrieve bias collected by self-test.
*  @param[in]  s Pointer to the driver context structure inv_iam20680
*  @param[out] st_bias bias scaled by 2^16, accel is gee and gyro is dps.
*                      The buffer will be stuffed in order as below.
*                      Gyro normal mode X,Y,Z
*                      Gyro LP mode X,Y,Z
*                      Accel normal mode X,Y,Z
*                      Accel LP mode X,Y,Z
*/
void inv_iam20680_get_st_bias( int * st_bias);

/**
*  @brief      Apply bias.
*  @param[in]  s Pointer to the driver context structure inv_iam20680
*  @param[in]  st_bias bias scaled by 2^16, accel is gee and gyro is dps.
*                      The buffer should be be stuffed in order as below.
*                      Gyro normal mode X,Y,Z
*                      Gyro LP mode X,Y,Z
*                      Accel normal mode X,Y,Z
*                      Accel LP mode X,Y,Z
*/
void inv_iam20680_set_st_bias( int * st_bias);

#ifdef __cplusplus
}
#endif

#endif /* _INV_IAM20680_SELFTEST_H_ */

/** @} */
