# What is Counter-Strike: Global Offensive?

Counter-Strike: Global Offensive is a multiplayer first-person shooter video game. It is the fourth game in the Counter-Strike series. The game pits two teams against each other: the Terrorists and the Counter-Terrorists. Both sides are tasked with eliminating the other while also completing separate objectives. The Terrorists, depending on the game mode, must either plant the bomb or defend the hostages, while the Counter-Terrorists must either prevent the bomb from being planted, defuse the bomb, or rescue the hostages.

# Quick Start

## Basic

```
docker run -it \
    --expose 27015 \
    hackebein/csgo
```

## Enable API

```
docker run -it \
    --expose 27015 \
    -e "AUTHKEY=..." \
    hackebein/csgo
```
Get your [AUTHKEY](http://steamcommunity.com/dev/apikey)

## Public
If you have activated the API, this step happens automatically.

```
docker run -it \
    --expose 27015 \
    -e "GLST=..." \
    hackebein/csgo
```

Get your [GLST](http://steamcommunity.com/dev/managegameservers) (`APPID: 740`)

## Workshop Collection
Workshop access requires the API.

```
docker run -it \
    --expose 27015 \
    -e "AUTHKEY=..." \
    -e "WORKSHOPCOLLECTIONID=..." \
    hackebein/csgo
```

## Config

```
docker run -it \
    --expose 27015 \
    -v ./server.cfg:/opt/steam/csgo/cfg/server.cfg \
    hackebein/csgo
```

## Additional Environment

TICKRATE: Tickrate of server, **Attention:** Change not recommended
(`Default: 128`)

GAMEMODE:
(`Default: 0`)

GAMETYPE:
(`Default: 0`)

MAP: Map on Server start
(`Default: de_mirage`)

MAPGROUP:
(`Default: mg_active`)

CONFIG: Server config, **Attention:** Change not recommended
(`Default: server.cfg`)

MAXPLAYERS: Max players
(`Default: 16`)

CUSTOMPARAMETERS: additional parameters
(`Default: `)

## More Options

You can found more configuration options on the parent image page [hackebein/srcds](https://hub.docker.com/r/hackebein/srcds)
