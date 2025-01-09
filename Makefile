all: battery

clean:
	rm -f battery libbattery.o

# CFLAGS=-Wall

libbattery.o: libbattery.c battery.h
	$(CC) $(CFLAGS) libbattery.c -o libbattery.o

battery: battery.c libbattery.c battery.h
	$(CC) $(CFLAGS) battery.c libbattery.c -lm -o battery
