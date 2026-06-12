// Mc32IAMSPIUtil.C
// Gestion master SPI avec slave DAC

// Pilote du SPI IAM
// Auteur C. Huber  30.04.2012
// Adaptation plib_spi 10.02.2015 CHR
//      Modifications :
//          CHR 06.03.2015  ajout fonction SPI_CfgWriteToDac
//          CHR 24.05.2016  ajout #include "Mc32Delays.h"
//          CHR 25.05.2016  utilisation de SYS_CLK_PeripheralFrequencyGet(CLK_BUS_PERIPHERAL_2)
//          CRS 07.09.2020  Adaptation pour utiliser avec la centrale inertiele IAM

#include "app.h"   // pour system_config et autre
#include "Mc32IAMSPIUtil.h"
#include "Mc32SpiUtil.h"
#include "Mc32Delays.h"
#include "system_config.h"
#include "peripheral\SPI\plib_spi.h"
#include "Invn/Devices/Drivers/Iam20680/Iam20680Driver_HL.h"
#include "Invn/Devices/Drivers/Iam20680/Iam20680Defs.h"


// SPI_ID_2 correspond au SPI2 !
#define SablierSPI (SPI_ID_2)

uint32_t ConfigReg;     // pour lecture de SPI1CON
uint32_t BaudReg;       // pour lecture de SPI1BRG

// Initialisation de la communication SPI
// ------------------------------------------------

// Pour observation des signaux SPI
// SPI-SCK   TP1
// SPI-MOSI  TP2
// SPI-MISO  TP3
// SPI-CS_DA TP4

// Ancienne configuration pour macro XC32
// uint32_t  config = SPI_OPEN_MODE8 | SPI_OPEN_ON | SPI_OPEN_CKP_HIGH |
//                    SPI_OPEN_MSTEN ;


void SPI_ConfigureIAM(void)
{
   PLIB_SPI_Disable(SablierSPI);

   PLIB_SPI_BufferClear(SablierSPI);
   PLIB_SPI_StopInIdleDisable(SablierSPI);
   PLIB_SPI_PinEnable(SablierSPI, SPI_PIN_DATA_OUT);
   PLIB_SPI_CommunicationWidthSelect(SablierSPI, SPI_COMMUNICATION_WIDTH_8BITS);
   // Config SPI clock � 20 MHz 
   PLIB_SPI_BaudRateSet(SablierSPI, SYS_CLK_PeripheralFrequencyGet(CLK_BUS_PERIPHERAL_1), 4000000);
   // Config polarit� traitement des signaux SPI
   // pour input � confirmer
   // Polarit� clock OK
   // Phase output � confirmer
   PLIB_SPI_InputSamplePhaseSelect(SablierSPI, SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE );
   PLIB_SPI_ClockPolaritySelect(SablierSPI, SPI_CLOCK_POLARITY_IDLE_HIGH);
   PLIB_SPI_OutputDataPhaseSelect(SablierSPI, SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK);
   PLIB_SPI_MasterEnable(SablierSPI);
   PLIB_SPI_FramedCommunicationDisable(SablierSPI);
   PLIB_SPI_FIFOEnable(SablierSPI);     // Enhenced buffer mode

   PLIB_SPI_Enable(SablierSPI);

   // Contr�le le la configuration
   ConfigReg = SPI1CON;
   BaudReg = SPI1BRG;
}

void SPI_InitIAM(void)  {

   
   // IAM MAX 8 MHz choix 8 MHz
   SPI_ConfigureIAM();
}

/** 
  @Function
    void Axesread(int16_t *ValAxes)

  @Summary
    Cette fonction nous permet de lire les 3 axes d'acceleration du IAM

  @Description
    int16_t *ValAxes pointeur du tableau pour les 3 axes de l'accelerometre.
  @Returns
    rien

  */
void Axesread(int16_t *ValAxes)
{

    uint16_t Accel[3];

    CS_GYROStateSet(0);//CS low

   //remplissage du buffer de lecture
    
    spi_read2(MPUREG_ACCEL_XOUT_H + 0b10000000);
    spi_read2(MPUREG_ACCEL_XOUT_L + 0b10000000);
    spi_read2(MPUREG_ACCEL_YOUT_H + 0b10000000);

    
    //lecture du buffer d'entrée SPI
    Accel[0] = spi_read2(MPUREG_ACCEL_YOUT_L + 0b10000000);
    Accel[0] = Accel[0] << 8;//decalage du msb
    Accel[0] = Accel[0] | spi_read2(MPUREG_ACCEL_ZOUT_H + 0b10000000);
    Accel[1] = spi_read2(MPUREG_ACCEL_ZOUT_L + 0b10000000);
    Accel[1] = Accel[1] << 8;//decalage du msb
    Accel[1] = Accel[1] | spi_read2(255);
    Accel[2] = spi_read2(255);
    Accel[2] = Accel[2] << 8;//decalage du msb
    Accel[2] = Accel[2] | spi_read2(255); // afin de vider le buffer
    CS_GYROStateSet(1); //cs off
    
    ValAxes[0] = Accel[0];
    ValAxes[1] = Accel[1];
    ValAxes[2] = Accel[2];
    
    
}
 



