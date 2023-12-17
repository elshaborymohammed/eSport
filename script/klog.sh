#!/bin/bash

while getopts e:s: flag
do
    case "${flag}" in
        e) env=${OPTARG};;
        s) service=${OPTARG};;
    esac
done

env=${env:-"dev"}
service=${service}


#kubectl get pods -n esport-preprod | grep club


kubectl -n esport-${env} logs --tail 300 -f $(kubectl get pods -n  esport-${env} -o custom-columns=:.metadata.name | grep ${service})