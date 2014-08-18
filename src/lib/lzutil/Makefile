include $(CP_HOME)/env/__lz.mk

LIBARC=liblzutil.a

LIBSRC=lz_typeconv.c lz_datetime.c lz_logger.c

OBJSRC=$(LIBSRC:.c=.o)

LIBINC=-I/Users/ChrisHan/work/controlp/inc/lzutil

# Default Rules:
.c:
	$(CC) -o $(CFLAGS) $(LFLAGS) $< -o $@
.c.a:
	$(CC) -c $(CFLAGS)
	ar rv $(LIBARC) $*.o
	rm -f $*.o

all: $(LIBARC)

$(LIBARC): $(LIBSRC)
	$(CC) -c $(CFLAGS) $(LIBINC) $(LFLAGS) $(LIBSRC)
	@ar rv $(LIBARC) $(OBJSRC)
	@rm -f $(OBJSRC)

install: all
	cp $(LIBARC) $(CP_LIB)
	rm -f $(LIBARC)

clean:
	-rm -f $(PROGS) *.o
