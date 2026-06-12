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
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/main.c ../src/app.c ../src/Mc32IAMSPIUtil.c ../src/Mc32SpiUtil.c ../src/Mc32Debounce.c ../src/Hourglass_chars.c ../src/Hourglass_particules.c ../../../../../framework/system/int/src/sys_int_pic32.c ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver.c ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver_HL.c ../src/Invn/Devices/Drivers/IAM20680/Iam20680SelfTest.c ../src/Invn/Devices/Drivers/IAM20680/Iam20680Transport.c ../src/Invn/EmbUtils/DataConverter.c ../src/Invn/EmbUtils/ErrorHelper.c ../src/Invn/EmbUtils/InvProtocol.c ../src/Invn/EmbUtils/InvQueue.c ../src/Invn/EmbUtils/InvScheduler.c ../src/Invn/EmbUtils/Message.c ../src/Invn/EmbUtils/RingByteBuffer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o ${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o ${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o ${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o ${OBJECTDIR}/_ext/429725745/DataConverter.o ${OBJECTDIR}/_ext/429725745/ErrorHelper.o ${OBJECTDIR}/_ext/429725745/InvProtocol.o ${OBJECTDIR}/_ext/429725745/InvQueue.o ${OBJECTDIR}/_ext/429725745/InvScheduler.o ${OBJECTDIR}/_ext/429725745/Message.o ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o.d ${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o.d ${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o.d ${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o.d ${OBJECTDIR}/_ext/429725745/DataConverter.o.d ${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d ${OBJECTDIR}/_ext/429725745/InvProtocol.o.d ${OBJECTDIR}/_ext/429725745/InvQueue.o.d ${OBJECTDIR}/_ext/429725745/InvScheduler.o.d ${OBJECTDIR}/_ext/429725745/Message.o.d ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o ${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o ${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o ${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o ${OBJECTDIR}/_ext/429725745/DataConverter.o ${OBJECTDIR}/_ext/429725745/ErrorHelper.o ${OBJECTDIR}/_ext/429725745/InvProtocol.o ${OBJECTDIR}/_ext/429725745/InvQueue.o ${OBJECTDIR}/_ext/429725745/InvScheduler.o ${OBJECTDIR}/_ext/429725745/Message.o ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o

# Source Files
SOURCEFILES=../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/main.c ../src/app.c ../src/Mc32IAMSPIUtil.c ../src/Mc32SpiUtil.c ../src/Mc32Debounce.c ../src/Hourglass_chars.c ../src/Hourglass_particules.c ../../../../../framework/system/int/src/sys_int_pic32.c ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver.c ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver_HL.c ../src/Invn/Devices/Drivers/IAM20680/Iam20680SelfTest.c ../src/Invn/Devices/Drivers/IAM20680/Iam20680Transport.c ../src/Invn/EmbUtils/DataConverter.c ../src/Invn/EmbUtils/ErrorHelper.c ../src/Invn/EmbUtils/InvProtocol.c ../src/Invn/EmbUtils/InvQueue.c ../src/Invn/EmbUtils/InvScheduler.c ../src/Invn/EmbUtils/Message.c ../src/Invn/EmbUtils/RingByteBuffer.c



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
${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o: ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c  .generated_files/flags/default/e8fbdaeaa911adb06508ff71eafabea1d879d09c .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1407244131" 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o: ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c  .generated_files/flags/default/b443c65b18a34f8390f6d8b4e24ef408c574ef4c .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1407244131" 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o.d" -o ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/e59d2768b76aa9830de6b6c0e4d1f6f4edc8c283 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/cef59eb8c77147e7927c1e421af6d84a0c0f5ef1 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/367c78fa90b80dcabfaab92a6ea1ff0f8593d53c .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/6e073e62de0fc91076bd85b6ac6bc64327d879c0 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/20e7ac631bf1eaa34e4361f74ea0347e77a7132b .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/b750c45b300d0cfdb77f652d16024942622bfdcd .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/7c4f94ceb2a8f4ac9581ffdf52ed42259129463b .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/8d85f1b160cf21ce553fb9a0f4a58301c1259697 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/2666064ba16918b8b73b322907257db82b322af9 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/5fb856401305404324ed931b0e0b25cb37d769f0 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o: ../src/Mc32IAMSPIUtil.c  .generated_files/flags/default/20e54675cdd611a557a220fd9d7d08f7a765ac9 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ../src/Mc32IAMSPIUtil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o: ../src/Mc32SpiUtil.c  .generated_files/flags/default/5ca756fa6e963fa7be30fe26efbdd3bb32da5d6a .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ../src/Mc32SpiUtil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o: ../src/Mc32Debounce.c  .generated_files/flags/default/48ffb8f4b2e16c3720763fa5f9e63ccdb8b2b50c .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ../src/Mc32Debounce.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o: ../src/Hourglass_chars.c  .generated_files/flags/default/60c6e985d250c447ff0f86105f7da5639da664d9 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d" -o ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o ../src/Hourglass_chars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o: ../src/Hourglass_particules.c  .generated_files/flags/default/724c7cdb8988ce8f158a7bb80666a849a1b3edc0 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d" -o ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o ../src/Hourglass_particules.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/a4dfb6bfe611eed9ade603c8ca9ae282b252428f .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o: ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver.c  .generated_files/flags/default/3d8a16bef7fa173960ac275c1f58341f0eed8432 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1368423593" 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o.d" -o ${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o: ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver_HL.c  .generated_files/flags/default/6c350a5da4e5900c7aab9fb962e98fe3377980ed .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1368423593" 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o.d" -o ${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver_HL.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o: ../src/Invn/Devices/Drivers/IAM20680/Iam20680SelfTest.c  .generated_files/flags/default/d5079175197b0928cba562409cd6bbd582f3e5f7 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1368423593" 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o.d" -o ${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o ../src/Invn/Devices/Drivers/IAM20680/Iam20680SelfTest.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o: ../src/Invn/Devices/Drivers/IAM20680/Iam20680Transport.c  .generated_files/flags/default/94cfc6b71a3f4d45a8765f8ec4a1610b4f0dfbb1 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1368423593" 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o.d 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o.d" -o ${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o ../src/Invn/Devices/Drivers/IAM20680/Iam20680Transport.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/DataConverter.o: ../src/Invn/EmbUtils/DataConverter.c  .generated_files/flags/default/e9756fa35f070af82e5cbb018f933a1257ed47d8 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/DataConverter.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/DataConverter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/DataConverter.o.d" -o ${OBJECTDIR}/_ext/429725745/DataConverter.o ../src/Invn/EmbUtils/DataConverter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/ErrorHelper.o: ../src/Invn/EmbUtils/ErrorHelper.c  .generated_files/flags/default/753a1bdfad24e2c00670e48b7a07e4ebfd78c867 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/ErrorHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d" -o ${OBJECTDIR}/_ext/429725745/ErrorHelper.o ../src/Invn/EmbUtils/ErrorHelper.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/InvProtocol.o: ../src/Invn/EmbUtils/InvProtocol.c  .generated_files/flags/default/321649ff8f373d90932387c6ef588b10563ea419 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvProtocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvProtocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/InvProtocol.o.d" -o ${OBJECTDIR}/_ext/429725745/InvProtocol.o ../src/Invn/EmbUtils/InvProtocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/InvQueue.o: ../src/Invn/EmbUtils/InvQueue.c  .generated_files/flags/default/9321048637fc36ac284f1faf13fc73bdcf92b2fc .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvQueue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/InvQueue.o.d" -o ${OBJECTDIR}/_ext/429725745/InvQueue.o ../src/Invn/EmbUtils/InvQueue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/InvScheduler.o: ../src/Invn/EmbUtils/InvScheduler.c  .generated_files/flags/default/1bcdc7d4ed7afdbdadb45b5d34c83ca4d68bf98 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvScheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvScheduler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/InvScheduler.o.d" -o ${OBJECTDIR}/_ext/429725745/InvScheduler.o ../src/Invn/EmbUtils/InvScheduler.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/Message.o: ../src/Invn/EmbUtils/Message.c  .generated_files/flags/default/6f46650e87000afc435dfc4ec0a4a4837de9fdd7 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/Message.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/Message.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/Message.o.d" -o ${OBJECTDIR}/_ext/429725745/Message.o ../src/Invn/EmbUtils/Message.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/RingByteBuffer.o: ../src/Invn/EmbUtils/RingByteBuffer.c  .generated_files/flags/default/e4deb749b960a1ffb98bab8f85dbc6cc4f183385 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d" -o ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o ../src/Invn/EmbUtils/RingByteBuffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o: ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c  .generated_files/flags/default/294604778321d4a70ea63bc48027387beafb0556 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1407244131" 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/1407244131/drv_tmr_static.o ../src/system_config/default/framework/driver/tmr/src/drv_tmr_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o: ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c  .generated_files/flags/default/676a278ba2f22540ead973f8199df0957970f836 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1407244131" 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o.d" -o ${OBJECTDIR}/_ext/1407244131/drv_tmr_mapping.o ../src/system_config/default/framework/driver/tmr/src/drv_tmr_mapping.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/bc67bc0874ac59672449ff1c8c102d9ee598986f .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/2dfa6ec185f4cc5a078883335c1e3287675b720f .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/64f61206462a8a286e6311274a1585a72c1b2b40 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/381728c12f5a7c826a39ab429f74aa9340999383 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/b0ec239573179be2ee131549793154a02a1092f0 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/8ee2a489d933faadb074c301cd0e9ed5c7c58353 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/6ea1dc7adb24c50b4d9d331fdaed08e906bda3f5 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/8d47576d70e8999b60cb0721d184d2b35010af1 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/76a7cddff3288d5e449d2102b49dc41a7c9c91fb .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/dd277fe63a1e85f6641c17dc7955fe9c8d6ac71 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o: ../src/Mc32IAMSPIUtil.c  .generated_files/flags/default/e6fd20fa25eb6392beaf3b9bd101f97e4df70e46 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ../src/Mc32IAMSPIUtil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o: ../src/Mc32SpiUtil.c  .generated_files/flags/default/b572fde90dca2f08d38e98bcadca42c9068f72f0 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ../src/Mc32SpiUtil.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o: ../src/Mc32Debounce.c  .generated_files/flags/default/d439e7b0d6983974bd1f7f4d3df0d02ea732e762 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ../src/Mc32Debounce.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o: ../src/Hourglass_chars.c  .generated_files/flags/default/ac416aced7f9d94c7a12a292167c7e87fff9a095 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d" -o ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o ../src/Hourglass_chars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o: ../src/Hourglass_particules.c  .generated_files/flags/default/158e93418289398790f12e4bf7de553368fe57a8 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d" -o ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o ../src/Hourglass_particules.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/ff7a32548d3934dd5c53aad7661a0551bea20b5 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o: ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver.c  .generated_files/flags/default/65d2fbc25f7c6d8e17ec0db7f4d9552f38173823 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1368423593" 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o.d" -o ${OBJECTDIR}/_ext/1368423593/Iam20680Driver.o ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o: ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver_HL.c  .generated_files/flags/default/2b570ebd15a859f4b834262b5a5622d3a192c769 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1368423593" 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o.d" -o ${OBJECTDIR}/_ext/1368423593/Iam20680Driver_HL.o ../src/Invn/Devices/Drivers/IAM20680/Iam20680Driver_HL.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o: ../src/Invn/Devices/Drivers/IAM20680/Iam20680SelfTest.c  .generated_files/flags/default/cc451593be7a087b88de8d9231bfbf9e78cadc1c .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1368423593" 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o.d" -o ${OBJECTDIR}/_ext/1368423593/Iam20680SelfTest.o ../src/Invn/Devices/Drivers/IAM20680/Iam20680SelfTest.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o: ../src/Invn/Devices/Drivers/IAM20680/Iam20680Transport.c  .generated_files/flags/default/e3486481e19ab794b89df204c549192f9210f41f .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/1368423593" 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o.d 
	@${RM} ${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o.d" -o ${OBJECTDIR}/_ext/1368423593/Iam20680Transport.o ../src/Invn/Devices/Drivers/IAM20680/Iam20680Transport.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/DataConverter.o: ../src/Invn/EmbUtils/DataConverter.c  .generated_files/flags/default/dfb393bc6a114e47c28bf8845105701e2abdaffc .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/DataConverter.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/DataConverter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/DataConverter.o.d" -o ${OBJECTDIR}/_ext/429725745/DataConverter.o ../src/Invn/EmbUtils/DataConverter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/ErrorHelper.o: ../src/Invn/EmbUtils/ErrorHelper.c  .generated_files/flags/default/cb226724cb8eec7c6cab51c74ee6dd72d5935311 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/ErrorHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d" -o ${OBJECTDIR}/_ext/429725745/ErrorHelper.o ../src/Invn/EmbUtils/ErrorHelper.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/InvProtocol.o: ../src/Invn/EmbUtils/InvProtocol.c  .generated_files/flags/default/9d5a4b9bf123aac80024dfaa461b239ba364149b .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvProtocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvProtocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/InvProtocol.o.d" -o ${OBJECTDIR}/_ext/429725745/InvProtocol.o ../src/Invn/EmbUtils/InvProtocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/InvQueue.o: ../src/Invn/EmbUtils/InvQueue.c  .generated_files/flags/default/f77fc09e45e39171c7ceec46dde8318be69935c6 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvQueue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/InvQueue.o.d" -o ${OBJECTDIR}/_ext/429725745/InvQueue.o ../src/Invn/EmbUtils/InvQueue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/InvScheduler.o: ../src/Invn/EmbUtils/InvScheduler.c  .generated_files/flags/default/4d5f6a6708d093112f2146a3ccdf51886806057a .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvScheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/InvScheduler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/InvScheduler.o.d" -o ${OBJECTDIR}/_ext/429725745/InvScheduler.o ../src/Invn/EmbUtils/InvScheduler.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/Message.o: ../src/Invn/EmbUtils/Message.c  .generated_files/flags/default/c8a53c809445bd055bfffb9e126db660093c5bc9 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/Message.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/Message.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/Message.o.d" -o ${OBJECTDIR}/_ext/429725745/Message.o ../src/Invn/EmbUtils/Message.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/429725745/RingByteBuffer.o: ../src/Invn/EmbUtils/RingByteBuffer.c  .generated_files/flags/default/a05a1acc269caa0004e41abe843457711afee036 .generated_files/flags/default/3669c7edc8e08a4cf67f1fcce38c43082d8244f9
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-toplevel-reorder -I"../../../../framework" -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../framework" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d" -o ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o ../src/Invn/EmbUtils/RingByteBuffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
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
