#The below script is used to filter invalid email address from the file passed as argument and store the output in another file with line number.
#Used grep filter to find the invalid email address and redirect the output. It also checks if the file passed an argument is empty or not empty or the file doesn't exist.
#!/bin/bash
FILENAME=$1
if [ -f ${FILENAME} ]
then
   if [ -s ${FILENAME} ]
   then
      echo "File exists and not empty"
      count=`cat $FILENAME | wc -l`
      echo "the file has around $count emailaddress"
      grep -E -v -n "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,6}\b" $1 > $2 
      invalid=`cat $2 | wc -l`
      echo "after scanning the file we found there are total $invalid invalid email address from the file"
   else
      echo "File exists but empty"
   fi
else
   echo "File not exists"
fi
