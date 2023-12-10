#!/bin/bash
#this program give a java file as a argument and then compile and run it...

javac $(echo $1|rev|cut -d "/" -f 1|rev)
#or another solution for doing this :
# javac $(echo $1|cut -d "/" -f $(echo ./javatest/test.java|grep -o "/" | wc -l))

filename=$(echo $1|cut -d "." -f 1)
java $filename
