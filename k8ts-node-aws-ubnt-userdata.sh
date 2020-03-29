#!/bin/bash
apt update
apt full-upgrade -y
snap install microk8s --classic --channel=1.18/stable
usermod -a -G microk8s ubuntu
su ubuntu -c 'microk8s enable dns registry dashboard'
su ubuntu -c 'chown -f -R ubuntu ~/.kube &'
microk8s join xxxxxxxxxxxx
init 6
