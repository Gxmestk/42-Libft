#! /bin/sh
clear
touch g.o

rm *.o

for i in *.c
do
 gcc -Wall -Wextra -Werror -c $i
done

rm *.o
