/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _MC32_TLC_UTILITY_H    /* Guard against multiple inclusion */
#define _MC32_TLC_UTILITY_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */
#include <stdint.h>
#include "Mc32SpiUtil.h"
#include "peripheral/ports/plib_ports.h"
#include "app.h"

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif


#define NBR_TLC 2
#define NBR_CHANNELS (NBR_TLC * 16)
    
extern uint8_t TLC5940_GSData[NBR_TLC * 24];

    
    // *****************************************************************************
    // *****************************************************************************
    // Section: Interface Functions
    // *****************************************************************************
    // *****************************************************************************
    void TLC5940_SetAllColumnsMax(void);
    void TLC5940_SendRowData(uint16_t rowData);
    void TLC5940_Init(void);
    void TLC5940_SetAll(uint16_t value);
    void TLC5940_Set(uint8_t channel, uint16_t value);
    void TLC5940_Update(void);


    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
