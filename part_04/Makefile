hello: hello.o main.o
	g++ -g -ansi -Wall -o hello hello.o main.o
hello.o : hello.cpp test.h no.h oh.h
	g++ -c -ansi -Wall hello.cpp
main.o : main.cpp hello.txt
	g++ -c -ansi -Wall main.cpp
clean:
	 rm *.o hello