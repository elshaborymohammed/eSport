#!/bin/bash

while getopts e:s:v: flag
do
    case "${flag}" in
        e) env=${OPTARG};;
        s) service=${OPTARG};;
        v) environment=${OPTARG};;
    esac
done

env=${env:-"dev"}
service=${service:-"customer\|user\|team-club\|otp\|notification\|report"}
environment=${environment:-""}


kubectl get pods -n esport-${env} ${environment} | grep -i ${service}