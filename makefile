# Compiler to use
CC = g++

# Compiler flags
CFLAGS = -Wall -std=c++11

# Name of the executable
TARGET = main

# Source files
SOURCES = main.cpp

# Header files
HEADERS = HashTable.h

# Object files
OBJECTS = $(SOURCES:.cpp=.o)

# Default rule
all: $(TARGET)

# Rule to link the executable
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

# Rule to compile the source files
main.o: main.cpp $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to clean the workspace
clean:
	rm -f $(OBJECTS) $(TARGET)
