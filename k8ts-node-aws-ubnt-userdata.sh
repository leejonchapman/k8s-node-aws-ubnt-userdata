#!/bin/bash
sudo apt full-upgrade
sudo snap install microk8s --classic --channel=1.18/stable
sudo microk8s enable dns dashboard registry
sudo usermod -a -G microk8s ubuntu
sudo chown -f -R ubuntu ~/.kube
sudo microk8s join #GENERATE A NEW TOKEN FOR EACH NODE
sudo init 6
