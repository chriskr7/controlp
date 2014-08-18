include $(CP_HOME)/env/__lz.mk

PROGS= test_dt

LDFLAG=$(CP_LIB)/liblzutil.a


# Default Rules:
.c:
	$(CC) -o $(CFLAGS) $(LFLAGS) $< -o $@

all: $(PROGS)

$(PROGS): test_dt.c
	$(CC) -o $@ $@.c -I$(CP_INC)/lzutil/ $(CFLAGS) $(LFLAGS) $(LDFLAG) -lm


clean:
	-rm -f $(PROGS) *.o
