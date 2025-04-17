# docker-build-image

Docker image for building packages for DigabiOS

## Current tags

- buster
- bullseye
- bookworm

## Update tag

```
docker build -t 863419159770.dkr.ecr.eu-north-1.amazonaws.com/jenkins-build:<tag> .
aws-vault exec digabi -- aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 863419159770.dkr.ecr.eu-north-1.amazonaws.com
docker push 863419159770.dkr.ecr.eu-north-1.amazonaws.com/jenkins-build:<tag>
```
