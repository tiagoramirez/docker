docker build -t tiagoramirez/platziapp .

docker run --rm -p 4000:3000 --name platziapp -v C:\ws\docker\reloadable_container\index.js:/usr/src/index.js tiagoramirez/platziapp