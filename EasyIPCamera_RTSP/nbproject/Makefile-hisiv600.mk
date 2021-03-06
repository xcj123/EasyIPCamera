#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=arm-hisiv600-linux-gnueabi-gcc
CCC=arm-hisiv600-linux-gnueabi-g++
CXX=arm-hisiv600-linux-gnueabi-g++
FC=gfortran
AS=arm-hisiv600-linux-gnueabi-as

# Macros
CND_PLATFORM=hisiv600-Linux
CND_DLIB_EXT=so
CND_CONF=hisiv600
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/GetVPSSPSPPS.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L../Lib/${CND_CONF}_shared -LlibEasyRTSPClient/Lib/${CND_CONF}

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_CONF}/easyipcamera_rtsp

${CND_CONF}/easyipcamera_rtsp: ${OBJECTFILES}
	${MKDIR} -p ${CND_CONF}
	${LINK.cc} -o ${CND_CONF}/easyipcamera_rtsp ${OBJECTFILES} ${LDLIBSOPTIONS} -leasyrtspclient -leasyipcamera -lrt -lpthread

${OBJECTDIR}/GetVPSSPSPPS.o: GetVPSSPSPPS.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -IlibEasyRTSPClient/Include -I../Include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/GetVPSSPSPPS.o GetVPSSPSPPS.cpp

${OBJECTDIR}/main.o: main.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -IlibEasyRTSPClient/Include -I../Include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
