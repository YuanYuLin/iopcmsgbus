
TARGET = iopcmsgbus.elf

CFLAGS += -I$(SDKSTAGE)/usr/include/iopcmsgbus
CFLAGS += -I$(SDKSTAGE)/usr/include/
CFLAGS += 

LDFLAGS += -L$(SDKSTAGE)/usr/lib/ 
LDFLAGS += -lc -lpthread 
LDFLAGS += -liopcmsgbus

SRC = 
SRC += main.c

include Makefile.include
