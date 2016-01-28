#!/bin/bash
# The purpose of this is to do something about deleting files with two different modes.

if test $# = 0
then
	for file in *.txt
	do
		echo -en "Displaying first 3 lines of $file:\n"
		head -n3 $file
		echo -en "\nDelete file $file? (y/n) "
		read  yn
		case $yn in
			[Yy]* ) rm $file;
		esac	
	done
	echo -en " \n"
else
	for file in $@
	do
		echo  -en "Displaying first 3 lines of $file:\n"
		head -n3 $file
		echo -en"\nDelete file $file? (y/n) "
		read yn
		case $yn in
			[Yy]* ) rm $file;
		esac
	done
	echo -en " "
fi
