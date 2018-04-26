CC = g++
CFLAGS = -g -Wall

all: c++

Data_processor: c++.cpp 
	$(CC) $(CFLAGS) -o $@ c++.cpp

