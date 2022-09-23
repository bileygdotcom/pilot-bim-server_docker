# syntax=docker/dockerfile:1
FROM bileyg/hangar:0.6

LABEL project="Pilot-BIM-Server"\
      version="2.0"\
      mark="Dotnetless Debian"\
      mantainer="bileyg"\
      company="Ascon Complex"

COPY build App/
COPY settings /usr/share/ASCON/Pilot-BIM-Server
WORKDIR /App
RUN ["chmod","+x","Ascon.Pilot.BimService"]
RUN ["chmod","+x","pBimAdmin"]
ENTRYPOINT ["./Ascon.Pilot.BimService"]
#ENTRYPOINT ["dotnet", "Ascon.Pilot.BimService.dll"]
