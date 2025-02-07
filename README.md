# docker-build-image

Docker image for building packages for DigabiOS

# Updating ECR latest

```
docker build -t 863419159770.dkr.ecr.eu-north-1.amazonaws.com/jenkins-build:latest .
aws-vault exec ytl-utility -- aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 863419159770.dkr.ecr.eu-north-1.amazonaws.com
docker push 863419159770.dkr.ecr.eu-north-1.amazonaws.com/jenkins-build:latest
```
