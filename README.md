# pilot-bim-server_docker
Docker container for Pilot-Bim-Server

## launch container 
`sudo docker run -ti --name pilot-bim-server -e DBCONNECT=http://[server_ip]:[port]/[database_name] -e ADMIN=[admin] -e PASS=[password] bileyg/pbs-wine:0.6.0`
