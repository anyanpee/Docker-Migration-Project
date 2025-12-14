CREATE USER 'tooling_user'@'%' IDENTIFIED BY 'tooling_pass';
GRANT ALL PRIVILEGES ON *.* TO 'tooling_user'@'%';
FLUSH PRIVILEGES;