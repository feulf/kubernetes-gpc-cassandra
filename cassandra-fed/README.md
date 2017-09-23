Kubernetes Cassandra
====================
Scripts to deploy a Cassandra cluster on Kubernetes.

Install
-------

Create cassandra-disk
```bash
gcloud compute disks create --size=200GB --zone=us-east1-b cassandra-disk-0
gcloud compute disks create --size=200GB --zone=us-east1-b cassandra-disk-1
gcloud compute disks create --size=200GB --zone=us-east1-b cassandra-disk-2
```

Deploy cassandra Persistent Volume, Storage Class, Persistent Volume Claim, Service and Peer Service, Deployment:
```bash
kc apply -f cassandra-sc.yaml
kc apply -f cassandra-pv.yaml
kc apply -f cassandra-service.yaml
kc apply -f cassandra-peer-service.yaml
kc apply -f cassandra-stateful-set.yaml
```
