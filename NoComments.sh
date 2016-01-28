#!/bin/bash

for file in *.c
do
	touch newfile
	sed '///' $file
	#i am so lost oh god
	rm $file
	mv newfile $file
done
