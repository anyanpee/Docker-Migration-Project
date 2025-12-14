@echo off
echo Testing MySQL connection using Docker client...

echo Running MySQL client container to connect to MySQL server...
docker run --network tooling_app_network --name mysql-client -it --rm mysql mysql -h mysqlserverhost -u tooling_user -p

echo Connection test complete!