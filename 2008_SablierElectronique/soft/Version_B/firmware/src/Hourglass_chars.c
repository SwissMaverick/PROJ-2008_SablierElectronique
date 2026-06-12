/* ************************************************************************** */
/** Descriptive File Name
  
  @Autor
    Carlos Antonio Reyes Pe�a
 
  @File Name
    Hourglass_chars.c

  @Description

  Ce code nous permet d'afficher les heures et les minutes dans la matrice à leds 16x16.
  Il y a aussi une fonction de upscale de 8bit à 16bits.
    
 */
/* ************************************************************************** */


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

#include "app.h"
#include "Hourglass_chars.h"

/* Tableau constant qui contient les dessins numeriques tournées à 45 dégrés 
   afin d'afficher les chiffres correctement sur une matrice 8x8 tournée à 45 degrés*/


const uint8_t Nombres[][8] = {
{
  0b11110011, //caractere 0
  0b11101101,
  0b11011110,
  0b10111110,
  0b01111101,
  0b01111011,
  0b10110111,
  0b11001111
},{
  0b11111111,//caractere 1
  0b11111101,
  0b11111001,
  0b11110101,
  0b11101111,
  0b01011111,
  0b10111111,
  0b11011111
},{
  0b11100011,//caractere 2
  0b11011101,
  0b11011101,
  0b11011111,
  0b11011111,
  0b01011111,
  0b10011111,
  0b11011111
},{
  0b11110011,//caractere 3
  0b11101101,
  0b11101110,
  0b10001111,
  0b01110111,
  0b01111111,
  0b10111111,
  0b11011111
},{
  0b11111011,//caractere 4
  0b11110111,
  0b11101110,
  0b11011101,
  0b10101011,
  0b01110111,
  0b11111111,
  0b11111111
},{
  0b11111011,//caractere 5
  0b11111101,
  0b11001110,
  0b10110101,
  0b01111011,
  0b01111111,
  0b10111111,
  0b11011111
},{
  0b11111011,//caractere 6
  0b11111101,
  0b11111101,
  0b10011101,
  0b01101101,
  0b01110011,
  0b10110111,
  0b11001111
},{
  0b11110111,//caractere 7
  0b11111011,
  0b11101101,
  0b11111110,
  0b11011101,
  0b11111111,
  0b10111111,
  0b11111111
},{
  0b11110011,//caractere 8
  0b11101101,
  0b11101110,
  0b10001110,
  0b01110001,
  0b01110111,
  0b10110111,
  0b11001111
},{
  0b11110011,//caractere 9
  0b11101101,
  0b11011110,
  0b10011110,
  0b01101101,
  0b01110011,
  0b10111111,
  0b11011111
},{
    0b11110111,//caractere H
    0b11100111,
    0b11010111,
    0b10110000,
    0b01111101,
    0b11111011,
    0b11110111,
    0b11101111
}

};

/** 
  @Function
    Upscale8to16(uint16_t Val)

  @Summary
    Fonction qui permet d'upscale une valeur 8 bit à 16bits. La résolution reste inchangée.

  @Description
    uint16_t Valeur 8 bit à upscale
  @Returns
    rien

  */


uint16_t Upscale8to16(uint16_t Val)
{
    uint16_t Upscaled;
    
    Upscaled = (Val & 1) | ((Val & 1)<<1) | ((Val & 2) <<1) | ((Val & 2)<<2) |  //decalage + remplisage entre deux de chaque bit...
            ((
            Val & 4) <<2) | ((Val & 4)<<3) | ((Val & 8) <<3) | ((Val & 8)<<4) 
            | ((Val & 16) <<4) | ((Val & 16)<<5) | ((Val & 32) <<5) 
            | ((Val & 32)<<6) | ((Val & 64) <<6) | ((Val & 64)<<7) 
            | ((Val & 128) <<7) | ((Val & 128)<<8);

    return Upscaled;
}

/** 
  @Function
    void AfficheMinutes(Matrix* Matrice, Matrice_num WhichMatrix , int Valmin) 

  @Summary
    Fonction qui permet d'afficher les minutes dans une une des deux matrices, top ou bot.

  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser   
    int Valmin : valeur en minutes à afficher.
  @Returns
    rien

  */


void AfficheMinutes(Matrix* Matrice, Matrice_num WhichMatrix , int Valmin) 
{
    //si les minutes à afficher sont plus grands que 60, enlever chaque heure dedans
    Valmin = Valmin - (Valmin/60)*60; // 80 minutes => 20minutes
    int Dizaine = Valmin/10-1;
    int Unite = Valmin - ((Valmin/10)*10);
    uint8_t i;
    switch(WhichMatrix)
    {
        case Matrice_TOP :
            for(i = 8; i < 16; i++) //nous avons 8 matrices 8x8 à l'interieur de notre matrice 16x16. 
            {//Nous utilisons celle de gauche et de droite
                Matrice->Top[i] = (Matrice->Top[i] & 0xff00) | (Nombres[Dizaine][i]);//celle de gauche
            }
            for(i = 0; i < 8; i++)
            {
                Matrice->Top[i] = (Matrice->Top[i] & 0x00ff) | Nombres[Unite][i]<<8;//celle de droite
            }
            break;
        case Matrice_BOT : //la même chose mais pour la matrice du bot
            for(i = 8; i < 16; i++)
            {
                Matrice->Bot[i] = (Matrice->Bot[i] & 0xff00) | (Nombres[Dizaine][i]);
            }
            for(i = 0; i < 8; i++)
            {
                Matrice->Bot[i] = (Matrice->Bot[i] & 0x00ff) | Nombres[Unite][i]<<8;
            }
            break;
    }
    
    
}


/** 
  @Function
    void AfficheHeures(Matrix* Matrice, Matrice_num WhichMatrix , int ValHeure)

  @Summary
    Fonction qui permet d'afficher les heures sur l'une des deux matrices. top ou bot.

  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser   
    int ValHeure : valeur en heures à afficher.
  @Returns
    rien

  */

void AfficheHeures(Matrix* Matrice, Matrice_num WhichMatrix , int ValHeure)
{
    
    uint8_t i;
    uint8_t z;
    switch(WhichMatrix)
    {
        case Matrice_TOP :
            z = 0;
            for(i = 0; i < 8; i++)
            {
                //upscale des valeurs 8 bits sur l'affichage 16bit.
                Matrice->Top[z] = Upscale8to16(Nombres[ValHeure][i]);
                z++;
                // comme la valeur est upscalée, il faut l'afficher sur deux lignes
                Matrice->Top[z] = Upscale8to16(Nombres[ValHeure][i]);
                z++;
            }
            break;
        case Matrice_BOT : //la même chose mais pour la matrice bot
            z = 0;
            for(i = 0; i < 8; i++)
            {
                Matrice->Bot[z] = Upscale8to16(Nombres[ValHeure][i]);
                z++;
                Matrice->Bot[z] = Upscale8to16(Nombres[ValHeure][i]);
                z++;
            }
            break;
    }
    
    
}

/* *****************************************************************************
 End of File
 */
