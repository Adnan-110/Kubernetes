# Here are the steps to install ingress controller :

# $  helm repo add nginx-stable https://helm.nginx.com/stable
# $  helm repo update 
# $  helm install my-release nginx-stable/nginx-ingress

# How to install helm 
Ref: curl https://gitlab.com/thecloudcareers/opensource/-/raw/master/lab-tools/helm/install.sh | sudo bash

# How to install ingress load balancer :
Ref: https://docs.nginx.com/nginx-ingress-controller/installation/installation-with-helm/

$ helm install ingress-controller oci://ghcr.io/nginxinc/charts/nginx-ingress --version 0.17.1

# How to uninstall a chart 
$ helm uninstall nameOfTheChart 

# How to list the number of installed charts 
$ helm list 
