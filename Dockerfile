FROM hackebein/srcds

ENV APPS="740" \
    TICKRATE="128" \
    MAXPLAYERS="16" \
    #http://steamcommunity.com/dev/apikey
    AUTHKEY="" \
    WORKSHOPCOLLECTIONID="" \
    # sandbox or terrortown
    GAMEMODE="0" \
	GAMETYPE="0" \
    MAP="de_mirage" \
    MAPGROUP="mg_active" \
    #http://steamcommunity.com/dev/managegameservers APPID: 4000
    GLST="" \
    CONFIG="server.cfg" \
    CUSTOMPARAMETERS="" \
    SRCDSPARAMS="\
        -game csgo \
		-usercon \
		-nobreakpad \
        -tickrate ${TICKRATE} \
        -maxplayers ${MAXPLAYERS} \
        -authkey ${AUTHKEY} \
        +host_workshop_collection ${WORKSHOPCOLLECTIONID} \
		+workshop_start_map \
        +gamemode ${GAMEMODE} \
		+game_type ${GAMETYPE} \
        +map ${MAP} \
		+mapgroup ${MAPGROUP} \
        +sv_setsteamaccount ${GLST} \
        +servercfgfile ${CONFIG} \
        ${CUSTOMPARAMETERS} \
    "
