# pilot-bim-server_docker
Docker container for Pilot-Bim-Server

## launch container 
`# docker run -ti --name pilot-bim-server -e DBCONNECT=http://[server_ip]:[port]/[database_name] -e ADMIN=[admin] -e PASS=[password] pilotdev/pilot-bim-server/latest`

### example
`sudo docker run -ti --name pilot-bim-server -e DBCONNECT=http://192.168.8.108:5546/pilot-bim_ru -e ADMIN=bimadmin -e PASS=****** pilotdev/pilot-bim-server/latest`
