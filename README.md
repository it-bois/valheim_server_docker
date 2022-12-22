# :neckbeard:valheim_server_docker

_Pastrat pentru posteritate:_

Astept sa adauge toni config u ala de server BlaNao :bear:

-----

## :page_facing_up:About this repo

Keeping track of Valheim docker image definition _(and maybe various tools to keep the server alive)_

## :whale:Building the image

```
docker build -t $IMAGE_NAME:$TAG .

# e.g.:
docker build -t valheim-server:1.0.0
```

## :zap:Running the server

```
docker run -p 2456:2456/udp -p 2457:2457/udp -v $HOST_PATH:/root/.config/unity3d/IronGate/Valheim/worlds_local $IMAGE_NAME:$TAG

# e.g:
docker run -p 2456:2456/udp -p 2457:2457/udp -v /Users/Scheletoni/valheim-data-2:/root/.config/unity3d/IronGate/Valheim/worlds_local valheim-server:1.0.0
```