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
#include "app_hourglass.h"
#include "Hourglass_particules.h"
#include "system_definitions.h"

// *****************************************************************************
// *****************************************************************************
// Section: System Interrupt Vector Functions
// *****************************************************************************
// *****************************************************************************

 
void __ISR(_USB_1_VECTOR, ipl4AUTO) _IntHandlerUSBInstance0(void)
{
    DRV_USBFS_Tasks_ISR(sysObj.drvUSBObject);
}
void __ISR(_TIMER_1_VECTOR, ipl3AUTO) IntHandlerDrvTmrInstance0(void)
{
    static uint8_t ContTask = 0;
    PLIB_INT_SourceFlagClear(INT_ID_0,INT_SOURCE_TIMER_1);
     if(ContTask >= 8)
        {   
            ContTask = 0;
            APP_HOURGLASS_UpdateState(APP_HOURGLASS_STATE_SERVICE_TASKS);
        }
        else
        {
           ContTask ++;
        }
    
    DoDebounce (&BoutonBas, PORTGbits.RG12);
    DoDebounce (&BoutonHaut, PORTGbits.RG14);
    DoDebounce (&HMConfig, PORTGbits.RG13);
}
void __ISR(_TIMER_2_VECTOR, ipl1AUTO) IntHandlerDrvTmrInstance1(void)
{
PLIB_INT_SourceFlagClear(INT_ID_0,INT_SOURCE_TIMER_2);
    
    
    
    //ConfigIOOff();
    
    //eteindra matrice
    LATD = 0xFFFF;
    LATA = (PORTA & 0xFF00) | 0x00FF;
    LATB = (PORTB & 0x00FF) | 0xFF00;
    
    
    
    LATB = (PORTB & 0xFFF0) | ((((LCompteur & 0b0001) << 1) | ((LCompteur & 0b0010) >> 1) | ((LCompteur & 0b0100) << 1) | ((LCompteur & 0b1000) >> 1)));
    LATC = (PORTC & 0x0FFF) | (((LCompteur & 0b0001) | ((LCompteur & 0b0010) << 2) | ((LCompteur & 0b0100) >> 1) | ((LCompteur & 0b1000) >> 1)) << 12);
   
    //Matrice TOP
    LATD = LEDMatrix.Top[LCompteur];
    
    //Matrice BOT
    LATA = (PORTA & 0xFF00) | (LEDMatrix.Bot[LCompteur] & 0x00FF);
    LATB = (PORTB & 0x00FF) | ((LEDMatrix.Bot[LCompteur] & 0xFF00));
    
    
    
    
    
    ConfigIOOn();
    
    LCompteur ++;
    if(LCompteur >= 16)
    {
        LCompteur = 0;
    }
}

void __ISR(_TIMER_5_VECTOR, ipl2AUTO) IntHandlerDrvTmrInstance2(void)
{
    static uint16_t CompareTime = 1;
    static uint16_t AlarmCount = 0;
    static uint8_t ToggleMatrice = 0;
    PLIB_INT_SourceFlagClear(INT_ID_0,INT_SOURCE_TIMER_5);
    if((CompareTime >= TimeCount) && (TimeCount > 0))
    {
        if(AlarmSound == 0)
        {
            DropParticule(&LEDMatrix,SensM);
            if(EndParticules(&LEDMatrix,SensM) == 1)
            {
                if(StartSensM == SensM)
                {
                    AlarmSound = 1;
                    SensM = Stop;
                    BuzzerOn();
            
                }   
            }     
        }
        
        
        CompareTime = 1;
    }
    else
    {
        CompareTime ++;
    }
    if((AlarmSound == 1) && (AlarmCount < 46))
    {
        AlarmCount++;
        if(ToggleMatrice == 1)
        {
            SetFullMatrice(&LEDMatrix,Matrice_TOP,1);
            SetFullMatrice(&LEDMatrix,Matrice_BOT,1);
            ToggleMatrice = 0;
        }
        else
        {
            clearMatrice(&LEDMatrix,Matrice_TOP);
            clearMatrice(&LEDMatrix,Matrice_BOT);
            ToggleMatrice = 1;
        }
        
    }
    else
    {
        BuzzerOff();
        AlarmSound = 0;
        AlarmCount = 0;
        ToggleMatrice = 0;
    }
    
}
 /*******************************************************************************
 End of File
*/

/*******************************************************************************
 End of File
*/
