FROM hackebein/srcds

RUN \
	mkdir -p "$HOME/.steam/sdk32/" && \
	ln -s "/opt/steamcmd/linux32/steamclient.so" "$HOME/.steam/sdk32/" && \
	mkdir -p "$HOME/.steam/sdk64/" && \
	ln -s "/opt/steamcmd/linux64/steamclient.so" "$HOME/.steam/sdk64/"

ENV \
	# App
	APPS="730 -validate -language en" \
	#
	# API
	# http://steamcommunity.com/dev/apikey
	AUTHKEY="" \
	#
	# Public access
	# automatic via API
	GLSTAPP="730" \
	# manual
	# APPID: 730
	# http://steamcommunity.com/dev/managegameservers
	GLST="" \
	#
	# Workshop (require API)
	WORKSHOPCOLLECTIONID="" \
	#
	# Server config
	MAXPLAYERS="16" \
	GAMEMODE="0" \
	GAMETYPE="0" \
	MAP="de_mirage" \
	MAPGROUP="mg_active" \
	CONFIG="server.cfg" \
	#
	SRCDSBIN="game/bin/linuxsteamrt64/cs2" \
	# Start parameters
	SRCDSPARAMS="\
		-dedicated \
		-console \
		-usercon \
		-maxplayers \${MAXPLAYERS} \
		-authkey \${AUTHKEY} \
		+host_workshop_collection \${WORKSHOPCOLLECTIONID} \
		+workshop_start_map \
		+game_mode \${GAMEMODE} \
		+game_type \${GAMETYPE} \
		+map \${MAP} \
		+mapgroup \${MAPGROUP} \
		+servercfgfile \${CONFIG} \
		\${CUSTOMPARAMETERS} \
	"
