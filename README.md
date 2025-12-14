# Docker Migration Project

This project demonstrates migrating a VM-based PHP/MySQL application to Docker containers.

## Prerequisites

1. Install Docker Desktop for Windows from https://www.docker.com/products/docker-desktop/
2. Ensure Docker is running (check system tray for Docker icon)
3. Git should be installed for cloning repositories

## Quick Start

1. **Verify Docker Installation**
   ```cmd
   verify-docker.bat
   ```

2. **Run Complete Setup**
   ```cmd
   setup-migration-project.bat
   ```

## Manual Setup Steps

If you prefer to run steps individually:

1. **Setup MySQL Container**
   ```cmd
   scripts\setup-mysql.bat
   ```

2. **Clone Tooling Application**
   ```cmd
   scripts\clone-tooling-app.bat
   ```

3. **Setup Database Schema**
   ```cmd
   scripts\setup-database-schema.bat
   ```

4. **Test MySQL Connection**
   ```cmd
   scripts\test-mysql-connection.bat
   ```

## Configuration Details

- **MySQL Root Password**: `my-secret-pw`
- **Database User**: `tooling_user`
- **Database Password**: `tooling_pass`
- **Database Name**: `toolingdb`
- **Network**: `tooling_app_network` (172.18.0.0/24)
- **MySQL Container**: `mysql-server`
- **MySQL Host**: `mysqlserverhost`

## Next Steps

1. Update `tooling-app/html/db_conn.php` with connection details
2. Create Dockerfile for the tooling application
3. Build and run the application container
4. Configure Apache ServerName to fix warnings

## Troubleshooting

- Ensure Docker Desktop is running
- Check if ports 3306, 8085 are available
- Verify network connectivity between containers
- Check container logs: `docker logs mysql-server`