#!/bin/bash
while getopts l: flag
do
    case "${flag}" in
        l) length=${OPTARG};;
    esac
done

length=${length:-"4"}
chars='اجحخهعغفقثصضطكمنتالبيسشدظزوةىرؤءذ'
str=
for ((i = 1; i < length; ++i)); do
    str+=${chars:RANDOM%${#chars}:1}
    # alternatively, str=$str${chars:RANDOM%${#chars}:1} also possible
done
echo "$str"