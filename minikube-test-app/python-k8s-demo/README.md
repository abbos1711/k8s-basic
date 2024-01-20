short info :

build docker image 

push it to registry

deployment.yml.image: image name in registry

kubectl apply -f deployment.yml

kubectl apply -f service.yaml

minikube service [service_name] --url  ----> it is url of  project 
