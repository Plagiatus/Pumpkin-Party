# all players
tp @a -500 64 -500
tellraw @a [{"text": "[Spider Run]","color": "#FF6600"},{"text": " Generating tunnel. Lag incoming.","color": "gray"}]

schedule function sr:generation/prepare 10t
team join sr_play @a

function pp:all_games/start

gamerule spectatorsGenerateChunks true