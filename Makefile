#Makefile:
#	make file for this mini shell project
#

#compiler
CC = gcc
CFlags = -Wall -Wextra -g
LDFlags = 

#source files
srcs = main.c
objs = $(srcs:.c=.o)

#output binary
target = chell

.PHONY: all clean

all: $(target)

$(target): $(objs)
	$(CC) $(CFlags) $(objs) -o $(target) $(LDFlags)

%.o: %.c
	$(CC) $(CFlags) -c $< -o $@

clean:
	rm -f $(objs) $(target)
