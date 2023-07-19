@REM RUN CONTAINER
docker run -d --name proxy nginx

@REM LIST RUNNING CONTAINERS
docker ps

@REM STOP CONTAINER
docker stop proxy

@REM LIST ALL CONTAINERS
docker ps -a

@REM REMOVE CONTAINER
docker rm proxy

@REM STOP + REMOVE CONTAINER
docker rm -f proxy

@REM PUBLISH/EXPOSE PORT (PUBLIC PORT):(PRIVATE PORT)
docker run -d --name proxy -p 8080:80 nginx

@REM SEE LOGS
docker logs proxy

@REM FOLLOW LOGS
docker logs -f proxy

@REM LAST 10 logs LOGS
docker logs --tail 10 -f proxy

@REM LIST VOLUMES
docker volume ls

@REM CREATE VOLUME
docker volume create mi_volumen

@REM MOUNT VOLUME
docker run -d --name db --mount src=mi_volumen,dst=/data/db mongo

@REM GET CONTAINER INFORMATION
docker inspect db

@REM ENTER CONTAINER BASH
docker exec -it db bash

@REM DATABASE MONGO TESTS:
@REM ENTER MONGO BASH
mongosh
@REM CHANGE DATABASE
use platzi
@REM INSERT VALUE
db.users.insertOne({"name":"Tiago"})
@REM GET ALL DATA
db.users.find()

@REM DOWNLOAD IMAGE
docker pull ubuntu

@REM LIST IMAGES
docker image ls

@REM BUILD IMAGE
docker build -t ubuntu:miversionextra imagenes/.

@REM RETAG IMAGE
docker tag ubuntu:miversionextra tiagoramirez/ubuntu:miversionextra

@REM RUN MY IMAGE
docker run -it tiagoramirez/ubuntu:miversionextra

@REM UPLOAD IMAGE TO DOCKER HUB

pause