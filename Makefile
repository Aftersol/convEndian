all: conv_endian.o libconvendian-c.a

CFLAGS = -c -O2 -Wall -Wpedantic

conv_endianness.o: conv_endian.c
		gcc -O ${CFLAGS} conv_endian.c
		ar rcs libconvendian-c.a conv_endian.o

libconv-endianness-c.a: conv_endianness.o
		ar rcs libconvendian-c.a conv_endian.o

libs: libconvendian-c.a

clean:
		rm -f *.o *.a *.gch 