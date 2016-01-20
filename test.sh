#!/bin/bash

echo Processing Enrolment Feed

input=feed.txt

while read line
do
        userid=$(echo $line | cut -d' ' -f1)
        courseid=$(echo $line | cut -d' ' -f2)
        echo $userid $courseid
done < "$input"
