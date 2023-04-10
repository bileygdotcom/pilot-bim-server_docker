# syntax=docker/dockerfile:1
FROM bileyg/hangar:1.1

LABEL project="Pilot-BIM-Server"\
      version="1.4" \
      mantainer="bileyg"\
      company="Ascon Complex"

COPY build App/
COPY settings /usr/share/ASCON/Pilot-BIM-Server
WORKDIR /App
ENTRYPOINT ["dotnet", "Ascon.Pilot.BimService.dll"]
