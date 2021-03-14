SOURCE = dnsflood.c
TARGET = dnsflood
TARBALL = dnsflood.tar.gz

all : $(TARGET)

$(TARGET) : $(SOURCE)
	gcc -std=c99 -o $(TARGET) -g -DDEBUG $(SOURCE)

tarball :
	tar -c -z -f $(TARBALL) $(SOURCE) makefile

clean :
	rm -f $(TARGET)
	rm -f $(TARBALL)
