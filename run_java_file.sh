#!/bin/bash
#this program give a java file as a argument and then compile and run it...
javac $1
filename=$(echo $1|cut -d "." -f 1)
java $filename
