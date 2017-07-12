## Build
`docker build -t debian-markus https://github.com/psicho2000/docker-debian.git`

## Push Image to docker hub
```
docker login
docker tag debian-markus psicho/debian
docker push psicho/debian
```

## Run
`docker run -ditw /home/markus --name debian debian-markus`

or

`docker run -ditw /home/markus --name debian psicho/debian`

## Login
`docker exec -it debian zsh`

or

`docker exec -it debian bash`