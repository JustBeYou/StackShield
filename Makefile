# Makefile template for shared library

FORTIFY_1 = #-D_FORTIFY_SOURCE=1
FORTIFY_2 = -D_FORTIFY_SOURCE=2
FULL_RELRO = -Wl,-z,relro,-z,now
STACK_CANARY = -fstack-protector-all
PIE = -fPIC -pie

CC = gcc # C compiler
STACKSHIELD_IMPROVE= ./stackshield.py
# TODO: make it work with optimization 2
CFLAGS = $(PIE) $(STACK_CANARY) $(FULL_RELRO) $(FORTIFY_1) -Wall -Wextra -O1 -g # C flags
LDFLAGS = $(FULL_RELRO) $(FORTIFY_1) -shared  # linking flags
LIBFLAGS = -L$(shell pwd) -lstackshield -lncurses
RM = rm -f  # rm command
TARGET_LIB = libstackshield.so # target lib

SRCS = stackshield.c # source files
OBJS = $(SRCS:.c=.o)

.PHONY: all
all: utils ${TARGET_LIB} test

utils:
	nasm -felf64 utils.asm

$(TARGET_LIB): $(OBJS)
	$(CC) ${LDFLAGS} -o $@ utils.o $^

$(SRCS:.c=.d):%.d:%.c
	$(CC) $(CFLAGS) -MM $< >$@

include $(SRCS:.c=.d)

.PHONY: clean
clean:
	${RM} ${TARGET_LIB} ${OBJS} $(SRCS:.c=.d) test utils.o

.PHONY: test
test:
	$(CC) $(CFLAGS) -S -masm=intel test.c -o test.s
	$(STACKSHIELD_IMPROVE) test.s	
	$(CC) -masm=intel -c $(CFLAGS) test.s -o test.o
	$(CC) $(CFLAGS) $(LIBFLAGS) test.o -o test
