#!/bin/bash -ex
kubeadm reset --force
iptables -F && iptables -t nat -F && iptables -t mangle -F && iptables -X