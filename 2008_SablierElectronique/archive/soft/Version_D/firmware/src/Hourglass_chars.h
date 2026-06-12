/* ************************************************************************** */
/** Descriptive File Name
  
  @Autor
    Carlos Antonio Reyes Pe�a
 
  @File Name
    Hourglass_chars.h

  @Description

  Fichier h pour le fichier Hourglass_chars.c
  
  Dans ce fichier, nous avons les prototypes des fonctions.
    
 */
/* ************************************************************************** */

#ifndef _HOURGLASS_CHARS_H    /* Guard against multiple inclusion */
#define _HOURGLASS_CHARS_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

//prototypes des fonctions
void AfficheMinutes(Matrix* Matrice, Matrice_num WhichMatrix , int Valmin);
void AfficheHeures(Matrix* Matrice, Matrice_num WhichMatrix , int ValHeure);
uint16_t Upscale8to16(uint16_t Val);
    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
