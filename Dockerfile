# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/runtime:5.0
MAINTAINER bileyg <volkov_va@ascon.ru>
COPY build App/
COPY libs App/
COPY settings /usr/share/ASCON/Pilot-BIM-Server
WORKDIR /App
RUN apt-get update && apt-get install -y libgomp1
RUN dpkg -i gcc-10-base_10.2.1-6_amd64.deb && dpkg -i gcc-12-base_12-20220319-1_amd64.deb && dpkg -i libgcc-s1_12-20220319-1_amd64.deb && dpkg -i libstdc++6_10.2.1-6_amd64.deb
ENTRYPOINT ["dotnet", "Ascon.Pilot.BimServer.Worker.dll"]
