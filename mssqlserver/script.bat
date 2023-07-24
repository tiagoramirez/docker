docker-compose build

docker-compose up -d

sleep 30

docker-compose exec db /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P Hola@1234 -i /usr/src/restore.sql