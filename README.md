## Build
```
docker build -t debian-toolbox https://github.com/psicho2000/docker-debian.git
```

## Push Image to docker hub
```
docker login
docker tag debian-toolbox psicho/debian-toolbox
docker push psicho/debian-toolbox
```

## Run (on Windows)
From local tag:
```
docker run -ditw //home/me --name mydebian debian-toolbox
```
or from Docker Hub:
```
docker run -ditw //home/me --name mydebian psicho/debian-toolbox
```
On Linux, use `/home/me` as working-dir.

## Login
```
docker exec -it mydebian bash
```
or
```
docker exec -it mydebian zsh
```