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
#include "Iam20680ExtFunc.h"
#include "Iam20680Transport.h"
#include "Iam20680Driver_HL.h"
#include "Mc32SpiUtil.h"
#include "Mc32Delays.h"

/* WHOAMI value for IAM20680 */
static const uint8_t EXPECTED_WHOAMI = 0xA9;

/* Just a handy variable to handle the iam20680 object */

int SetupInvDevice( inv_bool_t isSPI)
{
	int rc = 0;

	/* Check WHOAMI */
	uint8_t who_am_i;
	rc = inv_iam20680_get_who_am_i(&who_am_i);
	if(rc != INV_SUCCESS)
		return rc;

	/* Init device */
	rc = inv_iam20680_init();

	return rc;
}

/* the following functions are used for accessing registers */

int inv_iam20680_read_reg(uint8_t reg, uint16_t length, uint8_t *data)
{
    int i;
    if((reg + length) > 127)
    {
        return 1;
    }
    else
    {   
        if(length > 1)
        {
           CS_GYROStateSet(0);
           spi_read2(reg|0b10000000);
           for (i = 1; i < length; i ++)
           {   
                data[i - 1] = spi_read2(((reg + i)|0b10000000));
           }
           data[length - 1] = spi_read2(255);
           CS_GYROStateSet(1);
        }
        else
        {
            CS_GYROStateSet(0);
            spi_read2(reg|0b10000000);
            data[0] = spi_read2(255);
            CS_GYROStateSet(1);
        }
        
        
    }
    return 0;
    
}

int inv_iam20680_write_reg(uint8_t reg, uint32_t length, const uint8_t *data)
{
    
	int i = 0;
    if((reg + length) > 127)
    {
        return 1;
    }
    else
    {    
        
        for (i = 0; i < length; i ++)
        {   
            CS_GYROStateSet(0);
            spi_write2(reg + i);
            spi_write2(data[i]);
            CS_GYROStateSet(1);
            delay_us(20);
        }
        
    }
    
    return 0;
}
