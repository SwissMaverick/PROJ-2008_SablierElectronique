#ifndef Mc32IAMSPIUtil_H
#define Mc32IAMSPIUtil_H
/*--------------------------------------------------------*/
// Mc32GestSpiDac.h
/*--------------------------------------------------------*/
//	Description :	Gestion du IAM-20680
//
//	Auteur 		: 	Carlos Antonio Reyes Peña
/*--------------------------------------------------------*/



#include <stdint.h>

// Prototypes des fonctions
void SPI_InitIAM(void);
void Axesread(int16_t *ValAxes);


#endif
