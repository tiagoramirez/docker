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

pause