FROM steamcmd/steamcmd:latest

RUN mkdir -p /home/steam/valheim-server

RUN /root/.local/share/Steam/steamcmd/steamcmd.sh +force_install_dir /home/steam/valheim-server +login anonymous +app_update 896660 -beta public-test -betapassword yesimadebackups validate +exit

WORKDIR /home/steam/valheim-server

EXPOSE 2456/udp
EXPOSE 2457/udp

ENV LD\_LIBRARY\_PATH=./linux64:$LD\_LIBRARY\_PATH
ENV SteamAppId=892970

ENTRYPOINT [""]
CMD ["./valheim_server.x86_64", "-name" ,"Scheletoni", "-port", "2456" ,"-world","lumealuiandrei", "-password", "Parolasimpla123", "-public", "1"]
# World name "lumealuiandrei" and password "Parolasimpla123" should be replaced
# TODO: Have these as ENVs
