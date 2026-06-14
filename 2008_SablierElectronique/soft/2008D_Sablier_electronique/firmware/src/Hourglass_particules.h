/* ************************************************************************** */
/** Descriptive File Name
  
  @Autor
    Carlos Antonio Reyes Peña
 
  @File Name
    Hourglass_particules.h

  @Summary
    Fichier H du fichier Hourglass_particules.c

  @Description
    Ce fichier contient les prototypes et structures necessaires pour le fichier
    Hourglass_particules.c
 */
/* ************************************************************************** */

#ifndef _HOURGLASS_PARTICULES_h    /* Guard against multiple inclusion */
#define _HOURGLASS_PARTICULES_h


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */
#include "app.h"
/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif


    /* ************************************************************************** */
    /* ************************************************************************** */
    /* Section: Constants                                                         */
    /* ************************************************************************** */
    /* ************************************************************************** */

    /*  A brief description of a section can be given directly below the section
        banner.
     */




    //structure utilisée pour transferer des cordonnées X et Y

    typedef struct {
        int x;
        int y;
    }coord;


    //prototypes
    int setXY(Matrix* Matrice, Matrice_num WhichMatrix , int xr, int yr,  bool state,Gravity Sens);
    int getXY(Matrix* Matrice,Matrice_num WhichMatrix , int xr, int yr, Gravity Sens) ;
    coord getDown(int x, int y);
    void goDown(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens);
    void goLeft(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens);
    void goRight(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens);
    coord getLeft(int x, int y) ;
    coord getRight(int x, int y);
    bool canGoLeft(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens);
    bool canGoRight(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens);
    bool canGoDown(Matrix* Matrice, Matrice_num WhichMatrix , int x, int y, Gravity Sens);
    void clearMatrice(Matrix* Matrice, Matrice_num WhichMatrix);
    void fillParticules(Matrix* Matrice, Matrice_num WhichMatrix, int Nparticules, Gravity Sens);
    void UpdateParticules(Matrix* Matrice, Matrice_num WhichMatrix, Gravity Sens);
    void DropParticule(Matrix* Matrice, Gravity Sens);
    bool EndParticules(Matrix* Matrice, Gravity Sens);
    void SetFullMatrice(Matrix* Matrice, Matrice_num WhichMatrix, bool State);
    
    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _HOURGLASS_PARTICULES_H */

/* *****************************************************************************
 End of File
 */
