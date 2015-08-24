EXECPATH = bin
OBJPATH = obj
INCLUDEPATH = include
SRCPATH = src
CC = gcc

EXEC = $(EXECPATH)/ooc
OBJS = $(OBJPATH)/arraylist.o $(OBJPATH)/linkedlist.o $(OBJPATH)/main.o

all: $(OBJS) $(EXEC)

$(EXECPATH)/ooc: $(OBJS)
	$(CC) -g -o $@ $(OBJS)

$(OBJPATH)/arraylist.o: $(SRCPATH)/arraylist.c
	$(CC) -g -c $< -I $(INCLUDEPATH) -o $@

$(OBJPATH)/linkedlist.o: $(SRCPATH)/linkedlist.c
	$(CC) -g -c $< -I $(INCLUDEPATH) -o $@

$(OBJPATH)/main.o: $(SRCPATH)/main.c
	$(CC) -g -c $< -I $(INCLUDEPATH) -o $@

clean:
	-rm -rf $(EXEC) $(OBJS)