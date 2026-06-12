#ifndef Mc32Gest_RS232_H
#define Mc32Gest_RS232_H
/*--------------------------------------------------------*/
// Mc32Gest_RS232.h
/*--------------------------------------------------------*/
//	Description :	emission et reception spécialisée
//			        pour TP2 2016-2017
//
//	Auteur 		: 	C. HUBER
//
//	Version		:	V1.3
//	Compilateur	:	XC32 V1.42 + Harmony 1.08
//
/*--------------------------------------------------------*/

#include <stdint.h>
#include "GesFifoTh32.h"

/*--------------------------------------------------------*/
// Définition des fonctions prototypes
/*--------------------------------------------------------*/

// Structure décrivant le message
typedef struct {
    uint8_t Start;
    int8_t  Heure;
    int8_t  Minute;
} StruMess;


// prototypes des fonctions
void InitFifoComm(void);
int GetMessage(StruMess *pData);
void SendMessage(StruMess *pData);

// Descripteur des fifos
extern S_fifo descrFifoRX;
extern S_fifo descrFifoTX;

#endif
