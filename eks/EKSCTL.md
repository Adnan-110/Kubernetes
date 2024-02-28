# <u>EKS </u>

### EKS : Elastic Kubernetes Cluster

```
EKS is a managed kubernetes solution on AWS. Which is very powerful, available and robust service on AWS.

```

### EKS Cluster can be created in any of the following ways of your choice

```
    1) Sign in to EKS Console and do all the steps manually ( which is really lengthy )
    2) EKSCTL
    3) Terraform
```

Among all EKSCTL and TERRAFORM are the most convinient ways.

### EKSCTL: This is an official CLI Tool for AWS EKS from Weaveworks

Let's see how can we use EKSCTL to provision the ELS CLuster

```
1) Install EKSCTL on your Linux Server 
    
    * Ref: https://docs.aws.amazon.com/eks/latest/userguide/eksctl.html

2) Once EKSCTL is installed, you need to ensure that EKSCTL has the required authentication and authorization to your AWS Cloud Account.
   Only in that situation EKSCTL can create the EKS Cluster on your behalf.

3) This Authentication can be done by either suppling Access,Secret Key or attach the IAM Role created in the training to your linux server.

4) Now use `eksctl create cluster --help` command to see the list of options and proceed accordingly

   Here is how the final command should look like

    $ eksctl create cluster --name clusterName --version 1.22 --region us-east-1 --nodegroup-name k8-ng --node-type t3.micro --nodes 2

    $ kubectl get nodes 

    $ aws eks update-kubeconfig --name clusterName

```

### <u>  NOTE </u>

```EKS Cluster is a time taking process which would take up minimum 20 to 30 mins. Once it's created, you should be able to be able to execute the kubectl commands```

### How to Delete the created cluster ?

EKS is a chargeable managed service. Ensure you delete them once you practice them. Use the below command to delete the cluster

```
eksctl delete cluster clusterName --region us-east-1

```
