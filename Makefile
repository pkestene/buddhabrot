CC=gcc
sources=buddhabrot.c

CFLAGS=-g -O3 -Wall $(shell pkg-config --cflags libtiff-4)

LDFLAGS=$(shell pkg-config --libs libtiff-4) -lm

all:
	$(CC) $(CFLAGS) $(sources) -o buddhabrot $(LDFLAGS)
