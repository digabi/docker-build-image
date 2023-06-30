# docker-build-image
Docker image for building packages for DigabiOS

# Updating docker hub

```
docker build -t digabi/docker-build-image:latest .
docker login # credentials in the usual place
docker push digabi/docker-build-image:latest
```

# Updating ECR
We are moving to ECR instead of Docker Hub. Building and pushing to ECR, using Bullseye as the latest:

git checkout bullseye
docker build -t 863419159770.dkr.ecr.eu-north-1.amazonaws.com/jenkins-build:latest .
aws-vault exec ytl-utility -- aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 863419159770.dkr.ecr.eu-north-1.amazonaws.com
docker push 863419159770.dkr.ecr.eu-north-1.amazonaws.com/jenkins-build:latest
