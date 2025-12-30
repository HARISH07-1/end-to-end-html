@echo off

SET IMAGE_NAME=html-app
SET CONTAINER_NAME=html-container

echo Stopping old container if exists...
docker stop %CONTAINER_NAME% 2>nul
docker rm %CONTAINER_NAME% 2>nul

echo Running new container...
docker run -d -p 80:80 --name %CONTAINER_NAME% %IMAGE_NAME%

echo Deployment completed successfully
