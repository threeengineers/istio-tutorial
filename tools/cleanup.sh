#!/bin/bash

virtualservices=$(kubectl get virtualservice -o name)
for vs in ${virtualservices[@]}
do
    if [ "$vs" != "virtualservice.networking.istio.io/customer-gateway" ]; then
        kubectl delete "$vs"
    fi
done

destinationrules=$(kubectl get destinationrule -o name)
for dr in ${destinationrules[@]}
do
    kubectl delete "$dr"
done

serviceentries=$(kubectl get serviceentry -o name)
for se in ${serviceentry[@]}
do
    kubectl delete "$se"
done
