#!/bin/bash

current_dir=$(pwd)
echo "current_dir is $current_dir"
parentdir="$(dirname "$current_dir")"
echo $parentdir

cd helm/examples/nfs

echo "helm install nfsstorage hpcc-nfs/"

helm install nfsstorage hpcc-nfs/

echo "nfsstorage successfully installed"

cd ../../

echo "cd into helm directory"

echo "helm install myhpcc hpcc/ --set global.image.version=community_7.10.0-rc2 -f examples/nfs/values-nfs.yaml"

helm install myhpcc hpcc/ --set global.image.version=community_7.10.0-rc2 -f examples/nfs/values-nfs.yaml

echo "Installation successful"