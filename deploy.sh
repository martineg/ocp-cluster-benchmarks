#! /bin/bash

oc create -k clusters/lab

wait_for_cerberus() {
    cerberus_route=$(oc get route -n cerberus cerberus -o template='{{.spec.host}}')
    until [[ $(curl -s ${cerberus_route}) = "True" ]]; do
        echo -ne "."; sleep 2s;
    done
}

echo "Waiting for Cerberus to validate cluster"
wait_for_cerberus
echo
echo "Cluster is running and ready"
