CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=hello.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hello
EXEDIR=bin

all: $(SOURCES) $(EXEDIR)/$(EXECUTABLE)
    
$(EXEDIR)/$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

