/* ************************************************************************** */
/** Descriptive File Name
  
  @Autor
    Carlos Antonio Reyes Pe�a
 
  @File Name
    Hourglass_particules.c

  @Summary
    Le code utilise a eté inspiré du code :
 *  https://github.com/fbrnc/Arduino_Hourglass
 * 
 *  de Fabrizio Branca
 * 
 *  Le code n'a pas été copié. Mais il m'a aidé dans la reflexion de mon code.

  @Description
    Ce fichier contient des fonctions variées pour la gestion des particules
 *  dans une matrice led 16x16. Il est possible d'avoir une trés bonne 
 *  interaction des particules avec ce code. Neanmoins, L'acceleration des
 *  particules n'est pas gerée dans ce code. Il est possible d'avoir une 
 *  acceleration apparante en gestionnent le sens de la matrice.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "app.h"
#include "Hourglass_particules.h"



/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */
/* ************************************************************************** */




/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */
/* ************************************************************************** */

/** 
  @Function
    void fillParticules(Matrix* Matrice, Matrice_num WhichMatrix, int Nparticules, Gravity Sens)

  @Summary
    Fonction qui permet de remplir la matrice avec un nombre de particules determiné

  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser
    int Nparticules : Nombre des particules que l'on veut avoir dans la matrice
    Gravity Sens : Sens de la matrice(ToptoBot,BottoTop,RighttoLeft,LefttoRight)

  @Returns
    rien

  */


void fillParticules(Matrix* Matrice, Matrice_num WhichMatrix, int Nparticules, Gravity Sens)
{
    int pcount = 0;
    int x = 15;
    int y = 15;
    int count;
    int xdec;
    int ydec;
    if(Sens == Stop) // Dans le cas ou le sablier est couché. afin d'éviter qu'il n'y ait aucune particule dans le sablier.
    {
        Sens = ToptoBot;
    }
    
    if(pcount < Nparticules) //mise à jours de la particule dans la position XY : 0,0
    {
        if(!getXY(Matrice,WhichMatrix,x,y,Sens))
                {
                   setXY(Matrice,WhichMatrix,x,y,true,Sens);  
                   pcount ++; //incrementation du conteur de particule  
                }
    }
    
    while(pcount < Nparticules) //boucle tant que nous n'avons pas mis les particules demandées.
    {   
        if (y > 0)//prémiere partie de la matrice, remplissage selon Y
        {    
            y--;//nous commençons en bas de la matrice et décrementent Y à chaque fois que nous avons finis une ligne
            
            ydec = y;//Sauvegarder de Y
            xdec = 15;
            
            if(!getXY(Matrice,WhichMatrix,x,y,Sens)) //si la position est vide
                {
                   setXY(Matrice,WhichMatrix,x,y,true,Sens); //mise à 1
                   pcount ++;  
                }
            
            for(count = (15 - y); count > 0; count--) //vérification de toute la ligne
            {
                xdec--;
                ydec++;
                if(pcount < Nparticules) // nombre des particules atteint?
                {
                   if(!getXY(Matrice,WhichMatrix,xdec,ydec,Sens))//si la position est vide
                    {
                       setXY(Matrice,WhichMatrix,xdec,ydec,true,Sens); //mise à 1
                       pcount ++;  
                    } 
                } 
            }
        }
        else //Déuxieme partie, remplissage selon X
        {
            x--;
            
            ydec = 0;
            xdec = x; // sauvegarde de X
            
            if(!getXY(Matrice,WhichMatrix,x,y,Sens)) //si la position est vide
                {
                   setXY(Matrice,WhichMatrix,x,y,true,Sens); //mise à 1
                   pcount ++;  
                }
            
            for(count = x; count > 0; count--) //vérification de la ligne
            {
                xdec--;
                ydec++;
                if(pcount < Nparticules)
                {
                    if(!getXY(Matrice,WhichMatrix,xdec,ydec,Sens))//si vide
                    {
                       setXY(Matrice,WhichMatrix,xdec,ydec,true,Sens);// = 1 
                       pcount ++;  
                    }
                }
            }
        }
        
  
    }
}

/** 
  @Function
    void clearMatrice(Matrix* Matrice, Matrice_num WhichMatrix)

  @Summary
    Fonction qui permet d'effacer le contenu d'une matrice

  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser    
  @Returns
    rien

  */


void clearMatrice(Matrix* Matrice, Matrice_num WhichMatrix)
{
    uint8_t i = 0;
    switch(WhichMatrix)
    {
        case Matrice_TOP :
            for(i = 0; i < 16; i++)
            {
                Matrice->Top[i] = 0xffff;//mise à 0 des leds
            }
            break;
        case Matrice_BOT :
            for(i = 0; i < 16; i++)
            {
                Matrice->Bot[i] = 0xffff;//mise à 0 des leds
            }
            break;
    }
}

/** 
  @Function
    void DropParticule(Matrix* Matrice, Gravity Sens)

  @Summary
    Fonction qui permet de transferer une particule d'une matrice à l'autre
    Ce transfert se fait toujours à l'interception entre les deux matrices

  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser    
  @Returns
    rien

  */

void DropParticule(Matrix* Matrice, Gravity Sens)
{
    switch(Sens) // selon le sens
    {
        case ToptoBot :
            if(getXY(Matrice,Matrice_BOT,0,0,Sens) == 0) //si la case destinataire est libre
            {
                if(getXY(Matrice,Matrice_TOP,15,15,Sens) == 1)// si la case à vider est remplie
                {
                    //transferer particule
                    setXY(Matrice, Matrice_TOP, 15, 15, false, Sens);
                    setXY(Matrice, Matrice_BOT, 0, 0 , true, Sens);
                }
            } 
            
            break;
        case LefttoRight :
            //Les cordonnées changent parce que, desormais, l'interception avec l'autre matrice ne se trouve plus
            //au même endroit.
            if(getXY(Matrice,Matrice_TOP,15,0,Sens) == 1)//si la case destinataire est libre
            {
                if(getXY(Matrice,Matrice_BOT,0,15,Sens) == 0)// si la case à vider est remplie
                {
                    //transferer particule
                    setXY(Matrice, Matrice_TOP, 15, 0, false, Sens);
                    setXY(Matrice, Matrice_BOT, 0, 15 , true, Sens);
                }
            } 
            //Puisque la matrice est mise sur le côté, il faut pouvoir tranferer les particules dans les deux sens
            else if(getXY(Matrice,Matrice_BOT,0,15,Sens) == 1)
            {  
                setXY(Matrice, Matrice_BOT, 0, 15 , false, Sens);
                setXY(Matrice, Matrice_TOP, 15, 0, true, Sens);
            }
            break;
        case BottoTop :
          //même que toptobot mais inversé
            if(getXY(Matrice,Matrice_TOP,0,0,Sens) == 0)
            {
                if(getXY(Matrice,Matrice_BOT,15,15,Sens) == 1)
                {
                    setXY(Matrice, Matrice_BOT, 15, 15, false, Sens);
                    setXY(Matrice, Matrice_TOP, 0, 0 , true, Sens);
                }
            } 
            break;
        case RighttoLeft :
        //même que lefttoright mais inversé
            if(getXY(Matrice,Matrice_TOP,0,15,Sens) == 1)
            {
                if(getXY(Matrice,Matrice_BOT,15,0,Sens) == 0)
                {
                    setXY(Matrice, Matrice_TOP, 0, 15, false, Sens);
                    setXY(Matrice, Matrice_BOT, 15, 0 , true, Sens);
                }
            } 
            else if(getXY(Matrice,Matrice_BOT,15,0,Sens) == 1)
            {  
                setXY(Matrice, Matrice_BOT, 15, 0, false, Sens);
                setXY(Matrice, Matrice_TOP, 0, 15, true, Sens);
            }
            break;
        default :
            break;
    }
    
}

/** 
  @Function
    void UpdateParticules(Matrix* Matrice, Matrice_num WhichMatrix, Gravity Sens)

  @Summary
    Fonction qui permet de mettre à jour toutes les particules d'une matrice
    Selon le sens de la matrice, cette fonction fera agir les particules entre 
    elles. Chaque appel de cette fonction mes à jour toutes les particules d'un 
    pas.

  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser   
    Gravity Sens : Sens actuel de la matrice
  @Returns
    rien

  */

void UpdateParticules(Matrix* Matrice, Matrice_num WhichMatrix, Gravity Sens)
{
    uint8_t x = 15;
    uint8_t y = 15;
    int8_t count;
    uint8_t ydec;
    uint8_t xdec;
    int Updatecount = 0;
    while(Updatecount < 256)//la matrice a 16x16 leds, donc, 256 mise à jours
    {   
        if (y > 0)//partie base de la matrice selon le sens
        {    
            ydec = y;//sauvegarde de y
            xdec = 15;
            for(count = (15 - y); count >= 0; count--)//update de toute la ligne
            {
                if(getXY(Matrice,WhichMatrix,xdec,ydec,Sens))//la particule actuelle est présente?
                {
                    if(canGoDown(Matrice,WhichMatrix,xdec,ydec,Sens))//Peut-elle aller en bas?
                    {
                        goDown(Matrice,WhichMatrix,xdec,ydec,Sens);//alors elle vas en bas
                    }
                    else
                    {
                        uint8_t r = rand() % 2; //randomisation entre gauche et droite. 50% des chances entre l'une et l'autre
                        switch(r)
                        {
                            case 0 :
                                if(canGoLeft(Matrice,WhichMatrix,xdec,ydec,Sens))//peut elle aller à gauche?
                                    {
                                        goLeft(Matrice,WhichMatrix,xdec,ydec,Sens);//alors elle vas à gauche
                                    }
                                break;
                            case 1 :
                                 if(canGoRight(Matrice,WhichMatrix,xdec,ydec,Sens))//peut elle aller à droite?
                                    {
                                        goRight(Matrice,WhichMatrix,xdec,ydec,Sens);//alors elle vas à droite
                                    }
                                break;
                                //il est normal de ne pas avoir vérifier l'autre choix si la particule ne peut pas aller à gauche ou à droite.
                                // ceci fait que parfois, une particule n'est pas mises à jours et ajoute un effet plus random à la mise à jour de l'affichage.
                        }
                    }
                }
                
              Updatecount++;
              xdec--;
              ydec++;
            }
            y--;
        }
        else // partie supérieure de l'affichage
        {
            ydec = 0;
            xdec = x;
            for(count = x; count >= 0; count--)
            {
                if(getXY(Matrice,WhichMatrix,xdec,ydec,Sens))
                {
                    if(canGoDown(Matrice,WhichMatrix,xdec,ydec,Sens)) // s'il peut aller en bas
                    {
                        goDown(Matrice,WhichMatrix,xdec,ydec,Sens);//il vas en bas
                    }
                    else
                    {
                        uint8_t r = rand() % 2; //random 50%
                        switch(r)
                        {
                            case 0 :
                                if(canGoLeft(Matrice,WhichMatrix,xdec,ydec,Sens))// il peut aller à gauche?
                                    {
                                        goLeft(Matrice,WhichMatrix,xdec,ydec,Sens);// il bas à gauche
                                    }
                                break;
                            case 1 :
                                 if(canGoRight(Matrice,WhichMatrix,xdec,ydec,Sens))// il peut aller à droite?
                                    {
                                        goRight(Matrice,WhichMatrix,xdec,ydec,Sens);// il vas à droite
                                    }
                                break;
                        }


                    }
                }
              Updatecount++;
              xdec--;
              ydec++;
            }
            x--;
        }
        
  
    }
}

/** 
  @Function
    int setXY(Matrix* Matrice, Matrice_num WhichMatrix , int xr, int yr,  bool state,Gravity Sens) 

  @Summary
    Fonction qui permet d'imposer un etat de particule dans un positionnement XY
 *  dans la matrice choisie.
 *  
 *  Dans l'axe X et Y, la cordonnée 0 sera toujours placée en haut à gauche. 
 *  Dans le cas ou l'ont tourne la carte, les cordonn�es seront modifi�es pour
 *  que la cordonn�e 0 se trouve en haut � gauche.
  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser
 *  int xr : cordonn�es x dans la matrice (0 -> 15) 
 *  int yr : cordonn�es x dans la matrice (0 -> 15)
 *  bool state : Etat que l'ont veut imposer. 
    Gravity Sens : Sens actuel de la matrice
  @Returns
   Dans le cas d'un erreur : -1
 * sinon : 0

  */

int setXY(Matrix* Matrice, Matrice_num WhichMatrix , int xr, int yr,  bool state,Gravity Sens) 
{
    uint8_t xcount;
    uint16_t xmask = 0xFFFE; // les leds sont active avec une sortie 0. (commandées par la cathode)
    int x,y;
    switch(Sens)//selon le sens, il y a une correction sur les axes XY
    {
        case ToptoBot :
            x = xr;
            y = yr;
            break;
        case RighttoLeft :
            x = yr;
            y = 15 - xr;
            break;
        case BottoTop :
            x = 15 - xr;
            y = 15 - yr;
            break;
        case LefttoRight :
            x = 15 - yr;
            y = xr;
            break;
        default :
            return Error;
            break;
    }      
    if(x > 15 || x < 0 || y > 15 || y < 0)//Limites de l'affichage
    {
        return Error;
    }
    else
    {
        switch(WhichMatrix)//matrice top ou bot?
        {
            case Matrice_TOP :
                if(state == 1)//si l'ont doit allumer la led
                {
                    for(xcount = 0; xcount < x; xcount ++)//decallage pour avoir une valeur complement à 1 du bit de la led
                    {
                        xmask = (xmask << 1) + 1;
                    }
                    Matrice->Top[y] = Matrice->Top[y] & xmask; //application du masque ET. -> 0b00101111 & 0b10110111 = 0b00100111 en 8bit 
                }
                else
                {
                    xmask = 1;
                    for(xcount = 0; xcount < x; xcount ++)
                    {
                        xmask = (xmask << 1) & 0xFFFE;//decallage pour positionner le bit sur le bit de la led.
                        //le masque FFFE sert à s'assurer que la valeur lsb est 0.
                    }
                     Matrice->Top[y] = Matrice->Top[y] | xmask; //le bit de la led sera mis à 1 et les autres laissés comme avant
                }
                return 0;
                break; 
                //même chose mais pour la matrice du bot
            case Matrice_BOT :
                if(state == 1)
                {
                    for(xcount = 0; xcount < x; xcount ++)
                    {
                        xmask = (xmask << 1) + 1;
                    }
                    Matrice->Bot[y] = Matrice->Bot[y] & xmask;
                }
                else
                {
                    xmask = 1;
                    for(xcount = 0; xcount < x; xcount ++)
                    {
                        xmask = (xmask << 1) & 0xFFFE;
                    }
                     Matrice->Bot[y] = Matrice->Bot[y] | xmask;
                }
                return 0;
                break;
            default :
                return Error;
                break;
        }
    }
}

/** 
  @Function
    int getXY(Matrix* Matrice,Matrice_num WhichMatrix , int xr, int yr, Gravity Sens)

  @Summary
    Fonction qui permet d'obtenir un etat de particule dans un positionnement XY
 *  dans la matrice choisie.
 *  
 *  Dans l'axe X et Y, la cordonn�e 0 sera toujours plac�e en haut � gauche. 
 *  Dans le cas o� l'ont tourne la carte, les cordonn�es seront modifi�es pour
 *  que la cordonn�e 0 se trouve en haut � gauche.
  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser
 *  int xr : cordonn�es x dans la matrice (0 -> 15) 
 *  int yr : cordonn�es x dans la matrice (0 -> 15)
    Gravity Sens : Sens actuel de la matrice
  @Returns
   Dans le cas d'un erreur : -1
 * sinon, il renvoit l'�tat de la led � la cordonn�e demand�e.

  */

int getXY(Matrix* Matrice,Matrice_num WhichMatrix , int xr, int yr, Gravity Sens) 
{
  
    bool IsThere;
    int x,y;
    switch(Sens)
    {
      //correction du sens selon l'orientation
        case ToptoBot :
            x = xr;
            y = yr;
            break;
        case RighttoLeft :
            x = yr;
            y = 15 - xr;
            break;
        case BottoTop :
            x = 15 - xr;
            y = 15 - yr;
            break;
        case LefttoRight :
            x = 15 - yr;
            y = xr;
            break;
        default :
            return Error;
            break;
    }     
    if(x > 15 || x < 0 || y > 15 || y < 0)//limites de l'affichage
    {
        return Error;
    }
    else
    {
        switch(WhichMatrix)
        {
            case Matrice_TOP :
                IsThere = (Matrice->Top[y] >> x ) & 1;//le bit demandé est la?
                return !IsThere;//retourne l'inverse pour avoir 1 = led allumée
                break; 
            case Matrice_BOT : //même mais pour le bot
                IsThere = (Matrice->Bot[y] >> x ) & 1;
                return !IsThere;
                break;
            default :
                return Error;
                break;
        }
    }
    
}

/** 
  @Function
    coord getDown(int x, int y) 

  @Summary
    Fonction qui permet de calculer les cordonn�es pour un d�placement vers le 
 *  bas sur les axes XY
 * 
 *  Exemple : XY = 0,0. D�placement vers le bas = 1,1.

  @Description
    int x : cordonn�e actuelle de l'axe x 
 *  int y : cordonn�e actuelle de l'axe y
  @Returns
    typedef struct {
        int x;
        int y;
    }coord
 * structure coord avec les deux nouvelles cordonn�es
  */

coord getDown(int x, int y) // cordonnées de la position en dessous XY : 1,1 -> 2,2
{
  coord xy;
  xy.x = x+1;
  xy.y = y+1;
  return xy;
}

/** 
  @Function
    coord getLeft(int x, int y) 

  @Summary
    Fonction qui permet de calculer les cordonn�es pour un d�placement vers la 
 *  gauche sur l'axe y
 * 
 *  Exemple : XY = 0,0. D�placement vers la gauche = 0,1.

  @Description
    int x : cordonn�e actuelle de l'axe x 
 *  int y : cordonn�e actuelle de l'axe y
  @Returns
    typedef struct {
        int x;
        int y;
    }coord
 * structure coord avec les deux nouvelles cordonn�es
  */

coord getLeft(int x, int y) // cordonnées de la position à gauche XY : 1,1 -> 1,2
{
  coord xy;
  xy.x = x;
  xy.y = y+1;
  return xy;
}

/** 
  @Function
    coord getRight(int x, int y)

  @Summary
    Fonction qui permet de calculer les cordonn�es pour un d�placement vers la 
 *  droite sur l'axe x
 * 
 *  Exemple : XY = 0,0. D�placement vers la droite = 1,0.

  @Description
    int x : cordonn�e actuelle de l'axe x 
 *  int y : cordonn�e actuelle de l'axe y
  @Returns
    typedef struct {
        int x;
        int y;
    }coord
 * structure coord avec les deux nouvelles cordonn�es
  */

coord getRight(int x, int y) // cordonnées de la position à droite XY : 1,1 -> 2,1
{
  coord xy;
  xy.x = x+1;
  xy.y = y;
  return xy;
}

/** 
  @Function
    void goDown(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) 

  @Summary
    Fonction qui permet de d�placer une particule dans un axe XY vers le bas 
 *  selon le sens de la matrice.
 * 
 *  Exemple : Particule pr�sente sur une position XY : 5,5.
 *  Cette position sera mise � 0 et la position 6,6 sera mise � 1.
  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser
 *  int xr : cordonn�es x dans la matrice (0 -> 15) 
 *  int yr : cordonn�es x dans la matrice (0 -> 15)
    Gravity Sens : Sens actuel de la matrice
  @Returns
    rien

  */

void goDown(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) //déplacement de la particule en bas
{
  coord xy = getDown(x,y);
  setXY(Matrice, WhichMatrix, x, y, false, Sens);
  setXY(Matrice, WhichMatrix, xy.x, xy.y , true, Sens);
}

/** 
  @Function
    void goLeft(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) 

  @Summary
    Fonction qui permet de d�placer une particule dans un axe Y vers la gauche 
 *  selon le sens de la matrice.
 * 
 *  Exemple : Particule pr�sente sur une position XY : 5,5.
 *  Cette position sera mise � 0 et la position 5,6 sera mise � 1.
  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser
 *  int xr : cordonn�es x dans la matrice (0 -> 15) 
 *  int yr : cordonn�es x dans la matrice (0 -> 15)
    Gravity Sens : Sens actuel de la matrice
  @Returns
    rien

  */

void goLeft(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) //déplacement de la particule à gauche
{
  coord xy = getLeft(x,y);
  setXY(Matrice, WhichMatrix, x, y, false, Sens);
  setXY(Matrice, WhichMatrix, xy.x, xy.y , true, Sens);
}

/** 
  @Function
    void goRight(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens)  

  @Summary
    Fonction qui permet de d�placer une particule dans un axe Y vers la droite 
 *  selon le sens de la matrice.
 * 
 *  Exemple : Particule pr�sente sur une position XY : 5,5.
 *  Cette position sera mise � 0 et la position 6,5 sera mise � 1.
  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser
 *  int xr : cordonn�es x dans la matrice (0 -> 15) 
 *  int yr : cordonn�es x dans la matrice (0 -> 15)
    Gravity Sens : Sens actuel de la matrice
  @Returns
    rien

  */

void goRight(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) //déplacement à droite de la particule
{
  coord xy = getRight(x,y);
  setXY(Matrice, WhichMatrix, x, y, false, Sens);
  setXY(Matrice, WhichMatrix, xy.x, xy.y , true, Sens);
}

/** 
  @Function
    bool canGoLeft(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) 

  @Summary
    Fonction qui permet de v�rifier la position � gauche.
 *  getLeft + getXY.
 
  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser
 *  int xr : cordonn�es x dans la matrice (0 -> 15) 
 *  int yr : cordonn�es x dans la matrice (0 -> 15)
    Gravity Sens : Sens actuel de la matrice
  @Returns
   �tat de la led � la position gauche

  */

bool canGoLeft(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) // la particule peut elle aller à gauche?
{
  if (y == 15) return false; // butée à gauche
  coord xy = getLeft(x,y);
  if(getXY(Matrice,WhichMatrix,xy.x,xy.y,Sens) == 0)
  {
    return true;//oui
  } 
  else
  {
    return false;//non
  }
}

/** 
  @Function
    bool canGoLeft(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) 

  @Summary
    Fonction qui permet de v�rifier la position � droite.
 *  getLeft + getXY.
 
  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser
 *  int xr : cordonn�es x dans la matrice (0 -> 15) 
 *  int yr : cordonn�es x dans la matrice (0 -> 15)
    Gravity Sens : Sens actuel de la matrice
  @Returns
   �tat de la led � la position gauche

  */

bool canGoRight(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) //peut elle aller à droite?
{
  if (x == 15) return false; // butée à droite
  coord xy = getRight(x,y);
  if(getXY(Matrice,WhichMatrix,xy.x,xy.y, Sens) == 0)
  {
    return true;//oui
  } 
  else
  {
    return false;//non
  }
}

/** 
  @Function
    bool canGoLeft(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) 

  @Summary
    Fonction qui permet de v�rifier la position en bas.
 *  getLeft + getXY.
 
  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser
 *  int xr : cordonn�es x dans la matrice (0 -> 15) 
 *  int yr : cordonn�es x dans la matrice (0 -> 15)
    Gravity Sens : Sens actuel de la matrice
  @Returns
   �tat de la led � la position gauche

  */

bool canGoDown(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens) //peut elle aller en bas?
{
  if (x == 15 || y == 15) return false; // si la particule est en butée sur les axes. impossible d'aller en bas
  coord xy = getDown(x,y);
  if(getXY(Matrice,WhichMatrix,xy.x,xy.y,Sens) == 0)
  {
    return true;//oui
  } 
  else
  {
    return false;//non
  }
}

bool EndParticules(Matrix* Matrice, Gravity Sens)
{
    uint16_t EmptyLine = 0xFFFF;
    int i;
    switch(Sens)
    {
        case ToptoBot :
            for(i = 0; i < 16 ; i++)
            {
                EmptyLine = EmptyLine & Matrice->Top[i]; // s'il y a des leds allum�es, EmptyLine ne vaudra plus 0xFFFF
            }
            break;
        case BottoTop :
            for(i = 0; i < 16 ; i++)
            {
                EmptyLine = EmptyLine & Matrice->Bot[i]; // s'il y a des leds allum�es, EmptyLine ne vaudra plus 0xFFFF
            }
            break;
        default : 
            EmptyLine = 0;
            return 0;
            break;
    }
    if(EmptyLine == 0xFFFF)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

/** 
  @Function
    void SetFullMatrice(Matrix* Matrice, Matrice_num WhichMatrix, bool State)

  @Summary
    Fonction qui permet de fixer un état sur l'entiereté de la matrice
 
  @Description
    Matrix* Matrice : contient l'adresse du tableau pour les deux matrices
    Matrice_num WhichMatrix : La matrice que l'on veut utiliser
 *  bool State
  @Returns
   rien

  */

void SetFullMatrice(Matrix* Matrice, Matrice_num WhichMatrix, bool State)
{
    int i;
    switch(WhichMatrix)
    {
        case Matrice_TOP :
            if(State == 0)
            {
                for(i = 0; i < 16 ; i++)
                {
                    Matrice->Top[i] = 0xFFFF; 
                }
            }
            else
            {
                for(i = 0; i < 16 ; i++)
                {
                    Matrice->Top[i] = 0x0000; 
                }
            }
            break;
        case Matrice_BOT :
            if(State == 0)
            {
                for(i = 0; i < 16 ; i++)
                {
                    Matrice->Bot[i] = 0xFFFF; 
                }
            }
            else
            {
                for(i = 0; i < 16 ; i++)
                {
                    Matrice->Bot[i] = 0x0000; 
                }
            }
            break;
        default : 
            break;
    }
  
}

/* *****************************************************************************
 End of File
 */
