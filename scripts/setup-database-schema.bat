@echo off
echo Setting up database schema...

REM Set environment variables
set MYSQL_PW=my-secret-pw

echo Importing tooling database schema...
docker exec -i mysql-server mysql -uroot -p%MYSQL_PW% < tooling-app\html\tooling_db_schema.sql

echo Database schema setup complete!
echo Database name: toolingdb

pause