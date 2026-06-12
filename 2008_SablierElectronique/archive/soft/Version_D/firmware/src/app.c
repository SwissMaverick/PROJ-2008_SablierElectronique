/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.

  Modifié par Carlos Antonio Reyes Peña
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

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

#include "app.h"
#include "Mc32IAMSPIUtil.h"
#include "Mc32Debounce.h"
#include "Hourglass_particules.h"
#include "Hourglass_chars.h"
#include "Invn/Devices/Drivers/Iam20680/Iam20680Driver_HL.h"
#include "Invn/Devices/Drivers/Iam20680/Iam20680Defs.h"
#include <math.h>
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/
//uint8_t IAMVals[8];

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;

    
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */
int16_t IAMVals[6] = {0,0,0,0,0,0};//Tableau pour placer les axes de la centrale inertielle
uint8_t countP = 0;//conteur des particules

void APP_Tasks ( void )
{
    /* Check the application's current state. */
    static ConfigHM EtatMatrice = Started;
    static uint16_t Minutes = 1;
    static uint16_t Heures = 0;
    static uint8_t CountClignote = 0;
    static uint8_t ApresAlarm = 0; 
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            
            //Fonction servant � �teindre les leds des matrices
            clearMatrice(&LEDMatrix,Matrice_TOP);
            clearMatrice(&LEDMatrix,Matrice_BOT);

            //Remplir les matrices avec un nombre de particules determin�
            fillParticules(&LEDMatrix,Matrice_TOP,180,ToptoBot);
            fillParticules(&LEDMatrix,Matrice_BOT,0,ToptoBot);
            StartSensM = ToptoBot;
            TimeCount = Minutes + (Heures*60); //TimeCount est la valeur utilisée dans le timer
            
            //initialisation de l'anti rebond pour les boutons
            DebounceInit(&BoutonHaut);
            DebounceInit(&BoutonBas);
            DebounceInit(&HMConfig);
            
            //DRV_USART0_Initialize();
            
            DRV_TMR1_Start();//start du timer 1
            
            
            DRV_TMR0_Initialize();
            DRV_TMR0_Start();

            MatriceONStateSet(0);   //allumage des multiplexeurs
            BMatriceONStateSet(0);
 
            
            
            SPI_InitIAM();//initialisation du SPI pour le IAM
            
            //inv_iam20680_device_reset();//reset du IAM
            
            DRV_TMR0_Start();//start du timer 0
            DRV_TMR2_Start();//start du timer 2
            
            /*inv_iam20680_init();
            inv_iam20680_enable_accel();
            inv_iam20680_enable_gyro();*/

            appData.state = APP_STATE_SERVICE_TASKS;
            break;
        }
        case APP_STATE_WAIT : 
        {
              // nothing to do
            break; 
        }
       

        case APP_STATE_SERVICE_TASKS:
        {
            
            if(AlarmSound == 0)
            {
                if(ApresAlarm == 1 && AlarmSound == 0)
                {
                    EtatMatrice = ConfigM;
                    ApresAlarm = 0;
                }
                Axesread(IAMVals);//lecture des 3 axes de l'accelerometre
                if((abs(IAMVals[1]) > (abs(IAMVals[2])/4) || (IAMVals[0] > abs(IAMVals[2])/4)))//si les axes X ou Y sont plus grands que la valeur
                //de l'axe z divisée par 4
                {
                    if(abs(IAMVals[1]) > abs(IAMVals[0]))//si l'axe y est plus grand que l'axe x
                    {
                        if(IAMVals[1] > 0)//si l'axe y est positif
                        {
                            SensM = ToptoBot;
                        }
                        else
                        {
                            SensM = BottoTop;
                        }
                    }
                    else
                    {
                        if(IAMVals[0] > 0)//si l'axe x est positif 
                        {
                            SensM = LefttoRight;
                        }
                        else
                        {
                            SensM = RighttoLeft;
                        }
                    }
                }
                else
                {
                    SensM = Stop;// si la valeur de l'axe z divisée par 4 est plus grande que la valeur des axes x et y
                }
                if(DebounceIsReleased(&HMConfig)) // Le bouton est un normal ON
                {
                    DebounceClearReleased(&HMConfig);// nous effaçons l'etat de l'appui
                    if(EtatMatrice >= Started)//changement de l'etat de la matrice
                    {
                        EtatMatrice = ConfigM;//configuration des minutes
                        DRV_TMR2_Stop();//Stop timer 2
                        clearMatrice(&LEDMatrix,Matrice_TOP);
                        clearMatrice(&LEDMatrix,Matrice_BOT);
                    }
                    else if (EtatMatrice == ConfigM)
                    {
                        DRV_TMR2_Stop();//Stop timer 2
                        EtatMatrice = ConfigH;//configuration des heures
                        clearMatrice(&LEDMatrix,Matrice_TOP);
                        clearMatrice(&LEDMatrix,Matrice_BOT);
                    }
                    else
                    {
                        EtatMatrice = Started;//demarrer le temps et interactions des particules
                        clearMatrice(&LEDMatrix,Matrice_TOP);
                        clearMatrice(&LEDMatrix,Matrice_BOT);

                        fillParticules(&LEDMatrix,Matrice_TOP,180,SensM);
                        fillParticules(&LEDMatrix,Matrice_BOT,0,SensM);
                        StartSensM = SensM;
                        TimeCount = Minutes + (Heures*60);
                        DRV_TMR2_Start();//Stop timer 2


                    }
                }
                switch(EtatMatrice)//selon l'état de la matrice
                {
                    case Started :
                        UpdateParticules(&LEDMatrix,Matrice_TOP,SensM);//actualisation des particules matrice top
                        UpdateParticules(&LEDMatrix,Matrice_BOT,SensM);//actualisation des particules matrice bot
                        break;
                    case ConfigM :
                        if(DebounceIsReleased(&BoutonHaut)) // Le bouton est un normal ON
                        {//bouton haut appuyé, incremantation des minutes
                            DebounceClearReleased(&BoutonHaut);
                            if(Minutes < 60)//limite minutes = 60
                            {
                                Minutes ++;
                            }

                        }
                        if(DebounceIsReleased(&BoutonBas)) // Le bouton est un normal ON
                        {//bouton bas appuyé, decrementation des minutes
                            DebounceClearReleased(&BoutonBas);
                            if(Minutes > 0)//limite = 0
                            {
                                Minutes --;
                            }
                        }
                        if(CountClignote < 2)//eteint pendant 2/20 du temps allumé
                        {

                            clearMatrice(&LEDMatrix,Matrice_BOT);
                            CountClignote++;

                        }
                        else if (CountClignote < 20)//alumé
                        {
                            AfficheMinutes(&LEDMatrix,Matrice_BOT,Minutes);
                            CountClignote++;
                        }
                        else
                        {
                            CountClignote = 0; 
                        }
                        AfficheHeures(&LEDMatrix,Matrice_TOP,Heures);// les heures ne clignotent pas ici
                        break;
                    case ConfigH :
                        if(DebounceIsReleased(&BoutonHaut) ) // Le bouton est un normal ON
                        {//bouton haut appuyé, incremantation des heures
                            DebounceClearReleased(&BoutonHaut);
                            if(Heures < 9)
                            {
                                Heures ++;
                            }

                        }
                        if(DebounceIsReleased(&BoutonBas)) // Le bouton est un normal ON
                        {//bouton bas appuyé, decrementation des heures
                            DebounceClearReleased(&BoutonBas);
                            if(Heures > 0)
                            {
                                Heures --;
                            }
                        }
                        if(CountClignote < 2)//eteint pendant 2/20 du temps allumé
                        {

                            clearMatrice(&LEDMatrix,Matrice_TOP);
                            CountClignote++;

                        }
                        else if (CountClignote < 20)//alumé
                        {
                            AfficheHeures(&LEDMatrix,Matrice_TOP,Heures);
                            CountClignote++;
                        }
                        else
                        {
                            CountClignote = 0;
                        }
                        AfficheMinutes(&LEDMatrix,Matrice_BOT,Minutes);// les minutes ne clignotent pas ici
                        break;
                }
            }
            else
            {
                ApresAlarm = 1;
                if(DebounceIsReleased(&HMConfig)) // Le bouton est un normal ON
                {
                    DebounceClearReleased(&HMConfig);// nous effaçons l'etat de l'appui
                    AlarmSound = 0;
                }
            }
            
            appData.state = APP_STATE_WAIT;
            break;
        }

        /* TODO: implement your application state machine.*/
        

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

void APP_UpdateState ( APP_STATES NewState )
{
    appData.state = NewState;
}


/*void Multiplexeur(uint8_t valeur )
{
    
}*/

/*******************************************************************************
 End of File
 */
