#!/bin/bash

for file in *.c
do
	if grep -Fq "prinft" $file
	then
		echo -e '#include <stdio.h>' | cat - $file > temp && mv temp $file
	elif grep -Fq "fprintf" $file
	then
		echo -e '#include <stdio.h>' | cat - $file > temp && mv temp $file
	fi
done
