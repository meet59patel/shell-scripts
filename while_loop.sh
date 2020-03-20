#!/bin/bash

# Print 5 to 1
(( i = 5 ))
while (( i != 0 ))
do
    echo $i
    ((i--))
done