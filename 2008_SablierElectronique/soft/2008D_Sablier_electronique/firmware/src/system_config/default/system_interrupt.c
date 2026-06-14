/*******************************************************************************
 System Interrupts File

  File Name:
    system_interrupt.c

  Summary:
    Raw ISR definitions.

  Description:
    This file contains a definitions of the raw ISRs required to support the
    interrupt sub-system.

  Summary:
    This file contains source code for the interrupt vector functions in the
    system.

  Description:
    This file contains source code for the interrupt vector functions in the
    system.  It implements the system and part specific vector "stub" functions
    from which the individual "Tasks" functions are called for any modules
    executing interrupt-driven in the MPLAB Harmony system.

  Remarks:
    This file requires access to the systemObjects global data structure that
    contains the object handles to all MPLAB Harmony module objects executing
    interrupt-driven in the system.  These handles are passed into the individual
    module "Tasks" functions to identify the instance of the module to maintain.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2011-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "system/common/sys_common.h"
#include "app.h"
#include "../src/Mc32_TLC_Utility.h"
#include "system_definitions.h"
#include "Hourglass_particules.h"

// *****************************************************************************
// *****************************************************************************
// Section: System Interrupt Vector Functions
// *****************************************************************************
// *****************************************************************************

 

// timer 1 : 5 ms / pour l'app + debounce
void __ISR(_TIMER_1_VECTOR, ipl3AUTO) IntHandlerDrvTmrInstance0(void)
{
    PLIB_INT_SourceFlagClear(INT_ID_0,INT_SOURCE_TIMER_1);
    
    APP_UpdateState(APP_STATE_SERVICE_TASKS);
}

// Timer 2 : 1MHz pour l'envoi du SPI
void __ISR(_TIMER_2_VECTOR, ipl4AUTO) IntHandlerDrvTmrInstance1(void)
{
    PLIB_INT_SourceFlagClear(INT_ID_0,INT_SOURCE_TIMER_2);
}

void __ISR(_TIMER_3_VECTOR, ipl2AUTO) IntHandlerDrvTmrInstance2(void)
{
    PLIB_INT_SourceFlagClear(INT_ID_0,INT_SOURCE_TIMER_3);
//    static uint16_t Count = 1;
//    static uint16_t AlarmCount = 0;
//    static uint8_t ToggleMatrice = 0;
//    PLIB_INT_SourceFlagClear(INT_ID_0,INT_SOURCE_TIMER_5);
//    if(Count == TimeCount)//TimeCount d√©termine les minutes.
//    {
//        if(AlarmSound == 0)
//        {
//            DropParticule(&LEDMatrix,SensM);
//            if(EndParticules(&LEDMatrix,SensM) == 1)//Plus de particules dans la matrice?
//            {
//                if(StartSensM == SensM)
//                {
//                    AlarmSound = 1;
//                    SensM = Stop;
//                    BuzzerOn();
//            
//                }   
//            }     
//        }
//    }
//        
//
//    if((AlarmSound == 1) && (AlarmCount < 46))
//    {
//        AlarmCount++;
//        if(ToggleMatrice == 1)
//        {
//            SetFullMatrice(&LEDMatrix,Matrice_TOP,1);
//            SetFullMatrice(&LEDMatrix,Matrice_BOT,1);
//            ToggleMatrice = 0;
//        }
//        else
//        {
//            clearMatrice(&LEDMatrix,Matrice_TOP);
//            clearMatrice(&LEDMatrix,Matrice_BOT);
//            ToggleMatrice = 1;
//        }
//        
//    }
//    else
//    {
//        BuzzerOff();
//        AlarmSound = 0;
//        AlarmCount = 0;
//        ToggleMatrice = 0;
//    }
    
}

//Timer 4 : 2 kHz pour le scan des lignes
void __ISR(_TIMER_4_VECTOR, ipl1AUTO) IntHandlerDrvTmrInstance3(void)
{
    PLIB_INT_SourceFlagClear(INT_ID_0,INT_SOURCE_TIMER_4);
    

    //eteindre matrice A
//        LATD = 0xFFFF;  //ttes les colonnes OFF (commandes des MOS P matrice A ‡ 1)


    //eteindre matrice B
    //ttes les colonnes OFF (commandes des MOS P matrice B ‡ 1)
//        LATA = (PORTA & 0xFF00) | 0x00FF;    
//        LATB = (PORTB & 0x00FF) | 0xFF00;
    // Il faudra dire au driver_B d'eteindre toutes les colonnes
    // ...

    //Sert au demultiplexage
//        LATB = (PORTB & 0xFFF0) | ((((LCompteur & 0b0001) << 1) | ((LCompteur & 0b0010) >> 1) | ((LCompteur & 0b0100) << 1) | ((LCompteur & 0b1000) >> 1)));
//        LATC = (PORTC & 0x0FFF) | (((LCompteur & 0b0001) | ((LCompteur & 0b0010) << 2) | ((LCompteur & 0b0100) >> 1) | ((LCompteur & 0b1000) >> 1)) << 12);
    // On controle une suite sur les bits 10, 11, 12, 13
    // Pour les lignes de la matrice A
    //LATB = (LATB & 0xFFC3) | ((LCompteur & 0b0001) << 5) | ((LCompteur & 0b0010) << 3) | ((LCompteur & 0b0100) << 1) | ((LCompteur & 0b1000) >> 1);
    

    // On controle une suite sur les bits 4, 5, 6, 7
    // Pour les lignes de la matrice B
    //LATB = (LATB & 0xF0FF) | ((LCompteur & 0x0F) << 8);

    /*
    // Matrice A : AL1=S0, AL2=S1, AL3=S2, AL4=S3
    // Matrice A
    if ((LCompteur & 0b0001) == 1) // S0
    {
        AL1On();
    }
    else
    {
        AL1Off();
    }

    if ((LCompteur & 0b0010) == 1) // S1
    {
        AL2On();
    }
    else
    {
        AL2Off();
    }

    if ((LCompteur & 0b0100) == 1) // S2
    {
        AL3On();
    }
    else
    {
        AL3Off();
    }

    if ((LCompteur & 0b1000) == 1) // S3
    {
        AL4On();
    }
    else
    {
        AL4Off();
    }

    // Matrice B
    if ((LCompteur & 0b0001) == 1) // S0
    {
        BL1On();
    }
    else
    {
        BL1Off();
    }

    if ((LCompteur & 0b0010) == 1) // S1
    {
        BL2On();
    }
    else
    {
        BL2Off();
    }

    if ((LCompteur & 0b0100) == 1) // S2
    {
        BL3On();
    }
    else
    {
        BL3Off();
    }

    if ((LCompteur & 0b1000) == 1) // S3
    {
        BL4On();
    }
    else
    {
        BL4Off();
    }*/
    

    // Commande de l'allumage de la colonne de la matrice A
    // correspondante via le driver A
//        LATD = LEDMatrix.Top[LCompteur];

    // Commande de l'allumage de la colonne de la matrice B
    // correspondante via le driver B
//        LATA = (PORTA & 0xFF00) | (LEDMatrix.Bot[LCompteur] & 0x00FF);
//        LATB = (PORTB & 0x00FF) | ((LEDMatrix.Bot[LCompteur] & 0xFF00));


    // Logique inversee pour ces DEMUX car actifs BAS
//        ConfigIOOn();
    
    LCompteur ++;
    if(LCompteur >= 16)
    {
        LCompteur = 0;
    }
    
}

void __ISR(_SPI_2_VECTOR, ipl1AUTO) _IntHandlerSPIInstance0(void)
{
    DRV_SPI_Tasks(sysObj.spiObjectIdx0);
}

 /*******************************************************************************
 End of File
*/
