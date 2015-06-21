
TARGET = iopcmsgbus.elf

CFLAGS += -I$(SDKSTAGE)/usr/include/
CFLAGS += 

LDFLAGS += -L$(SDKSTAGE)/usr/lib/ 
LDFLAGS += -lc -lpthread 
LDFLAGS += -ljansson
LDFLAGS += -liopcmsgbus
#LDFLAGS += -ldbus

INCLUDES += 

SRC = 
SRC += main.c

include Makefile.include
