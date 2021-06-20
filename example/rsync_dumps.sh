#!/bin/sh


pod_name="$(kubectl get pods --selector=app=pgdumper | awk 'NR==2{print $1}')"
./krsync.sh -av --progress --stats $pod_name:/dumps ./