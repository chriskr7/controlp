include $(CP_HOME)/env/__lz.mk
SHELL=/bin/sh

PROGS=a

# Default Rules:
.c:
	$(CC) -o $(CFLAGS) $(LFLAGS) $< -o $@

all: $(PROGS)

$(PROGS): a.c
	$(CC) -o $@ $@.c -I$(CP_INC) $(CFLAGS) $(LFLAGS)

clean:
	-rm -f $(PROGS) *  
