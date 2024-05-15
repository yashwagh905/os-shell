#!/bin/bash

echo "Give a string"
read string

len=$(echo -n "$string" | wc -c)

flag=true

checkpal() {
    i=1
    j=$len
    while (("$i" <= "$j")); do
        if [ "${string:i-1:1}" == "${string:j-1:1}" ]; then
            flag=true
            ((i++))
            ((j--))
        else
            flag=false
            break
        fi
    done
}

checkpal

if [ "$flag" == true ]; then
    echo "Valid Palindrome"
else
    echo "Not Valid Palindrome"
fi
