#!/bin/bash

LOGFILE=samplelog

# Capturing each line of output from grep in variable named line
while read -r line
do
  # To extract component, we use awk
  component=$(awk {'print $5'} | cut -d : -f 1)
  # Works as same component=`awk {'print $5'} | cut -d : -f 1`
  # -d means delimiter used to cut which is :
  # -f 1 means choose field number 1 from the cut results
  echo -e "$component \n">> comp_errors
  # -e tells to interpret \n as new line
# -i  means case insensitive
done < <(grep -i error $LOGFILE)
# 1st < means input to the while loop
# 2nd < means process substitution i.e. executes the command inside brackets,
# saves the output to a temporary file and then deletes it

