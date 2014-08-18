include $(CP_HOME)/env/__lz.mk

PROGS= test_util

LDFLAG= $(CP_LIB)/liblzutil.a


# Default Rules:
.c:
	$(CC) -o $(CFLAGS) $(LFLAGS) $< -o $@

all: $(PROGS)

$(PROGS): test_util.c
	$(CC) -o $@ $@.c -I$(CP_INC)/lzutil/ $(LFLAGS) $(LDFLAG) -lm


clean:
	-rm -f $(PROGS) *.o
