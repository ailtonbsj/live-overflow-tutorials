#!/bin/bash

# USAGE: bash bruteforce.sh 0 10

for i in $(seq -f "%04g" $1 $2); do
    echo $i
    out=$(./leviathan6 $i | grep "Wrong" | wc -l)
    echo $out
    if [ "$out" == "0" ]; then
        break
    fi
done

read