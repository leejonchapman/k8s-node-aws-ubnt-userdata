sudo apt full-upgrade
sudo snap install microk8s --classic --channel=1.18/stable
sudo microk8s status --wait-ready
sudo microk8s enable dns dashboard registry
sudo usermod -a -G microk8s ubuntu
sudo chown -f -R ubuntu ~/.kube
microk8s join xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
sudo init 6
