# all players
tp @a -500 64 -500
tellraw @a [{"text": "[Spider Run]","color": "#FF6600"},{"text": " Generating tunnel. Lag incoming.","color": "gray"}]

function sr:generation/prepare
team join sr_play @a

function pp:all_games/start