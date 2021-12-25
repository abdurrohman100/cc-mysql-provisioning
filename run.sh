docker rm -f MYSQLPROV
docker run -v /var/run/docker.sock:/var/run/docker.sock --privileged=true -d -p 32111:32111 --name MYSQLPROV mysql-provisioning:latest
