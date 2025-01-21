# This is a simple Makefile for hello.cpp
CXX = g++
CXXFLAGS = -Wall
TARGET = hello

all: $(TARGET)

$(TARGET): hello.o
	$(CXX) $(CXXFLAGS) -o $(TARGET) hello.o

hello.o: hello.cpp
	$(CXX) $(CXXFLAGS) -c hello.cpp

clean:
	rm -f $(TARGET) hello.o
