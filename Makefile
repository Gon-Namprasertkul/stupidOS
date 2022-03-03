OBJS	= obj/main.o obj/clock.o obj/calculator.o obj/random.o
SOURCE	= main.c apps/clock/main.c apps/calculator/main.c apps/random/main.c include/clear.h impl/clear.c
OUT	= stupidOS bin/clock bin/calculator bin/random
CC	 = cc
FLAGS	 = -g -w -c -I.

all: $(OBJS)
	chmod +x menu.py
	$(CC) obj/main.o -o stupidOS
	$(CC) obj/clock.o -o bin/clock
	$(CC) obj/calculator.o -o bin/calculator
	$(CC) obj/random.o -o bin/random

obj/main.o: main.c
	$(CC) $(FLAGS) main.c -std=c99 -o obj/main.o

obj/clock.o: apps/clock/main.c
	$(CC) $(FLAGS) apps/clock/main.c -o obj/clock.o -std=c99

obj/calculator.o: apps/calculator/main.c
	$(CC) $(FLAGS) apps/calculator/main.c -o obj/calculator.o -std=c99

obj/random.o: apps/random/main.c
	$(CC) $(FLAGS) apps/random/main.c -o obj/random.o -std=c99


install:
	mkdir ~/.stupidOS
	cp stupidOS /usr/local/bin/
	cp -r apps ~/.stupidOS/
	cp -r bin ~/.stupidOS
	cp menu.py ~/.stupidOS/

uninstall:
	rm /usr/local/bin/stupidOS
	rm -r ~/.stupidOS
clean:
	rm -f $(OBJS) $(OUT)
