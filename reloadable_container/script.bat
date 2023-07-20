docker build -t tiagoramirez/reloadable_image_app .

docker run --rm -p 4000:3000 --name reloadable_image_app -v C:\ws\docker\reloadable_container\index.js:/usr/src/index.js tiagoramirez/reloadable_image_app