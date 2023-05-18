#!/bin/bash

# Download the kubectl binary
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Make the binary executable
chmod +x ./kubectl

# Move the binary to a directory in your PATH
sudo mv ./kubectl /usr/local/bin/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Verify the installation
kubectl version --client

#Enable kubectl autocompletion 
echo 'source <(kubectl completion bash)' >>~/.bashrc

echo 'alias k=kubectl' >>~/.bashrc
echo 'complete -o default -F __start_kubectl k' >>~/.bashrc

source ~/.bashrc

bash