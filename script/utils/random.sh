#!/bin/sh

chars=ظطذدزرومنتالبيسشضصثقفغعهخحج
array=()

for i in {1..8} ; 
    do
        array[$i]="${chars:RANDOM%${#chars}:1}"
    done
printf %s ${array[@]::8} $'\n'



function random()
{
    array=()
    for i in {a..z};
    do
    array[$RANDOM]=$i
    done

    printf %s ${array[@]::4}
    # echo ${array[@]::4}
}

random string
echo $string




function random()
{
    array=()
    for i in {0..20};
    do
    array[$RANDOM]=$i
    done

    # shellcheck disable=SC2068
    printf %s ${array[@]::20}
    # echo ${array[@]::4}
}

random number
echo $number






function randomArabic()
{
    chars=ظطذدزرومنتالبيسشضصثقفغعهخحج
    array=()
    for i in {1..4} ;
        do
            array[$i]="${chars:RANDOM%${#chars}:1}"
        done
    printf %s ${array[@]::8}
}

randomArabic arabic
echo $arabic