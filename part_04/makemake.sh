#!/bin/bash
#
# This script takes one argumnet, and creates a makefile named from the argument
# and based off of the .cpp and .h files in the current directory.

if test $# = 1
then
	printf "$1:" >> ./Makefile
	for file in *.cpp
	do
		printf "${file%.cpp}.o" > ./Makefile
	done


else
	echo "The project name must be included as an argument"
fi
