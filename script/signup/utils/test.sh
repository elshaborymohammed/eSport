#!/usr/bin/env bash

#!/bin/bash
#!/usr/bin/bash
#declare -A company=(
#  [name]="Acme Corporation"
#  [location]="New York City, NY"
#  [industry]="Manufacturing"
#  [size]="Large"
#  [founded]="1920"
#)
#
## print all the details
#printf "Company details:\n"
#for key in "${!company[@]}"; do
#  printf "%s: %s\n" "$key" "${company[$key]}"
#done
#
## modify the value of the "location" key
#company["location"]="Los Angeles, CA"
#
## print the updated details
#printf "\nUpdated company details:\n"
#for key in "${!company[@]}"; do
#  printf "%s: %s\n" "$key" "${company[$key]}"
#done
#
#echo "founded: ${company["size"]}"


#declare -A colors
#
#colors["red"]="#ff0000"
#colors["green"]="#00ff00"
#colors["blue"]="#0000ff"
#
#echo "${colors["red"]}"
#
#echo "${colors[@]}"


result=$(sh random_arabic.sh)

echo "result: $result"