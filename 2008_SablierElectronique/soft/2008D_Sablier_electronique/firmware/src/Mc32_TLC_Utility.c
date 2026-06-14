/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */
#include "app.h"
#include "Mc32_TLC_Utility.h"

uint8_t tlc_GSData[NBR_TLC * 24];

void TLC5940_Init(void)
{
    // BLANK HIGH : sorties désactivées pendant l'init
    BLANK_TLCOn();

    // Toutes les sorties à max (courant max, LEDs allumées)
    TLC5940_SetAll(4095);

    // Envoi des données + latch
    TLC5940_Update();

    // BLANK LOW : active les sorties
    BLANK_TLCOff();
}

void TLC5940_Clear(void)
{
    TLC5940_SetAll(0);
}

void TLC5940_Update(void)
{
    // Envoi des 48 octets (2 TLC × 24) via SPI2
    uint8_t *p = tlc_GSData;
    while (p < tlc_GSData + NBR_TLC * 24) 
    {
        spi_write2(*p++);
    }

    // Pulse XLAT pour latcher les données dans le TLC
    XLAT_TLCOn();
    XLAT_TLCOff();
}

void TLC5040_Set(uint8_t channel, uint16_t value)
{
    uint8_t index8   = (NBR_TLC * 16 - 1) - channel;
    uint8_t *p       = tlc_GSData + (((uint16_t)index8 * 3) >> 1);

    if (index8 & 1) 
    {
        *p     = (*p & 0xF0) | (value >> 8);
        *(++p) = value & 0xFF;
    } 
    else 
    {
        *(p++) = value >> 4;
        *p     = ((uint8_t)(value << 4)) | (*p & 0x0F);
    }
}

void TLC5940_SetAll(uint16_t value)
{
    uint8_t firstByte  = value >> 4;
    uint8_t secondByte = (value << 4) | (value >> 8);
    uint8_t thirdByte  = (uint8_t)value;
    
    uint8_t *p = tlc_GSData;
    while (p < tlc_GSData + NBR_TLC * 24) 
    {
        *p++ = firstByte;
        *p++ = secondByte;
        *p++ = thirdByte;
    }
}

/* *****************************************************************************
 End of File
 */
