#!/bin/bash

function numfiles {
# Get the number of files in the current directory
 local v1=0 
 v1=$( ls -l | wc -l )
 echo $v1
}

function guess {
 local g1=0
 local n1=0
 echo ""
 read -p "Please guess the number of files in this directroy: " g1
 n1=$(expr $g1 )
 echo $n1
}

# variable used to keep track of a correct guess
g2=0

v1=$(numfiles)
g1=$(guess)

while [[ $g2 -eq 0 ]]
do

if [[ $g1 -eq $v1 ]]
then
 echo "Contgratulations - you have guessed the correct number of files!"
 g2=1
elif [[ $g1 -gt  $v1 ]]
then
 echo "Guess a smaller number next time."
 g1=$(guess)
else
 echo "Guess a larger number next time."
 g1=$(guess)
fi

done
