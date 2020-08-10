FROM debian:buster

RUN apt update && \
    apt install -y wget zip unzip

WORKDIR /tmserver
RUN wget http://files.v04.maniaplanet.com/server/TrackmaniaServer_Latest.zip && \
    unzip TrackmaniaServer_Latest.zip && \
    rm TrackmaniaServer_Latest.zip && \
    ls

WORKDIR /tmserver/UserData/Config
RUN mv dedicated_cfg.default.txt dedicated_cfg.txt

WORKDIR /tmserver/UserData/Maps/MatchSettings
RUN mv example.txt maplist.txt

WORKDIR /tmserver
COPY tmserver.sh ./tmserver.sh

CMD [ "./tmserver.sh" ]