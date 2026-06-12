//--------------------------------------------------------
// Mc32gestI2cSensor.C
//--------------------------------------------------------
// Gestion I2C pour la communication I2C
//	Description     :	Fonctions pour la communication en I2C
//
//	Auteur          : 	D. Rickenbach
//  Date            :   18.05.2020
//	Version         :	V0.5
//	Compilateur     :	XC32 V5.15 & Harmony 2_06
// Modifications    :
//
/*--------------------------------------------------------*/


#include "Mc32gestI2cEEPROM.h"
#include "Mc32_I2cUtilCCS.h"
#include "DefMenuGen.h"
#include "Mc32Delays.h"


#define EEPROM_ADDRESS_R 0b10101111
#define EEPROM_ADDRESS_W 0b10101110

// Initialisation de la communication I2C
void I2CEEPROM_Init(void)
{
   bool Fast = true;
   i2c_init( Fast );
} //end I2CEEPROM_Init

// Ecriture d'un byte
void I2CEEPROM_Write(void* pData,uint8_t Nbytes)
{
    uint8_t i,y;
    uint8_t x = 0;
    uint8_t PageCount;
    uint8_t* pByteData = pData;
    
    PageCount = ((Nbytes - 1) / 8) + 1;
    
    for(i = 0;i < PageCount;i++)
    {
        i2c_start();
        i2c_write(EEPROM_ADDRESS_W);
        i2c_write(i*8);
        for(y = 0; y < 8; y++)
        {
            if(x < (Nbytes))
            {
               i2c_write(pByteData[x]); 
            }     
            x++;
        }
        i2c_stop();
        delay_msCt(6);
    }
    
    
} // end I2CEEPROM_Write8


// Lecture d'un bloc
void I2CEEPROM_Read(void* DstData,uint8_t Nbytes)
{
    uint8_t i;
    uint8_t* pByteData = DstData;
    i2c_start();
    i2c_write(EEPROM_ADDRESS_W);
    i2c_write(0);
    i2c_reStart();
    i2c_write(EEPROM_ADDRESS_R);
    for(i = 0; i < Nbytes - 1; i++)
    {
        pByteData[i] = i2c_read(1);
    }
    i++;
    pByteData[i] = i2c_read(0);
    i2c_stop();
} // end I2CEEPROM_Read

   





 



