## Flask with Kubernetes (Minikube)

$ eval $(minikube docker-env) 

$ docker build -t 10449/flask-hello-kubernetes:2.0.0 . 

$ docker push 10449/flask-hello-kubernetes:2.0.0 
  
$ kubectl apply -f deployment.yml  

$ kubectl get deployment 

$ kubectl apply -f service.yml 

$ kubectl get service 

$ minikube service flask-hello-kubernetes-service --url 

