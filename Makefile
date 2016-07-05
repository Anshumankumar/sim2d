all: sim2d

sim2d: main.o
	g++ main.o -o sim2d

main.o: main.cpp
	g++ -c main.cpp
