#!/bin/bash
apt update
apt full-upgrade -y
snap install microk8s --classic --channel=1.18/stable # ubuntu snap install
usermod -a -G microk8s ubuntu # add user to k8ts group
su ubuntu -c '/snap/bin/microk8s enable dns registry dashboard' # run as user
su ubuntu -c 'chown -f -R ubuntu ~/.kube &'
microk8s join xxxxxxxxxxxx
init 6
