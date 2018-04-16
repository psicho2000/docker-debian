## Build
`docker build -t debian-toolbox https://github.com/psicho2000/docker-debian.git`

## Push Image to docker hub
```
docker login
docker tag debian-toolbox psicho/debian
docker push psicho/debian
```

## Run (on Windows)
From local tag:
`docker run -ditw //home/me --name mydebian debian-toolbox`

or

From Docker Hub:
`docker run -ditw //home/me --name mydebian psicho/debian`

On Linux, use `/home/me` as working-dir.

## Login
`docker exec -it mydebian zsh`

or

`docker exec -it mydebian bash`