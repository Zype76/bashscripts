#!/bin/bash

echo "Please enter the name of your feed file: "
read feedfile
echo "You entered: $feedfile"

echo Processing Enrolment Feed


input=$feedfile

while read line
do
        userid=$(echo $line | cut -d' ' -f1)
        courseid=$(echo $line | cut -d' ' -f2)
        echo $userid $courseid
done < "$input"
