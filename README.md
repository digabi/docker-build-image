# docker-build-image
Docker image for building packages for DigabiOS

# Updating docker hub

```
docker build -t digabi/docker-build-image:latest .
docker login # credentials in the usual place
docker push digabi/docker-build-image:latest
```
