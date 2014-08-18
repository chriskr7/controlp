include $(CP_HOME)/env/__lz.mk

PROGS= test_logger

LDFLAG= $(CP_LIB)/liblzutil.a


# Default Rules:
.c:
	$(CC) -o $(CFLAGS) $(LFLAGS) $< -o $@

all: $(PROGS)

$(PROGS): test_logger.c
	$(CC) -o $@ $@.c -I$(CP_INC)/lzutil/ $(LFLAGS) $(LDFLAG) -lm


clean:
	-rm -f $(PROGS) *.o
