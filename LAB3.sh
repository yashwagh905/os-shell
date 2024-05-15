#!/bin/bash

echo "Enter a number:"
read number

if [ "$number" -lt 2 ]; then
    echo "Not a prime number."
    exit
fi

is_prime=true

for ((i = 2; i * i <= $number; i++)); do
    if [ "$((number % i))" -eq 0 ]; then
        is_prime=false
        break
    fi
done

if $is_prime; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi
