TARGET=mytest.out
USN?=PES1200000
CC=gcc
CFLAGS=-g -Wall -Wpedantic -Werror -std=c99

all: $(TARGET)
	./$(TARGET)

$(TARGET): $(wildcard PES*.c) intal_sampletest.c
	$(CC) $(CFLAGS) $(wildcard PES*.c) intal_sampletest.c -o mytest.out

init:
	touch $(USN).c
	touch $(USN).txt
