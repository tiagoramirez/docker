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

pause