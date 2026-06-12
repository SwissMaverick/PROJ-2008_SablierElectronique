#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Transport.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/DataConverter.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/ErrorHelper.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/Message.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/RingByteBuffer.c ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/main.c ../src/app.c ../src/Mc32IAMSPIUtil.c ../src/Mc32SpiUtil.c ../../../../framework/system/int/src/sys_int_pic32.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o ${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o ${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o ${OBJECTDIR}/_ext/964373764/DataConverter.o ${OBJECTDIR}/_ext/964373764/ErrorHelper.o ${OBJECTDIR}/_ext/964373764/Message.o ${OBJECTDIR}/_ext/964373764/RingByteBuffer.o ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o.d ${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o.d ${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o.d ${OBJECTDIR}/_ext/964373764/DataConverter.o.d ${OBJECTDIR}/_ext/964373764/ErrorHelper.o.d ${OBJECTDIR}/_ext/964373764/Message.o.d ${OBJECTDIR}/_ext/964373764/RingByteBuffer.o.d ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o ${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o ${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o ${OBJECTDIR}/_ext/964373764/DataConverter.o ${OBJECTDIR}/_ext/964373764/ErrorHelper.o ${OBJECTDIR}/_ext/964373764/Message.o ${OBJECTDIR}/_ext/964373764/RingByteBuffer.o ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o

# Source Files
SOURCEFILES=C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Transport.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/DataConverter.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/ErrorHelper.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/Message.c C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/RingByteBuffer.c ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/main.c ../src/app.c ../src/Mc32IAMSPIUtil.c ../src/Mc32SpiUtil.c ../../../../framework/system/int/src/sys_int_pic32.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver.c  .generated_files/flags/default/c3386719633b8557cc8587f181c4d723c89d99dd .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1616613316" 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o.d" -o ${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c  .generated_files/flags/default/9cba62d00d40f66a4fcc6f4b7e398475ee4e8f8 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1616613316" 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o.d" -o ${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Transport.c  .generated_files/flags/default/305dac5c1892060df38e7ba92ad86aeba2a38493 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1616613316" 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o.d 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o.d" -o ${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Transport.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/964373764/DataConverter.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/DataConverter.c  .generated_files/flags/default/e4207041e6b75a12c63f03f9baee8488d25df8c3 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/964373764" 
	@${RM} ${OBJECTDIR}/_ext/964373764/DataConverter.o.d 
	@${RM} ${OBJECTDIR}/_ext/964373764/DataConverter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/964373764/DataConverter.o.d" -o ${OBJECTDIR}/_ext/964373764/DataConverter.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/DataConverter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/964373764/ErrorHelper.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/ErrorHelper.c  .generated_files/flags/default/db8e007dbe5cb47a411a50078f9f2eb230eabedb .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/964373764" 
	@${RM} ${OBJECTDIR}/_ext/964373764/ErrorHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/964373764/ErrorHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/964373764/ErrorHelper.o.d" -o ${OBJECTDIR}/_ext/964373764/ErrorHelper.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/ErrorHelper.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/964373764/Message.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/Message.c  .generated_files/flags/default/6c97dcf8ee42dd5dc903321a244a4d4747f2acff .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/964373764" 
	@${RM} ${OBJECTDIR}/_ext/964373764/Message.o.d 
	@${RM} ${OBJECTDIR}/_ext/964373764/Message.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/964373764/Message.o.d" -o ${OBJECTDIR}/_ext/964373764/Message.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/Message.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/964373764/RingByteBuffer.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/RingByteBuffer.c  .generated_files/flags/default/289c6881069c7594a5496824adf2c74d23de2cef .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/964373764" 
	@${RM} ${OBJECTDIR}/_ext/964373764/RingByteBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/964373764/RingByteBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/964373764/RingByteBuffer.o.d" -o ${OBJECTDIR}/_ext/964373764/RingByteBuffer.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/RingByteBuffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o: ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c  .generated_files/flags/default/3c116119a6fcc4cb9a042e9df2f642274ae172f0 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1407244131" 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o: ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c  .generated_files/flags/default/18ef6574e922e9bc68835eb52a50e5eba0d7ad78 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1407244131" 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o.d" -o ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/4833b1f8f35f7094b71aea130b12969a3ce8c51 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/249c22057a1475d500d5eadee2c4ea4997b31ddb .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/8f30a83445a8f38ce28c1b3bd3fd9685226b6144 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/47dff58d4d67b61132f2db5d237684d7d4472466 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/5710200dcfdcba146d78cba9d519adc043873a04 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/bf3e8a4758ef9df42369e2a9dba7ea671fdcacaf .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/da44ebcf7a9f9a9a12e231972ea0ab7a16eb186f .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/df65c2c3e8ab1989f9e7f1e4ab05ee800a389f52 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/3b15dfa110fd94c117a139e681d97caec0a29bc8 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/f0f2a75b26d6999da30b349f81419de2901f252f .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o: ../src/Mc32IAMSPIUtil.c  .generated_files/flags/default/16001b810ff22cfe092ae7ff8f09299d208de022 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ../src/Mc32IAMSPIUtil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o: ../src/Mc32SpiUtil.c  .generated_files/flags/default/f1881c35c20223ab6a15bae1d60616ee9649bfcf .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ../src/Mc32SpiUtil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/86eb0080e93b9cf33930a1d629caaef7c0fbe3f2 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver.c  .generated_files/flags/default/534576452a84fd9438277a109e632f29473d5e04 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1616613316" 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o.d" -o ${OBJECTDIR}/_ext/1616613316/Iam20680Driver.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c  .generated_files/flags/default/1e16cc407e39bf06d33f3c7d1ad56307550d2cc0 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1616613316" 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o.d" -o ${OBJECTDIR}/_ext/1616613316/Iam20680Driver_HL.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Transport.c  .generated_files/flags/default/95b6bbfcafa8938a8e7d825161f59e8b40013f26 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1616613316" 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o.d 
	@${RM} ${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o.d" -o ${OBJECTDIR}/_ext/1616613316/Iam20680Transport.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/Drivers/Iam20680/Iam20680Transport.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/964373764/DataConverter.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/DataConverter.c  .generated_files/flags/default/d439b58afe663056360923a81bb53e461e4427ea .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/964373764" 
	@${RM} ${OBJECTDIR}/_ext/964373764/DataConverter.o.d 
	@${RM} ${OBJECTDIR}/_ext/964373764/DataConverter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/964373764/DataConverter.o.d" -o ${OBJECTDIR}/_ext/964373764/DataConverter.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/DataConverter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/964373764/ErrorHelper.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/ErrorHelper.c  .generated_files/flags/default/6040408bceb71c64fd41803ab1a2d6161d456d8b .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/964373764" 
	@${RM} ${OBJECTDIR}/_ext/964373764/ErrorHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/964373764/ErrorHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/964373764/ErrorHelper.o.d" -o ${OBJECTDIR}/_ext/964373764/ErrorHelper.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/ErrorHelper.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/964373764/Message.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/Message.c  .generated_files/flags/default/cdc6bccbe4d6e0b27a737a0c7e52986590020a8c .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/964373764" 
	@${RM} ${OBJECTDIR}/_ext/964373764/Message.o.d 
	@${RM} ${OBJECTDIR}/_ext/964373764/Message.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/964373764/Message.o.d" -o ${OBJECTDIR}/_ext/964373764/Message.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/Message.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/964373764/RingByteBuffer.o: C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/RingByteBuffer.c  .generated_files/flags/default/1682f31c3dbec92776ad4f7c983a827cea0b2d44 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/964373764" 
	@${RM} ${OBJECTDIR}/_ext/964373764/RingByteBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/964373764/RingByteBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/964373764/RingByteBuffer.o.d" -o ${OBJECTDIR}/_ext/964373764/RingByteBuffer.o C:/microchip/harmony/v2_06/Diplôme/2008_SablierElectronique/firmware/src/Invn/EmbUtils/RingByteBuffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o: ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c  .generated_files/flags/default/112ff3c174493adb9ad18677f9577d5f07f8e6ba .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1407244131" 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o: ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c  .generated_files/flags/default/b4fbb0fe4b368e6b9d48854f889c9f272a699702 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1407244131" 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o.d" -o ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/b05de2d33f26f201f64c92f9ee980c5e49ba718 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/b16cf275b60248553143d22cd69bd302ed772233 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/c889d48bba0222fcc071c0e6016792157fbf21ed .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/37d8ff131024b1439c7cf142b578f2a9dd6deef3 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/d6f87769c79360c0ab0ddbfb984fd251c7c85d12 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/69c3dd381d03112888675095a383e30f49fbdd7d .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/da0be7762606ff2acda869c6f0ad6689b1b9bb6d .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/d761eb9555df107fc77fe199764a92fef4d2c153 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/debba0a1f9e864f62bf2929d5fa90c2cbe9a3fdf .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/166e44f257080c49e22417116e06ac13bf6584d4 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o: ../src/Mc32IAMSPIUtil.c  .generated_files/flags/default/76ee7838ab3de68be08de766cb1ae743d0010f4e .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ../src/Mc32IAMSPIUtil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o: ../src/Mc32SpiUtil.c  .generated_files/flags/default/2b78d48989ae16001abd7cc4de11abd73148a11a .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ../src/Mc32SpiUtil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/34c87e6d679ae7fce46b6be738e54ec44e69ab14 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
