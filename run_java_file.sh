#!/bin/bash
#this program give a java file as a argument and then compile and run it...


javac $(echo $1|rev|cut -d "/" -f 1|rev)
filename=$(echo $1|cut -d "." -f 1)
java $filename
