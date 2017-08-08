#!/bin/bash

gcloud compute disks create --size=200GB --zone=us-east1-b cassandra-disk
kc apply -f cassandra-pv.yml
kc apply -f cassandra-sc.yaml
kc apply -f cassandra-pvc.yaml
kc apply -f cassandra-service.yaml
kc apply -f cassandra-peer-service.yaml
kc apply -f cassandra-deployment.yaml
