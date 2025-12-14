@echo off
echo ========================================
echo Docker Migration Project Setup
echo ========================================

echo Step 1: Verifying Docker installation...
call verify-docker.bat

echo Step 2: Setting up MySQL container...
call scripts\setup-mysql.bat

echo Step 3: Cloning Tooling application...
call scripts\clone-tooling-app.bat

echo Step 4: Setting up database schema...
call scripts\setup-database-schema.bat

echo ========================================
echo Setup Complete!
echo ========================================
echo Next steps:
echo 1. Update tooling-app\html\db_conn.php with database connection details
echo 2. Create Dockerfile for the tooling application
echo 3. Build and run the tooling application container
echo ========================================

pause