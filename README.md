# Kubernetes

### Getting Started On Kubernetes Terminology 

```
    1) Master Nodes 

    2) Worked Nodes 

    3) Control Pane 

    4) Data Pane 

    5) Node Pool or Node Group

    6) Kubectl 

    7) Kubelet 

    8) Control Pane and Data Pane Components
```

### How can we learn Kubernetes ?

```
    1) Minikube   ( Sandbox Kubernetes Solution For Linux / Windows / Mac Based Machines )
    2) You can create your machines and install Kubernetes on it  
    3) EKS : Elastic Kubernetes Service : Platform As A Service For Kubernetes on AWS ( Production Grade )
```

### Can we created our own cluster manually ??? YES   [ Highlevel Steps ]

```
    1) Ensure you Linux Machines are available.
    2) Install Container Run Time ( Docker ) on the top of all the machines. 
    3) Install KUBELET on the top of all the servers.  ( Kubelet is a local leader on each & every node where all the workloads reports the information to kubelet. Kubelet reports the information to Master /KubeApi Server )

    4) Install Kubernetes On The Top Of a Node that you've selected and this is going to be the master 

    5) Once the installation is completed, it's going to offer a token. Using this token, we can add any of the nodes that are in the Master Network and from that time they will become the worker nodes.
```


### Do we have any control of the master node on EKS ?

```
    NO!

    You don't have any visibility or control on Master Node or Control Pane when you're using Managed Service.

```

### What happends if the master node is down ???

```
    $ Will the existing workloads going to fail or going to be impacted ?

        * No ! If the master is not reachable or fails, all the workloads will operate normally. But you cannot connect to the cluster or schedule new workloads. Existing workloads will run as usual. 

        * That's why for production based workloads, we typically go with 3 Master nodes in 3 different zones.

```

### What is kubectl and why we need that ?

```
    kubectl is a kubernetes client that needs to be installed on the top of the computer where you wish to connect to the kubernetes cluster.

    Ref : curl https://gitlab.com/thecloudcareers/opensource/-/raw/master/lab-tools/kubectl/install.sh | sudo bash
```


### What is the smallest resource that you can create on Kubernetes ?

```
    POD
```

### What is a POD in Kubernetes ?

```
    In Kubernetes, we don't run containers directly. Instead, we run pods and pods will have the containers.
    POD is a just a wrapper to our conainer.

```

### What is the advantage of running pods ???

```
    Kubernetes has solved lot of challenges using pods and below are the major aspects :
        1) Shared Storage 
        2) Shared Network NameSpace.
```

### Why kubernetes is also referred as K8's ?


### How can we created resources in Kubernetes ?

```
    It can created in 2 ways :
        1) Imperative    ( Not a suggested way : using kubectl commands )
        2) Declarative   ( Suggested way : Version Controller and we use YAML )
```


### Ho2w can we authenticate to kubernetes cluster ?

```
    $ aws eks update-kubeconfig --name clusterName
```


### What is the structured of Kubernetes Commands ?

```
    $ kubectl get resourceTypeYOuWant 

    Ex:
        $ kubectl get pods     # This will list all the pods 
        $ kubectl get nodes    # This will list all the nodes in the cluster
```

### How to create a pod using Imperative Commands ?

```
    $ kubectl run podname --image=nginx
```

### How can we create resources using kubectl when using declarative manifest files ?

```
    $ kubectl create -f fileName.yml 

    $ kubectl update -f fileName.yml 
```


### create vs update ?
```
    create : creates the resources if the resource is not available. ( cannot update the values if the resource is already there .)

    apply  : apply can create the resource and at the same time if the resource is already available, then it's going to upadte the value if you want.
```

### Do we create PODS directly on Kubernetes Cluster ???

```
    NEVER
```

### We create pods using SETS!!!


### What is a set and why we need set's and type of sets.

```
    1) Replica Sets 
    2) Deployment Sets
    3) Daemon Sets
    4) Stateful Sets
```


### Why we create pods using sets ?

```
    1) Sets helps in in ensuring the specific number of pods running all the time
    2) For any reason if any of the pod fails or crashed, scheduler is going to schedule the pods on the node with enough resources.
    3) Based on the requirement, we would have to use one among the sets.
```

### Services In Kubernetes

Services in kubernetes are used to pass the requests to the backend pods using the service discovery mechanism.

```
    Service Types In Kubernetes : 

        1) Cluster IP       [ Often Used ] : This is accessible with in the cluster only, we use this for service-service communication
        2) Load Balancer    [ Need basis ] : This is used when you want to expose service to the PUBLIC / External Network.
        3) Node Port        [ Need Basis ]
        4) External Name    [ Need Basis ]
```


### What is a deemon set and why we need that ?

```
    Typically we use this for Monitoring Agents!!!

    Whenever you were landed in to a situation where you want to run a single POD on the top of each and every node of the cluster irrespective of the scale-out or scale-in.

```

### HPA vs VPA ???




### What is a nameSpace in kubernetes ?

In **Kubernetes**, a **namespace** provides a way to **organize resources** within a single cluster. Let's break it down:

1. **Isolation and Organization**:
   - **Namespaces** allow you to **isolate groups of resources**. You can think of them as **virtual sub-clusters** within a physical Kubernetes cluster.
   - Different teams, projects, or even customers can share the same Kubernetes cluster while maintaining logical separation.
   - Each namespace acts as a **logical boundary**, ensuring that resources within it do not conflict with those in other namespaces.

2. **Resource Scoping**:
   - **Namespaced objects** (such as **Pods**, **Services**, etc.) are scoped to a specific namespace. This means that their names must be **unique within that namespace**, but they don't need to be unique across namespaces.
   - However, **cluster-wide objects** (such as **StorageClasses**, **Nodes**, etc.) are not bound by namespaces and are accessible globally.

3. **Use Cases**:
   - **Team Isolation**: Different development teams can work in separate namespaces, each with its own set of resources.
   - **Environment Separation**: You can have namespaces for **development**, **staging**, and **production** environments.
   - **Multi-Tenancy**: If multiple users or organizations share a cluster, namespaces allow them to manage their resources independently.

Remember that **namespaces cannot be nested within each other**. They provide a powerful way to organize and manage resources in a Kubernetes cluster. 🌟


### what are the namesapces that comes by default when you install Kubernetes ( manually ) 

```
    1) kube-system   ( k8 system components like api-server would be residing here )
    2) kube-public   ( all the kubernetes public system components that are available to all the users in the cluster)
    3) default       ( all the default workloads would be deployed here)
```



### What is HPA in Kubernetes ?

```
    Horizontal Pod Autoscaling : This the concept of increasing the number of pods based on the metric.
```


### Vertical Scaling vs Horizontal Scaling !!!!!

```
    1) Vertical Scaling is the concept of adding resources on the top of the same resource and this always involves downtime. [ Like changing the instance type from t3.micro to t3.medium ]

    2) Always vertical scaling has a hard limit.


    3) Horizontal Scaling is adding the nodes rather resources on the top it.

    4) This won't have any downtime and at the same time they can scale-out and scale-in indefinitely.
```

### What is Kubernetes ?

```
Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. 

It abstracts the underlying infrastructure, enabling seamless management of resources and workload distribution. 

Kubernetes offers tools for application scaling, self-healing, and load balancing, simplifying the development and operation of complex microservices architectures. 

It promotes efficiency, resilience, and portability across various cloud and on-premises environments.

```

### Do we run Containers directly on the top of Kubernetes Clusters ?

```
We don't run containers directly on the top of Kubernetes Clusters. Instead we use something called as POD's.
POD's are the smallest units in Kubernetes. POD is a wrapper to your container which means One Pod holds one or more than one container.
```

### Can a POD in kubernetes runs more than one container ?

```
YES! If two containers are working closely together, then we can use the multi-container pods, which was solved by K8 and that's main advantage.

All the containers in a pod will have common network stack and storage which results in high performance for apps that needs common network storage.

Containers won't be having IP irrespective of their count and it all goes by the POD IP Only.
```

### How can we create the resources in kubernetes ?

Kubernetes resources can be created in 2 ways : 

```
    1) Imperative Approach   [ Creating by running the direct commands ]

            ex:  kubectl run nginx-pod  --image=nginx

    2) Declarative Approach [ Creating by using the YAML : Suggested ]
```


### kubernetes commands  


Most used Kubernetes commands :

```
Syntax :  kubectl action resources 

* kubectl get nodes  
* kubectl get nodes -o wide
* kubectl cluster-info 
* kubectl api-versions
* kubectl api-resources 
* kubectl --help 
* kubectl describe resource resourceName
* kubectl logs -f podName                   [ when you have a single container in pod ] 
* kubectl logs -f podName -c containerName  [ when you have multiple containers in a pod ] 
```



### How can we create resources in kubernetes ?

```
We can create resources in kubernetes by using any of the following approaches.

    1) Imperative   [ Using commands       : This is not recommended approach ]
    2) Declarative  [ Recommenced Approach : Everything will be in code using YAML ]
```

### kubectl apply -f vs create -f ?

```
Both apply and create has the capability to create the resources mentioned in the manifest.yaml

create just creates the resources if the resource is not available whilst apply even creates the resources of they are not available.
If they are available, it's going to apply the changes.

```


# What is a namespace in kubernetes ?

```
A namespace in Kubernetes is a virtual partition that isolates and organizes resources within a cluster, enabling better resource management and access control for different teams or applications. 

It helps avoid naming conflicts and enhances clarity in a shared environment.
```


### What are the namespaces that comes up as a part of the Kubernetes Cluster Installation ?

```

    1) default        [ all your resources will be created by default in this nameSpace ]
    2) kube-public    [ Master plane components and this is mostly reserved for cluster internal usage that needs to be cluster visible ]
    3) kube-system    [ THis is for the objects created by the Kubernetes System. This is internal to kubernetes]

```


### How can we create kubernetes resources using manifest files ???

```
    $ kubectl apply -f nameOfTheFile.yml       
            [ apply is going to create resource is not available or updates the values of the resources if the resource already exits]

    $ kubectl create -f nameOfTheFile.yml 
             [ create is going to create resource ]
    
    $ kubectl delete -f nameOfTheFile.yml 
             [delete is going to delete all the kubernetes resources created by this manifest]
```

### How can I ensure that a pod which is deleted should be coming up automatically ?
### How can I ensure that a specific number of pods of an instance should be running ?
### How can I upgrade from x to y version of pods without any interruption ?


# ALL THE ABOVE VAB BE FULFILLED BY USING SETS!!!!

```
In Kubernetes, we don't run / create any of resources diectly as POD's as they are not manture enough to be maintained.
Instead, we run SET's and set's will take care of all the above 3 points.
```

### Sets In Kubernetes : 

```
    1) Replica Set 
    2) Deployment Set
    3) Daemon Set 
    4) Stateful Set

```

### Annotations : 


```
Annotations in kubernetes allows pods to have labels with special characters and with greater character limit.

They are primarily used to add some extra power or features to your resources.
```




### How to create a Kubernetes Cluster on AWS ?
We can use a Managed Service called EKS : Elastic Kubernetes Service


1) Ensure you have VPC In Place ( network )
2) Create the cluster 
3) Create Nodepools


### You can create cluster by using any of the below ways : 

```
    1) Manually   [ on aws console ]
    2) EKSCTL     [ Utility from Weaveworks ]
    3) Terraform  
```


In AWS, EKS Cluster can be of 3 types : 

```
    1) Public                ( You can access the cluster from public and traffic from Master to Work Nodes will be over  internet )
    2) Public and Private    ( You can access the cluster from the public, but traffic from master to worker will be over intranet)
    3) Private               ( You can access it only with in the network and traffic between the nodes and master are strictly with in the VPC )
```


# How do you upgrade your Kuberntes Cluster ?

```
It goes in 2 steps : 
    1) Upgrade your master to 1.25 ---> 1.26 
    2) Upgrade your worker nodes / nodePools from 1.25 yo 1.26

How this upgrade really happens in the background ?

    1) It goes by rolling update.
    2) 1.26 nodes comes up, deletes one node.
```



### How do you call a kubernetes service ?

```
By using it's name ? 

    $ If it's in a default nameSpace.

How one service can talk to other service in a different nameSpace ?

    $ FQDN of a service is   serviceName.nameSpace.svc.cluster.local 

For example payment pod in payment wants to talk to cart pod in cart nameSpace ?

    $ In payment pod, refer cart svc as cart.cartns.svc.cluster.local

```