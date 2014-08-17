################################################################################
##  File        : __lz.mk                                                     ##
##  Description : controlp makefile environment                               ##
##  Author      : LaZyDev                                                     ##
##  Contacts    : chriskr7@gmail.com                                          ##
################################################################################

#
# Compile Environment
#

TARGET = MAC

XCC = g++

# Home Path
CP_HOME = $(CP_DIR)
CP_CHOME = $(CP_HOME)

# Other Path
CP_LIB = $(CP_HOME)/lib
CP_ENV = $(CP_HOME)/env
CP_INC = $(CP_HOME)/inc
CP_SRC = $(CP_HOME)/src

#OPT Mode Define
LINUX.OMODE = -w -fPIC
MAC.OMODE = -w -fPIC

#Debug Optioin
LINUX.DEBUG_OPT = -g -DDEBUG
MAC.DEBUG_OPT = -g -DDEBUG

#THREAD Compile Option Define
LINUX.THREAD.CFLAGS = -D_THREAD_SAFE -D_GNU_SOURCE
MAC.THREAD.CFLAGS = -D_THREAD_SAFE -D_GNU_SOURCE

#PTHREAD Load Option Define
LINUX.PTHREAD.LFLAGS=-lpthread -ldl -lrt
MAC.PTHREAD.LFLAGS=-lpthread -ldl

#SOCKET Load Option Define
LINUX.SOCKET.LFLAGS=-lnsl
MAC.SOCKET.LFLAGS=

#ISAM Load Option Define
LINUX.CISAM.LFLAGS=-lisam
MAC.CISAM.LFLAGS=-lisam

#MATH Load Option
LINUX.MATH.LFLAGS=-lm
MAC.MATH.LFLAGS=-lm

#Compile Option Define
CFLAGS = -I$(CP_INC) $($(TARGET).OMODE) $($(TARGET).THREAD.CFLAGS) $($(TARGET).PTHREAD.LFLAGS)
DCFLAGS = -I$(CP_INC) $($(TARGET).OMODE) $($(TARGET).THREAD.CFLAGS) $($(TARGET).DEBUG_OPT)
LFLAGS=$($(TARGET).PTHREAD.LFLAGS) $($(TARGET).SOCKET.LFLAGS) $($(TARGET).MATH.LFLAGS -L$(CP_LIB)
# CPPFLAGS = -I$(BOOST_INC) $(LINUX.CFLAGS) -L/usr/lib/gcc/x86_64-redhat-linux/4.1.1/libstdc++.so
# DCPPFLAGS = -I$(BOOST_INC) $(LINUX.CFLAGS) $($(TARGET).DEBUG_OPT) -L/usr/lib/gcc/x86_64-redhat-linux/4.1.1/libstdc++.so
