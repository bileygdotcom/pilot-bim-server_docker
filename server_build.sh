#!/bin/bash

# bileyg/pilot-server

#rm -rf ~/GIT/pilot-server_docker/build/*

#echo "pilot-server build folder cleared"

#cd ~/GIT/pilot-server_docker/build
#wget https://pilot.ascon.ru/beta/pilot-server_$1.$2.zip
#unzip pilot-server_$1.$2.zip
#rm pilot-server_$1.$2.zip

echo "start building bileyg/pilot-bim-server-2 container"

#cd ../
sudo docker build -f Dockerfile -t bileyg/pilot-bim-server:$1 .
sudo docker push bileyg/pilot-bim-server:$1

echo "bileyg/pilot-bim-server container is built & pushed"





