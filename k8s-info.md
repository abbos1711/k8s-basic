Kubeadm is a command-line tool used for bootstrapping and managing Kubernetes clusters. It simplifies the process of setting up a Kubernetes cluster by automating several complex and manual tasks. Here are some reasons why Kubeadm is commonly used:

1.Cluster Initialization: Kubeadm helps initialize a new Kubernetes cluster by setting up the control plane components, including the API server, etcd, controller manager, and scheduler. It automates the configuration and deployment of these components, reducing the manual effort required to create a cluster.

2.Node Joining: Kubeadm facilitates the process of adding worker nodes to an existing Kubernetes cluster. It generates necessary authentication tokens and certificates, allowing new nodes to securely join the cluster. This simplifies the process of scaling the cluster by adding or removing nodes as needed.

3.Configuration Management: Kubeadm provides tools and commands for managing and updating the configuration of Kubernetes clusters. It supports configuration changes related to networking, DNS, authentication, and other cluster-specific settings. Kubeadm ensures consistency across the cluster by applying configuration changes and propagating them to all relevant nodes.

4.Cluster Upgrades: Kubeadm assists with upgrading Kubernetes clusters to newer versions. It provides commands and utilities to perform rolling upgrades of the control plane components and worker nodes. Kubeadm handles the necessary steps to upgrade and migrate the cluster without disrupting the running workloads.

5.Integration with Infrastructure as Code: Kubeadm is often used in conjunction with infrastructure as code (IaC) tools like Terraform or Ansible. It allows for the automation of cluster creation and management as part of infrastructure provisioning pipelines. This enables consistent and reproducible deployments of Kubernetes clusters across different environments.

6.Community Support: Kubeadm is an official tool maintained by the Kubernetes community and is widely adopted and supported. It aligns with the best practices recommended by the Kubernetes project and benefits from regular updates and improvements.


Kubelet is a critical component of a Kubernetes cluster and is responsible for running and managing containers on individual nodes. Here are some reasons why Kubelet is used:

Container Execution: Kubelet is responsible for the execution of containers on each node in a Kubernetes cluster. It interacts with the container runtime, such as Docker or containerd, to start, stop, and monitor containers based on the instructions received from the Kubernetes control plane.

1.Node Management: Kubelet manages the state of the node it runs on, ensuring that the node is healthy and ready to run containers. It reports the node's status and resources to the Kubernetes control plane, including information about available CPU, memory, and disk space. Kubelet also monitors the node's health, restarts failed containers, and evicts pods if resources are exhausted.

2.Pod Lifecycle Management: Kubelet is responsible for managing the lifecycle of pods on a node. It pulls container images, sets up networking, mounts volumes, and initiates health checks for the pods. Kubelet ensures that the desired state of pods, as defined in the cluster's configuration, is maintained on the node.

3.Resource Allocation: Kubelet monitors the resource usage of containers on a node and enforces resource limits and requests specified in the pod specifications. It ensures that containers have access to the allocated resources and prevents resource contention among pods on the same node.

4.Integration with the Control Plane: Kubelet acts as a bridge between the Kubernetes control plane and the node it runs on. It receives instructions from the control plane, such as pod creation, updates, and deletions, and executes them on the node. Kubelet reports the node's status, pod metrics, and events back to the control plane, providing essential information for cluster-wide orchestration and monitoring.

6.Container Security: Kubelet enforces security policies and isolates containers running on a node. It ensures that containers are launched with the appropriate security context, network isolation, and resource constraints. Kubelet also monitors for any security-related events or violations and reports them to the control plane.


Kubectl is a command-line tool used for interacting with Kubernetes clusters. It provides a powerful interface to manage and control various aspects of a Kubernetes environment. Here are some reasons why kubectl is commonly used:

1.Cluster Management: Kubectl allows users to manage Kubernetes clusters by interacting with the Kubernetes control plane. It enables the creation, deletion, and updating of Kubernetes resources such as pods, deployments, services, and namespaces. Kubectl provides a unified interface to manage the cluster's configuration and state.

2.Resource Inspection: Kubectl provides commands to retrieve detailed information about Kubernetes resources. It allows users to inspect the status, metadata, labels, and logs of pods, services, nodes, and other objects. Kubectl also supports querying and filtering resources based on specific criteria, aiding in troubleshooting and debugging.

3.Deployment and Scaling: Kubectl offers commands to deploy applications and manage their scaling within a Kubernetes cluster. It allows users to create and update deployments, replicasets, and pods. Users can specify the desired number of replicas, rollout strategies, and scaling parameters, enabling easy management of application deployments.

4.Service Discovery and Load Balancing: Kubectl provides commands to manage services within a Kubernetes cluster. It allows users to create, update, and delete services, which enable service discovery and load balancing for applications. Kubectl supports different service types, such as ClusterIP, NodePort, and LoadBalancer, allowing users to expose services for internal or external access.

5.Configuration and Secrets Management: Kubectl enables users to manage configuration files and secrets within a Kubernetes cluster. It supports commands to create, update, and delete configuration maps and secrets, which store sensitive information such as API keys, passwords, or TLS certificates. Kubectl ensures secure handling and distribution of sensitive data within the cluster.

6.Cluster Operations: Kubectl provides commands for various cluster operations, including scaling nodes, draining nodes for maintenance, managing cluster-wide resources, and inspecting cluster events and logs. It offers functionality for cluster-wide administration and monitoring tasks.

7.Integration with Automation and Tooling: Kubectl is widely used in automation scripts, CI/CD pipelines, and other tools that interact with Kubernetes clusters. Its command-line interface allows for easy integration with deployment scripts, infrastructure provisioning tools, and other DevOps workflows.


Kubernetes v1.29 supports clusters :


--->No more than 110 pods per node

--->No more than 5,000 nodes

--->No more than 150,000 total pods

--->No more than 300,000 total containers.


Labels are key/value pairs that are attached to objects such as Pods. Example labels:

"release"     : "stable",    "release" : "canary"
"environment" : "dev",       "environment" : "qa", "environment" : "production"
"tier"        : "frontend",  "tier" : "backend",    "tier" : "cache"
"partition"   : "customerA", "partition" : "customerB"
"track"       : "daily",     "track" : "weekly"

Namespaces are intended for use in environments with many users spread across multiple teams, or projects.

You can use Kubernetes annotations to attach arbitrary non-identifying metadata to objects.You can use either labels or annotations to attach metadata to Kubernetes objects.
Labels can be used to select objects and to find collections of objects that satisfy certain conditions

POD phase : pending , running , successed , failed , unkown


A Deployment provides declarative updates for Pods and ReplicaSets.

A ReplicaSet's purpose is to maintain a stable set of replica Pods running at any given time. As such, it is often used to guarantee the availability of a specified number of identical Pods

StatefulSets - StatefulSet is the workload API object used to manage stateful applications.

Manages the deployment and scaling of a set of Pods, and provides guarantees about the ordering and uniqueness of these Pods.

StatefulSets are valuable for applications that require one or more of the following.

Stable, unique network identifiers.
Stable, persistent storage.
Ordered, graceful deployment and scaling.
Ordered, automated rolling updates.

A Job creates one or more Pods and will continue to retry execution of the Pods until a specified number of them successfully terminate.

A CronJob creates Jobs on a repeating schedule.

A ReplicationController ensures that a specified number of pod replicas are running at any one time

a Service is a method for exposing a network application that is running as one or more Pods in your cluster.

ClusterIP - This default Service type assigns an IP address from a pool of IP addresses that your cluster has reserved for that purpose.
 
ExternalName - use DNS 

Ingress - exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. Traffic routing is controlled by rules defined on the Ingress resource

 Gateway API is an add-on containing API kinds that provide dynamic infrastructure provisioning and advanced traffic routing

A PersistentVolume (PV) is a piece of storage in the cluster that has been provisioned by an administrator or dynamically provisioned using Storage Classes.

PersistentVolumeClaim (PVC) foydalanuvchi tomonidan saqlash uchun so'rovdir. Bu Podga o'xshaydi. Podlar tugun resurslarini, PVXlar esa PV resurslarini iste'mol qiladi. Podlar ma'lum darajadagi resurslarni (CPU va xotira) so'rashi mumkin. Da'volar muayyan o'lcham va kirish rejimlarini talab qilishi mumkin (masalan, ular ReadWriteOnce, ReadOnlyMany, ReadWriteMany yoki ReadWriteOncePod-ga o'rnatilishi mumkin, AccessModes-ga qarang)

A ConfigMap is an API object used to store non-confidential data in key-value pairs. Pods can consume ConfigMaps as environment variables, command-line arguments, or as configuration files in a volume.

A Secret is an object that contains a small amount of sensitive data such as a password, a token, or a key


 
SOME COMMANDS: 

kubectl get pods -l environment=production,tier=frontend

kubectl get pods -l 'environment in (production),tier in (frontend)'

kubectl get pods -l 'environment in (production, qa)'

kubectl get namespace

kubectl get replicationcontrollers

kubectl delete replicationcontroller <replicationcontroller-name>

kubectl describe pod [podname] - full info

kubectl get limitrange

kubectl describe limitrange cpu-resource-constraint

kubectl get statefulsets,services --all-namespaces --field-selector metadata.namespace!=default

kubectl describe pod {pod_name}

kubectl create -f nginx.yaml  : Create the objects defined in a configuration file:

kubectl replace -f nginx.yaml : Update the objects defined in a configuration file by overwriting the live configuration

kubectl logs [pod_name]




kube-apiserver -  The API server is a component of the Kubernetes control plane that exposes the Kubernetes API. The API server is the front end for the Kubernetes control plane.

etcd  - Consistent and highly-available key value store used as Kubernetes' backing store for all cluster data.

kube-scheduler  - Control plane component that watches for newly created Pods with no assigned node, and selects a node for them to run on.

kube-controller-manager - Control plane component that runs controller processes.

kubelet - An agent that runs on each node in the cluster. It makes sure that containers are running in a Pod.

kube-proxy - kube-proxy is a network proxy that runs on each node in your cluster, implementing part of the Kubernetes Service concept.

Addons  - Addons use Kubernetes resources (DaemonSet, Deployment, etc) to implement cluster features.

A node may be a virtual or physical machine, depending on the cluster

 

#.md  START with '    '  or  `     `  
