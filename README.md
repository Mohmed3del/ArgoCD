# Argocd

### ArgoCD is a tool for continuous delivery that makes it easy for developers to deploy applications to Kubernetes clusters.

## Requirements

#### To use these playbooks, you'll need to have the following software installed on your local machine:

- Docker
- A Kubernetes cluster such as minikube, EKS, or kubeadm
- The `kubectl` tool

### Frok this repo

Fork the repository by clicking the "Fork" button on the top right corner of this page. This will create a copy of the repository under your GitHub account.

### Clon this repo

Clone the forked repository to your local machine using the following command:

```
git clone https://github.com/<your-username>/ArgoCD.git
```

Replace `your-username` with your GitHub username.

### Change directory

Change into the cloned repository directory:

`cd ArgCD`

### To install Docker , Kubectl and create minikube ,follow these steps:

```
bash docker.sh
bash kubectl.sh
bash
```

### Install minikube

```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start --driver=docker
```

### To install ArgoCD inside the Kubernetes cluster, follow these steps:

#### 1. Create a new namespace for ArgoCD by running the command:

```
kubectl create namespace argocd
```

#### 2. Apply the ArgoCD installation manifest by running the command:

```
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

## Accessing ArgoCD

### To access the ArgoCD web interface, follow these steps:

#### 1. Wait for all the pods to become ready by running the command:

```
kubectl get pods -n argocd
```

#### 2. Port forward the ArgoCD service to your local machine by running the command:

```
kubectl port-forward -n argocd svc/argocd-server 8080:443
```

#### 3. Open your web browser and navigate to `localhost:8080`.

#### 4. Log in using the username `admin` and the password obtained from the command:

```
kubectl get secret -n argocd argocd-initial-admin-secret -o yaml |grep password |cut -d " " -f 4| base64 --decode
```

### To use the ArgoCD repository, follow these steps:

```
kubectl apply -f application.yml
```

#### View your deployed application in the ArgoCD web interface. Make changes to the YAML files in the `app` folder of your forked repository and watch the changes take effect.

### Remove all resources, run the following commands:

```
kubectl delete -f application.yaml
kubectl delete namespace app
kubectl delete namespace argocd
```

### Feel free to customize the sample project to your needs and explore the capabilities of ArgoCD!

![Profile views](https://komarev.com/ghpvc/?username=Mohmed3del&label=Profile%20views&color=0e75b6&style=flat)
[![Github](https://img.shields.io/github/followers/Mohmed3del?label=Follow&style=social)](https://github.com/Mohmed3del)

<h2><img src="https://media.giphy.com/media/5WJ6SOKeNKrSzblU4R/giphy.gif" width=10> Contact Me</h2>
<a href="https://www.linkedin.com/in/mohmed3adel/"><img src="https://img.shields.io/badge/-LinkedIn-0077B5?style=for-the-badge&logo=Linkedin&logoColor=white"/></a>
<a href="mailto:mohmed3del1@gmail.com" target="_blank"><img src="https://img.shields.io/badge/-GMail-0077B5?style=for-the-badge&logo=gmail&logoColor=white"/></a>
<br/><br/>
