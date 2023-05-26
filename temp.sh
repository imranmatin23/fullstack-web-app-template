#!/bin/sh

myvar="string1 string2 string3"

# Redefine myvar to myarray using parenthesis
myarray=($myvar)

echo "My array: ${myarray[@]}"
echo "Number of elements in the array: ${#myarray[@]}"