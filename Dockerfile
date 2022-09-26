# syntax=docker/dockerfile:1
FROM bileyg/hangar:0.7

LABEL project="Pilot-BIM-Server"\
      version="2.0"\
      mark="on hangar 0.7"\
      mantainer="bileyg"\
      company="Ascon Complex"

COPY build App/
COPY settings /usr/share/ASCON/Pilot-BIM-Server
WORKDIR /App
#RUN ["chmod","+x","Ascon.Pilot.BimService"]
#RUN ["chmod","+x","pBimAdmin"]
#ENTRYPOINT ["./Ascon.Pilot.BimService"]
# dotnet setup
#RUN ["wget","https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb"]
#RUN ["dpkg","-i","packages-microsoft-prod.deb"]
#RUN ["rm","packages-microsoft-prod.deb"]
#RUN ["apt-get","update"]
#RUN ["apt-get","install","-y","dotnet-sdk-5.0"]
ENTRYPOINT ["dotnet", "Ascon.Pilot.BimService.dll"]
