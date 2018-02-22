## Build
`docker build -t debian-markus https://github.com/psicho2000/docker-debian.git`

## Push Image to docker hub
```
docker login
docker tag debian-markus psicho/debian
docker push psicho/debian
```

## Run (on Windows)
From local tag:
`docker run -ditw //home/markus --name mydebian debian-markus`

or

From Docker Hub:
`docker run -ditw //home/markus --name mydebian psicho/debian`

On Linux, use `/home/markus` as working-dir.

## Login
`docker exec -it debian zsh`

or

`docker exec -it debian bash`