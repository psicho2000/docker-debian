## Build
`docker build -t debian-markus https://github.com/psicho2000/docker-debian.git`

## Run
`docker run -it -d --name debian debian-markus`

## Login
`docker exec -it debian zsh`