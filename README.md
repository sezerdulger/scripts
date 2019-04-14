# scripts

curl -sL https://raw.githubusercontent.com/sezerdulger/scripts/master/docker-kubeadm-install.sh | sudo sh

curl -sL https://raw.githubusercontent.com/sezerdulger/scripts/master/kubeadm-init-master-taint.sh | sudo sh -s $API_ADVERTISED_IP


curl -sL https://raw.githubusercontent.com/sezerdulger/scripts/master/kubeadm-reset.sh | sudo sh
