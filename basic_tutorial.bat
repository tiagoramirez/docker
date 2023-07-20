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
docker volume create my_volume

@REM MOUNT VOLUME
docker run -d --name db --mount src=my_volume,dst=/data/db mongo

@REM GET CONTAINER INFORMATION
docker inspect db

@REM ENTER CONTAINER BASH
docker exec -it db bash

@REM DATABASE MONGO TESTS:
@REM ENTER MONGO BASH
mongosh
@REM CHANGE DATABASE
use users_info
@REM INSERT VALUE
db.users.insertOne({"name":"Tiago"})
@REM GET ALL DATA
db.users.find()

@REM DOWNLOAD IMAGE
docker pull ubuntu

@REM LIST IMAGES
docker image ls

@REM BUILD IMAGE
docker build -t ubuntu:mi.extra.version first_image/.

@REM RETAG IMAGE
docker tag ubuntu:mi.extra.version tiagoramirez/ubuntu:mi.extra.version

@REM RUN MY IMAGE
docker run -it tiagoramirez/ubuntu:mi.extra.version

@REM UPLOAD IMAGE TO DOCKER HUB
docker push tiagoramirez/ubuntu:mi.extra.version

@REM SEE IMAGE HISTORY
docker history tiagoramirez/ubuntu:mi.extra.version

@REM LIST NETWORKS
docker network ls

@REM CREATE NEW NETWORK
docker network create --attachable new_net

@REM GET NETWORK INFORMATION
docker network inspect new_net

@REM CONNECT CONTAINER TO NETWORK
docker network connect new_net db

pause