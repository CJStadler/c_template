CC = gcc
CFLAGS = -Wall
OBJFILES = src/main.o src/test_function.o
TARGET = bin/test

all: $(TARGET)

run: $(TARGET)
	$(TARGET)

$(TARGET): $(OBJFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES)

clean:
	rm -f $(TARGET) $(OBJFILES)
