const_value set 2
	const ROCKTUNNEL1F_POKE_BALL1
	const ROCKTUNNEL1F_POKE_BALL2

RockTunnel1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

RockTunnel1FElixer:
	itemball ELIXER

RockTunnel1FHPUp:
	itemball HP_UP

RockTunnel1FHiddenXAccuracy:
	dwb EVENT_ROCK_TUNNEL_1F_HIDDEN_X_ACCURACY, X_ACCURACY

RockTunnel1FHiddenXDefend:
	dwb EVENT_ROCK_TUNNEL_1F_HIDDEN_X_DEFEND, X_DEFEND

RockTunnel1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 8
	warp_def $3, $f, 1, ROUTE_9
	warp_def $19, $b, 1, ROUTE_10_SOUTH
	warp_def $3, $5, 1, ROCK_TUNNEL_B1F
	warp_def $9, $f, 2, ROCK_TUNNEL_B1F
	warp_def $3, $19, 3, ROCK_TUNNEL_B1F
	warp_def $d, $1b, 4, ROCK_TUNNEL_B1F
	warp_def $d, $4, 5, ROCK_TUNNEL_B1F
	warp_def $f, $6, 2, ROCK_TUNNEL_2F

.XYTriggers:
	db 0

.Signposts:
	db 2
	signpost 4, 23, SIGNPOST_ITEM, RockTunnel1FHiddenXAccuracy
	signpost 18, 4, SIGNPOST_ITEM, RockTunnel1FHiddenXDefend

.PersonEvents:
	db 2
	person_event SPRITE_POKE_BALL, 15, 21, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, RockTunnel1FElixer, EVENT_ROCK_TUNNEL_1F_ELIXER
	person_event SPRITE_POKE_BALL, 15, 10, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, RockTunnel1FHPUp, EVENT_ROCK_TUNNEL_1F_HP_UP
