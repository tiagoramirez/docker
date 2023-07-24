docker-compose build

docker-compose up -d

[ ! -d "./sql_data" ] && sleep 30

[ ! -d "./sql_data" ] && docker-compose exec db /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P Hola@1234 -i /usr/src/restore.sql