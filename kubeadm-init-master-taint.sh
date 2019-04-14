#!/bin/bash -ex
if  [ -z $1 ]; then
  echo "enter advertised ip..."
  exit
fi
kubeadm init --apiserver-advertise-address=$1

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

export KUBECONFIG=/etc/kubernetes/admin.conf
echo "sleep 20 seconds"
sleep 20

kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

kubectl taint nodes --all node-role.kubernetes.io/master-
