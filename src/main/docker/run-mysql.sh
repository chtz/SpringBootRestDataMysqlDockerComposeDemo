#/bin/bash
docker run --name db -e MYSQL_ROOT_PASSWORD=s3cret -e MYSQL_DATABASE=db -e MYSQL_USER=user -e MYSQL_PASSWORD=pazz -d mysql:latest
