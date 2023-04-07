# Exemplo de Kubernetes

Crie um cluster:
```shell
kind create cluster --name exemplo-cluster --config .k8s/kind-config.yaml
```

Crie a imagem a partir do Dockerfile
```shell
docker build -t my-php-app:1.0.0 .
```

Envie a imagem criada para dentro do cluster
```shell
kind load docker-image my-php-app:1.0.0 --name exemplo-cluster 
```

Envie os manifestos para o cluster
```shell
kubectl apply -f .k8s/pod.yaml -f .k8s/configmap.yaml -f .k8s/ingress.yaml
```

Para rodar:
```shell
kubectl port-forward phpfpm-nginx-example 8080:80
```