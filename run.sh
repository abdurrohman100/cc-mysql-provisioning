#container ini akan dinamai PHONEBOOK
docker rm -f MYSQLPROV
#docker run -d -p 32000:32000 --name PHONEBOOK my-phonebook-service:latest
#docker run -d -p 32111:32111 --name MYSQLPROV mysql-provisioning:latest
docker run -v /var/run/docker.sock:/var/run/docker.sock --privileged=true -d -p 32111:32111 --name MYSQLPROV mysql-provisioning:latest
