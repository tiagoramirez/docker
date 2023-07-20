docker run -d --name interconnected_db mongo

docker network create --attachable first_interconnected_network

docker network connect first_interconnected_network interconnected_db

docker build -t tiagoramirez/interconnected_app .

docker run --rm -d -p 5000:3000 --name interconnected_app --env MONGO_URL=mongodb://interconnected_db:27017/test tiagoramirez/interconnected_app

docker network connect first_interconnected_network interconnected_app