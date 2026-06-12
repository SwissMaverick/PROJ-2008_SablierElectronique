// Mc32Gest_SerComm.C
// fonction d'émission et de réception des message
// transmis en USB CDC
// Canevas TP4 SLO2 2015-2015


#include "app.h"
#include "Mc32gest_SerComm.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
// Fonction de reception  d'un  message
// Met à jour les paramètres du generateur a partir du message recu
// Format du message
//  !S=TF=2000A=10000O=+5000D=100W=0#
//  !S=PF=2000A=10000O=-5000D=100W=1#

bool GetMessage(int8_t *USBReadBuffer, S_ParamGen *pParam, bool *SaveTodo) {

    int match_idx = 0;
    int match_length = 0;

    re_t pattern;
    //const char* USBReadBuffer = "!S=TF=2000A=10000O=-5000W=1\0";

    pattern = re_compile("!S=\\w"); // Pattern pour le signal

    match_idx = re_matchp(pattern,(const char *) USBReadBuffer, &match_length);
    if (match_idx != -1) {
        // Sur une chaine !S=T
        // la lettre du signal correspont à la troisième case
        switch (USBReadBuffer[match_idx + 3]) {
            case 'T':
                pParam->Forme = SignalTriangle;
                break;
            case 'S':
                pParam->Forme = SignalSinus;
                break;
            case 'C':
                pParam->Forme = SignalCarre;
                break;
            case 'D':
                pParam->Forme = SignalDentDeScie;
                break;
            default:
                break;
        }

        pattern = re_compile("F=\\d"); // Pattern pour la frequence
        match_idx = re_matchp(pattern, (const char *)USBReadBuffer, &match_length);
        if (match_idx != -1) {
            pParam->Frequence = atoi((const char *)&USBReadBuffer[match_idx + 2]);
        }

        pattern = re_compile("A=\\d"); // Pattern pour l'amplitude
        match_idx = re_matchp(pattern, (const char *)USBReadBuffer, &match_length);
        if (match_idx != -1) {
            pParam->Amplitude = atoi((const char *)&USBReadBuffer[match_idx + 2]);
        }

        pattern = re_compile("O=[+-]\\d"); // Pattern pour l'offset
        match_idx = re_matchp(pattern, (const char *)USBReadBuffer, &match_length);
        if (match_idx != -1) {
            pParam->Offset = atoi((const char *)&USBReadBuffer[match_idx + 3]);
            if (USBReadBuffer[match_idx + 2] == '-') {
                pParam->Offset = -pParam->Offset;
            }
        }

        pattern = re_compile("W=\\d"); // Pattern pour l'offset
        match_idx = re_matchp(pattern, (const char *)USBReadBuffer, &match_length);
        if (match_idx != -1) {
            *SaveTodo = (bool)atoi((const char *)&USBReadBuffer[match_idx + 2]);
        }
        return true;
    }   
    return false;

} // GetMessage


// Fonction d'envoi d'un  message
// Rempli le tampon d'émission pour USB en fonction des paramètres du générateur
// Format du message
// !S=TF=2000A=10000O=+5000D=25WP=0#
// !S=TF=2000A=10000O=+5000D=25WP=1#    // ack sauvegarde

void SendMessage(int8_t *USBSendBuffer, S_ParamGen *pParam, bool Saved) {

    char Buffer[29];
    char car;
    char car2;
    
    switch(pParam->Forme)
    {
        case SignalCarre:
            car='C';
            break;
        case SignalDentDeScie:
            car='D';
            break;
        case SignalSinus:
            car='S';
            break;
        case SignalTriangle:
            car='T';
            break;
    }
    if(pParam->Offset >= 0)
    {
        car2 = '+';
    }
    else
    {
        car2 ='-';
    }
     
    sprintf(Buffer,"!S=%cF=%dA=%dO=%c%dWP=%d#\n",car,pParam->Frequence,pParam->Amplitude,car2,pParam->Offset,Saved);
    strcpy((char *)USBSendBuffer,Buffer);
    
    
} // SendMessage
