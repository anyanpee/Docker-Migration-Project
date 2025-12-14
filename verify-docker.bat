@echo off
echo Verifying Docker installation...
echo.

echo Checking Docker version:
docker --version
echo.

echo Checking Docker Engine status:
docker info
echo.

echo Listing Docker images:
docker images
echo.

echo Docker verification complete!
pause