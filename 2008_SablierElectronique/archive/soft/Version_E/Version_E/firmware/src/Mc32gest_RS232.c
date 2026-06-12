// Mc32Gest_RS232.C
// Canevas manipulatio TP2 RS232 SLO2 2017-18
// Fonctions d'émission et de réception des message
// CHR 20.12.2016 ajout traitement int error
// CHR 22.12.2016 evolution des marquers observation int Usart
// SCA 03.01.2018 nettoyé réponse interrupt pour ne laisser que les 3 ifs

#include <xc.h>
#include <sys/attribs.h>
#include "system_definitions.h"
// Ajout CHR
#include <GenericTypeDefs.h>
#include "app.h"
#include "GesFifoTh32.h"
#include "Mc32gest_RS232.h"


typedef union {
        uint16_t val;
        struct {uint8_t lsb;
                uint8_t msb;} shl;
} U_manip16;


// Definition pour les messages
#define MESS_SIZE  5
// avec int8_t besoin -86 au lieu de 0xAA
#define STX_code  (-86)

// Structure décrivant le message
typedef struct {
    uint8_t Start;
    uint8_t  Heure;
    uint8_t  Minute;
} StruMess;


// Struct pour émission des messages
StruMess TxMess;
// Struct pour réception des messages
StruMess RxMess;

// Declaration des FIFO pour réception et émission
#define FIFO_RX_SIZE ( (4*MESS_SIZE) + 1)  // 4 messages
#define FIFO_TX_SIZE ( (4*MESS_SIZE) + 1)  // 4 messages

int8_t fifoRX[FIFO_RX_SIZE];
// Declaration du descripteur du FIFO de réception
S_fifo descrFifoRX;


int8_t fifoTX[FIFO_TX_SIZE];
// Declaration du descripteur du FIFO d'émission
S_fifo descrFifoTX;


// Initialisation de la communication sérielle
void InitFifoComm(void)
{    
    // Initialisation du fifo de réception
    InitFifo ( &descrFifoRX, FIFO_RX_SIZE, fifoRX, 0 );
    // Initialisation du fifo d'émission
    InitFifo ( &descrFifoTX, FIFO_TX_SIZE, fifoTX, 0 );
    
    // Init RTS 
    RS232_RTSStateSet(1);   // interdit émission par l'autre
   
} // InitComm
/*****************************************************************************
* cette fonction gere la reception des trame UART                            *
* elle retourne par pointeur les valeur de la vitesse et de l'angle          *
* Valeur de retour 0  = pas de message recu donc local (data non modifi?)    *
* Valeur de retour 1  = message recu donc en remote (data mis ? jour)        *
* Valeur de retour 2  = erreur de CRC (data non modifi?)                     *
* Valeur de retour 3  = message tronquer (data non modifi?)                  *
*****************************************************************************/
/*int GetMessage(char *pData)
{

    int32_t NbCharToRead = 0; // variable pour avoir le nombre de caractere dans le FIFO
    static int commStatus = 0;// variable de retoure qui indique l'etat de la reception
    static int8_t NbMessNull = 0;//compteur indiquant le nombre de cycle sans message 
    
    NbCharToRead = GetReadSize(&descrFifoRX);// lecture du nombre de caractere dans le FIFO
    if(NbCharToRead >= MESS_SIZE) //Si il y a un message dans le FIFO
    {
        GetCharFromFifo(&descrFifoRX, (int8_t*)&(RxMess.Start));//on regarde le premier caractere
        if(RxMess.Start == 0xAA)// si il correspond a la valeur defini pour le premier caractere
        {
            
            //on lis la suite du message
            GetCharFromFifo(&descrFifoRX, &RxMess.Heure);
            GetCharFromFifo(&descrFifoRX, &RxMess.Minute);
           
                //on actualise la structure avec la vitesse
                pData->SpeedSetting = RxMess.Speed;
                pData->absSpeed = abs(pData->SpeedSetting);
                        
                //on actualise la structure avec l'angle
                pData->AngleSetting = RxMess.Angle;
                pData->absAngle = abs(pData->AngleSetting);
                
                commStatus = 1;//tramme recu et juste
                NbMessNull = 0; //le compteur sans message est reset a 0 car nous avons recu un message correcte
            }
            else //Si le CRC est incorecte
            {
                commStatus = 2;//erreur de CRC
            }
            
        }
        else //si la première valeur n'est pas 0xAA il y a un message tonquer
        {
            commStatus = 3;//erreur de tronquage
        }
    }
    else// si il n'y a pas de message
    {
        NbMessNull++;//on incremente le compteur cycle sans message
    }
    
    if(NbMessNull >= 10)// si il y a pas de message durant 10 cycle
    {
        commStatus = 0; //on indique qu'il n'y a pas de communication
        NbMessNull = 0; // on reset le compteur
    }

    // Gestion controle de flux de la réception
    if(GetWriteSpace ( &descrFifoRX) >= (2*MESS_SIZE)) {
        // autorise émission par l'autre
        RS232_RTS = 0;
    }
    return commStatus;
} // GetMessage*/


// Fonction d'envoi des messages, appel cyclique
/*void SendMessage(char *pData)
{
    int8_t FifoLevel;
    
    //Trame d'envois
    TxMess.Start = 0xAA;         			// Start vaut 0xAA.  
    TxMess.Heure= pData->SpeedSetting;     // Speed
    TxMess.Minute = pData->AngleSetting;     // Angle
    

    
    TxMess.MsbCrc = CRC16 >> 8;            
    TxMess.LsbCrc = CRC16 & 0xFF;          
    
    //Regarder la place dans le fifo
    if (GetWriteSpace(&descrFifoTX) >= 5)  
    {
            PutCharInFifo(&descrFifoTX, TxMess.Start);
            PutCharInFifo(&descrFifoTX, TxMess.Speed);
            PutCharInFifo(&descrFifoTX, TxMess.Angle);
            PutCharInFifo(&descrFifoTX, TxMess.MsbCrc);
            PutCharInFifo(&descrFifoTX, TxMess.LsbCrc);
    }   
            
    // Gestion du controle de flux
    // si on a un caractère à envoyer et que CTS = 0
    FifoLevel = GetReadSize(&descrFifoTX);
    if ((RS232_CTS == 0) && (FifoLevel > 0))
    {
        // Autorise int émission    
        PLIB_INT_SourceEnable(INT_ID_0, INT_SOURCE_USART_1_TRANSMIT);
    }
}*/


// Interruption USART1
// !!!!!!!!
// Attention ne pas oublier de supprimer la réponse générée dans system_interrupt
// !!!!!!!!

void __ISR(_UART_1_VECTOR, ipl5AUTO) _IntHandlerDrvUsartInstance0(void)
{
    USART_ERROR UsartStatus;    
    int8_t c;
    
    // Is this an Error interrupt ?
    if ( PLIB_INT_SourceFlagGet(INT_ID_0, INT_SOURCE_USART_1_ERROR) &&
                 PLIB_INT_SourceIsEnabled(INT_ID_0, INT_SOURCE_USART_1_ERROR) ) {
        /* Clear pending interrupt */
        PLIB_INT_SourceFlagClear(INT_ID_0, INT_SOURCE_USART_1_ERROR);
        // Traitement de l'erreur à la réception.
    }
   

    // Is this an RX interrupt ?
    if ( PLIB_INT_SourceFlagGet(INT_ID_0, INT_SOURCE_USART_1_RECEIVE) &&
                 PLIB_INT_SourceIsEnabled(INT_ID_0, INT_SOURCE_USART_1_RECEIVE) ) {

        // Oui Test si erreur parit? ou overrun
        UsartStatus = PLIB_USART_ErrorsGet(USART_ID_1);

        if ( (UsartStatus & (USART_ERROR_PARITY |
                             USART_ERROR_FRAMING | USART_ERROR_RECEIVER_OVERRUN)) == 0) {

            // Traitement RX à faire ICI
            // Lecture des caractères depuis le buffer HW -> fifo SW
			//  (pour savoir s'il y a une data dans le buffer HW RX : PLIB_USART_ReceiverDataIsAvailable())
			//  (Lecture via fonction PLIB_USART_ReceiverByteReceive())
            
            //Tant que nous pouvons lire un caractere
            while (PLIB_USART_ReceiverDataIsAvailable(USART_ID_1))
            {
                c = PLIB_USART_ReceiverByteReceive(USART_ID_1);//lire un caractere
                PutCharInFifo ( &descrFifoRX, c);//le mettre dans le fifo
            }
            
                         
            // buffer is empty, clear interrupt flag
            PLIB_INT_SourceFlagClear(INT_ID_0, INT_SOURCE_USART_1_RECEIVE);
        } else {
            // Suppression des erreurs
            // La lecture des erreurs les efface sauf pour overrun
            if ( (UsartStatus & USART_ERROR_RECEIVER_OVERRUN) == USART_ERROR_RECEIVER_OVERRUN) {
                   PLIB_USART_ReceiverOverrunErrorClear(USART_ID_1);
            }
        }


        
        // Traitement controle de flux reception à faire ICI
        // Gerer sortie RS232_RTS en fonction de place dispo dans fifo reception
        // ...

        
    } // end if RX

    
    // Is this an TX interrupt ?
    if ( PLIB_INT_SourceFlagGet(INT_ID_0, INT_SOURCE_USART_1_TRANSMIT) &&
                 PLIB_INT_SourceIsEnabled(INT_ID_0, INT_SOURCE_USART_1_TRANSMIT) ) {

        // Traitement TX à faire ICI
        // Envoi des caractères depuis le fifo SW -> buffer HW
            
        // Avant d'émettre, on vérifie 3 conditions :
        //  Si CTS = 0 autorisation d'émettre (entrée RS232_CTS)
        //  S'il y a un caratères à émettre dans le fifo
        //  S'il y a de la place dans le buffer d'émission (PLIB_USART_TransmitterBufferIsFull)
        //   (envoi avec PLIB_USART_TransmitterByteSend())
       
        if ((RS232_CTSStateGet() == 0) && (PLIB_USART_TransmitterBufferIsFull >= 0))
        {
            /*PLIB_USART_TransmitterByteSend(USART_ID_1, TxMess.Start);
            PLIB_USART_TransmitterByteSend(USART_ID_1, TxMess.Speed);  
            PLIB_USART_TransmitterByteSend(USART_ID_1, TxMess.Angle);  
            PLIB_USART_TransmitterByteSend(USART_ID_1, TxMess.MsbCrc);  
            PLIB_USART_TransmitterByteSend(USART_ID_1, TxMess.LsbCrc);*/
        }
       
	   
		
        // disable TX interrupt (pour éviter une interrupt. inutile si plus rien à transmettre)
        PLIB_INT_SourceDisable(INT_ID_0, INT_SOURCE_USART_1_TRANSMIT);
        
        // Clear the TX interrupt Flag (Seulement apres TX) 
        PLIB_INT_SourceFlagClear(INT_ID_0, INT_SOURCE_USART_1_TRANSMIT);
    }

 }




