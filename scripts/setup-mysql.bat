@echo off
echo Setting up MySQL container...

REM Set environment variables
set MYSQL_PW=my-secret-pw

echo Step 1: Pulling MySQL Docker image...
docker pull mysql/mysql-server:latest

echo Step 2: Creating custom network...
docker network create --subnet=172.18.0.0/24 tooling_app_network

echo Step 3: Running MySQL container...
docker run --network tooling_app_network -h mysqlserverhost --name=mysql-server -e MYSQL_ROOT_PASSWORD=%MYSQL_PW% -d mysql/mysql-server:latest

echo Step 4: Waiting for MySQL to start (30 seconds)...
timeout /t 30 /nobreak

echo Step 5: Creating database user...
docker exec -i mysql-server mysql -uroot -p%MYSQL_PW% < mysql-setup\create_user.sql

echo MySQL setup complete!
echo Container name: mysql-server
echo Network: tooling_app_network
echo Root password: %MYSQL_PW%
echo User: tooling_user
echo User password: tooling_pass

pause