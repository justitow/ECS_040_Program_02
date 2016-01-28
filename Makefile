mah : hello.o main.o  
	g++ -ansi -Wall -g -o mah blah glah hello.o main.o  

hello.o : hello.cpp test.h no.h oh.h 
	g++ -ansi -Wall -g -c mah blah glah hello.cpp

main.o : main.cpp hello.txt 
	g++ -ansi -Wall -g -c mah blah glah main.cpp

clean : 
	rm -f mah hello.o  main.o   