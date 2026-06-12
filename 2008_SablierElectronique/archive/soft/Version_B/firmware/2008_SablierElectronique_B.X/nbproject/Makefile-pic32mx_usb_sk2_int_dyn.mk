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
ifeq "$(wildcard nbproject/Makefile-local-pic32mx_usb_sk2_int_dyn.mk)" "nbproject/Makefile-local-pic32mx_usb_sk2_int_dyn.mk"
include nbproject/Makefile-local-pic32mx_usb_sk2_int_dyn.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mx_usb_sk2_int_dyn
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c ../src/Invn/Drivers/Iam20680/Iam20680Transport.c ../src/Invn/Drivers/Iam20680/Iam20680Driver.c ../src/Invn/EmbUtils/DataConverter.c ../src/Invn/EmbUtils/ErrorHelper.c ../src/Invn/EmbUtils/Message.c ../src/Invn/EmbUtils/RingByteBuffer.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c ../src/app.c ../src/main.c ../src/app_hourglass.c ../src/GesFifoTh32.c ../src/Hourglass_chars.c ../src/Hourglass_particules.c ../src/Mc32Debounce.c ../src/Mc32IAMSPIUtil.c ../src/Mc32SpiUtil.c ../src/Mc32gest_RS232.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c ../../../../../../bsp/pic32mx_skes/bsp.c ../../../../../../bsp/pic32mx_skes/Mc32Delays.c ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o ${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o ${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o ${OBJECTDIR}/_ext/429725745/DataConverter.o ${OBJECTDIR}/_ext/429725745/ErrorHelper.o ${OBJECTDIR}/_ext/429725745/Message.o ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_hourglass.o ${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/326400065/bsp.o ${OBJECTDIR}/_ext/326400065/Mc32Delays.o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/1150414583/sys_devcon.o ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ${OBJECTDIR}/_ext/1774247193/system_init.o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ${OBJECTDIR}/_ext/1774247193/system_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o.d ${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o.d ${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o.d ${OBJECTDIR}/_ext/429725745/DataConverter.o.d ${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d ${OBJECTDIR}/_ext/429725745/Message.o.d ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_hourglass.o.d ${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o.d ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d ${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d ${OBJECTDIR}/_ext/692885480/usb_device.o.d ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/326400065/bsp.o.d ${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d ${OBJECTDIR}/_ext/1774247193/system_init.o.d ${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d ${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d ${OBJECTDIR}/_ext/1774247193/system_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o ${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o ${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o ${OBJECTDIR}/_ext/429725745/DataConverter.o ${OBJECTDIR}/_ext/429725745/ErrorHelper.o ${OBJECTDIR}/_ext/429725745/Message.o ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_hourglass.o ${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/326400065/bsp.o ${OBJECTDIR}/_ext/326400065/Mc32Delays.o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/1150414583/sys_devcon.o ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ${OBJECTDIR}/_ext/1774247193/system_init.o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ${OBJECTDIR}/_ext/1774247193/system_tasks.o

# Source Files
SOURCEFILES=../src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c ../src/Invn/Drivers/Iam20680/Iam20680Transport.c ../src/Invn/Drivers/Iam20680/Iam20680Driver.c ../src/Invn/EmbUtils/DataConverter.c ../src/Invn/EmbUtils/ErrorHelper.c ../src/Invn/EmbUtils/Message.c ../src/Invn/EmbUtils/RingByteBuffer.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c ../src/app.c ../src/main.c ../src/app_hourglass.c ../src/GesFifoTh32.c ../src/Hourglass_chars.c ../src/Hourglass_particules.c ../src/Mc32Debounce.c ../src/Mc32IAMSPIUtil.c ../src/Mc32SpiUtil.c ../src/Mc32gest_RS232.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c ../../../../../../bsp/pic32mx_skes/bsp.c ../../../../../../bsp/pic32mx_skes/Mc32Delays.c ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c


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
	${MAKE}  -f nbproject/Makefile-pic32mx_usb_sk2_int_dyn.mk dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o: ../src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1330454935" 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o.d" -o ${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o ../src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o: ../src/Invn/Drivers/Iam20680/Iam20680Transport.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1330454935" 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o.d 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o.d" -o ${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o ../src/Invn/Drivers/Iam20680/Iam20680Transport.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o: ../src/Invn/Drivers/Iam20680/Iam20680Driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1330454935" 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o.d" -o ${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o ../src/Invn/Drivers/Iam20680/Iam20680Driver.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/429725745/DataConverter.o: ../src/Invn/EmbUtils/DataConverter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/DataConverter.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/DataConverter.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/429725745/DataConverter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/429725745/DataConverter.o.d" -o ${OBJECTDIR}/_ext/429725745/DataConverter.o ../src/Invn/EmbUtils/DataConverter.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/429725745/ErrorHelper.o: ../src/Invn/EmbUtils/ErrorHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/ErrorHelper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d" -o ${OBJECTDIR}/_ext/429725745/ErrorHelper.o ../src/Invn/EmbUtils/ErrorHelper.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/429725745/Message.o: ../src/Invn/EmbUtils/Message.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/Message.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/Message.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/429725745/Message.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/429725745/Message.o.d" -o ${OBJECTDIR}/_ext/429725745/Message.o ../src/Invn/EmbUtils/Message.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/429725745/RingByteBuffer.o: ../src/Invn/EmbUtils/RingByteBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d" -o ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o ../src/Invn/EmbUtils/RingByteBuffer.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1944736928" 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d" -o ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1944736928" 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app_hourglass.o: ../src/app_hourglass.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_hourglass.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_hourglass.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_hourglass.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_hourglass.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_hourglass.o ../src/app_hourglass.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o: ../src/GesFifoTh32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o.d" -o ${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o ../src/GesFifoTh32.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o: ../src/Hourglass_chars.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d" -o ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o ../src/Hourglass_chars.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o: ../src/Hourglass_particules.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d" -o ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o ../src/Hourglass_particules.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o: ../src/Mc32Debounce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ../src/Mc32Debounce.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o: ../src/Mc32IAMSPIUtil.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ../src/Mc32IAMSPIUtil.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o: ../src/Mc32SpiUtil.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ../src/Mc32SpiUtil.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o: ../src/Mc32gest_RS232.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o ../src/Mc32gest_RS232.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/bsp.o: ../../../../../../bsp/pic32mx_skes/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/bsp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/bsp.o.d" -o ${OBJECTDIR}/_ext/326400065/bsp.o ../../../../../../bsp/pic32mx_skes/bsp.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/Mc32Delays.o: ../../../../../../bsp/pic32mx_skes/Mc32Delays.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32Delays.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32Delays.o ../../../../../../bsp/pic32mx_skes/Mc32Delays.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o: ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/102310384" 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1150414583/sys_devcon.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1150414583" 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1150414583/sys_devcon.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1150414583" 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1956551008/sys_ports_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1956551008" 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1774247193/system_init.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_init.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_init.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1774247193/system_interrupt.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1774247193/system_exceptions.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1774247193/system_tasks.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_tasks.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o: ../src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1330454935" 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o.d" -o ${OBJECTDIR}/_ext/1330454935/Iam20680Driver_HL.o ../src/Invn/Drivers/Iam20680/Iam20680Driver_HL.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o: ../src/Invn/Drivers/Iam20680/Iam20680Transport.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1330454935" 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o.d 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o.d" -o ${OBJECTDIR}/_ext/1330454935/Iam20680Transport.o ../src/Invn/Drivers/Iam20680/Iam20680Transport.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o: ../src/Invn/Drivers/Iam20680/Iam20680Driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1330454935" 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o.d" -o ${OBJECTDIR}/_ext/1330454935/Iam20680Driver.o ../src/Invn/Drivers/Iam20680/Iam20680Driver.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/429725745/DataConverter.o: ../src/Invn/EmbUtils/DataConverter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/DataConverter.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/DataConverter.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/429725745/DataConverter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/429725745/DataConverter.o.d" -o ${OBJECTDIR}/_ext/429725745/DataConverter.o ../src/Invn/EmbUtils/DataConverter.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/429725745/ErrorHelper.o: ../src/Invn/EmbUtils/ErrorHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/ErrorHelper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/429725745/ErrorHelper.o.d" -o ${OBJECTDIR}/_ext/429725745/ErrorHelper.o ../src/Invn/EmbUtils/ErrorHelper.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/429725745/Message.o: ../src/Invn/EmbUtils/Message.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/Message.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/Message.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/429725745/Message.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/429725745/Message.o.d" -o ${OBJECTDIR}/_ext/429725745/Message.o ../src/Invn/EmbUtils/Message.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/429725745/RingByteBuffer.o: ../src/Invn/EmbUtils/RingByteBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/429725745" 
	@${RM} ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/429725745/RingByteBuffer.o.d" -o ${OBJECTDIR}/_ext/429725745/RingByteBuffer.o ../src/Invn/EmbUtils/RingByteBuffer.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1944736928" 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o.d" -o ${OBJECTDIR}/_ext/1944736928/drv_tmr_mapping.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_mapping.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1944736928" 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/1944736928/drv_tmr_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/driver/tmr/src/drv_tmr_static.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app_hourglass.o: ../src/app_hourglass.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_hourglass.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_hourglass.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_hourglass.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_hourglass.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_hourglass.o ../src/app_hourglass.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o: ../src/GesFifoTh32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o.d" -o ${OBJECTDIR}/_ext/1360937237/GesFifoTh32.o ../src/GesFifoTh32.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o: ../src/Hourglass_chars.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o.d" -o ${OBJECTDIR}/_ext/1360937237/Hourglass_chars.o ../src/Hourglass_chars.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o: ../src/Hourglass_particules.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o.d" -o ${OBJECTDIR}/_ext/1360937237/Hourglass_particules.o ../src/Hourglass_particules.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o: ../src/Mc32Debounce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32Debounce.o ../src/Mc32Debounce.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o: ../src/Mc32IAMSPIUtil.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32IAMSPIUtil.o ../src/Mc32IAMSPIUtil.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o: ../src/Mc32SpiUtil.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32SpiUtil.o ../src/Mc32SpiUtil.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o: ../src/Mc32gest_RS232.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o.d" -o ${OBJECTDIR}/_ext/1360937237/Mc32gest_RS232.o ../src/Mc32gest_RS232.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o: ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1585079243" 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1585079243/drv_usbfs_device.o ../../../../../../framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/bsp.o: ../../../../../../bsp/pic32mx_skes/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/bsp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/bsp.o.d" -o ${OBJECTDIR}/_ext/326400065/bsp.o ../../../../../../bsp/pic32mx_skes/bsp.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/Mc32Delays.o: ../../../../../../bsp/pic32mx_skes/Mc32Delays.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32Delays.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32Delays.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32Delays.o ../../../../../../bsp/pic32mx_skes/Mc32Delays.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdc.o ../../../../../../bsp/pic32mx_skes/Mc32DriverAdc.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverAdcAlt.o ../../../../../../bsp/pic32mx_skes/Mc32DriverAdcAlt.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o: ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32DriverLcd.o ../../../../../../bsp/pic32mx_skes/Mc32DriverLcd.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o: ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/326400065" 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o.d" -o ${OBJECTDIR}/_ext/326400065/Mc32CoreTimer.o ../../../../../../bsp/pic32mx_skes/Mc32CoreTimer.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/102310384" 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/102310384/sys_clk_pic32mx.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1150414583/sys_devcon.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1150414583" 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1150414583/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1150414583/sys_devcon.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1150414583" 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1150414583/sys_devcon_pic32mx.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1956551008/sys_ports_static.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1956551008" 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1956551008/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1956551008/sys_ports_static.o ../src/system_config/pic32mx_usb_sk2_int_dyn/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1774247193/system_init.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_init.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_init.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_init.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1774247193/system_interrupt.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_interrupt.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_interrupt.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1774247193/system_exceptions.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_exceptions.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_exceptions.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1774247193/system_tasks.o: ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1774247193" 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1774247193/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1774247193/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../../../../../../bsp/pic32mx_usb_sk2" -I"/system_config/pic32mx_usb_sk2_int_dyn" -I"/pic32mx_usb_sk2_int_dyn" -I"/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"/system_config/pic32mx_usb_sk2_int_dyn/bsp" -I"../src" -I"../src/system_config/pic32mx_usb_sk2_int_dyn" -I"../src/pic32mx_usb_sk2_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mx_usb_sk2_int_dyn/framework" -I"../../../../../../bsp/pic32mx_skes" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1774247193/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1774247193/system_tasks.o ../src/system_config/pic32mx_usb_sk2_int_dyn/system_tasks.c    -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique_B.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_pic32mx_usb_sk2_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/2008_SablierElectronique_B.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mx_usb_sk2_int_dyn
	${RM} -r dist/pic32mx_usb_sk2_int_dyn

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
