#ifndef Mc32GestI2CEEPROM_H
#define Mc32GestI2CEEPROM_H
/*--------------------------------------------------------*/
// Mc32GestI2cSensor.h
/*--------------------------------------------------------*/
//	Description :	Gestion par I2C des capteur
//	Auteur 		: 	D. Rickenbach
//	Version		:	V0.5    18.05.2020
//	Compilateur	:	XC32 V5.15 & Harmony 2_06
//
/*--------------------------------------------------------*/


#include <stdint.h>


// *****************************************************************************
// *****************************************************************************
// Section: Defines
// *****************************************************************************
// *****************************************************************************
// Définition pour le capteur de qualité d'air

// *****************************************************************************

// prototypes des fonctions
void I2CEEPROM_Init(void);
void I2CEEPROM_Write(void* Data,uint8_t Nbytes);
void I2CEEPROM_Read(void* Data,uint8_t Nbytes);


#endif
