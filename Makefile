# AUTHOR: Martin Kostelník (xkoste12)
# DATE:   18.11.2020

CC=gcc
OBJS=ISAMIBModule.o

CFLAGS=-I. `net-snmp-config --cflags`
DLFLAGS=-fPIC -shared

.PHONY: all

all: ISAMIBModule.so

.PHONY: clean

clean:
	rm -f $(OBJS) ISAMIBModule.so xkoste12.tar

.PHONY: pack

pack:
	cp doc/manual.pdf manual.pdf
	tar -cvf xkoste12.tar ISAMIBModule.c ISAMIBModule.h Makefile README.md ISA-MIB.txt manual.pdf
	rm -f manual.pdf

ISAMIBModule.so: ISAMIBModule.c Makefile
	$(CC) $(CFLAGS) $(DLFLAGS) -c -o ISAMIBModule.o ISAMIBModule.c
	$(CC) $(CFLAGS) $(DLFLAGS) -o ISAMIBModule.so ISAMIBModule.o
