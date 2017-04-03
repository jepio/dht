CFLAGS = -g -Wall -fsanitize=address
LDLIBS = -lcrypt -lcrypto -fsanitize=address -static-libasan

dht-example: dht-example.o dht.o

all: dht-example

clean:
	-rm -f dht-example dht-example.o dht-example.id dht.o *~ core
