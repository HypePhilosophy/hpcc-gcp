#!/bin/bash

current_dir=$(pwd)
echo "current_dir is $current_dir"
parentdir="$(dirname "$current_dir")"
echo $parentdir

echo "helm uninstall nfsstorage"

helm uninstall nfsstorage

echo "helm uninstall myhpcc"

helm uninstall myhpcc

echo "Successfully removed all helm packages"