# all players
tp @a -500 64 -500
tellraw @a ["",{"text":"\nSpider Run","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nRun through the tunnels to.\nescape from a giant spider!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Reach the end of the tunnel.","color":"gold"}]
execute if score sr_difficulty settings matches 0 run tellraw @a ["",{"text":"Normal Rules:","color":"#84A887","bold":true},{"text":"\n -Spider moves at a moderate speed.\n -Tunnel is moderately long."}]
execute if score sr_difficulty settings matches 1 run tellraw @a ["",{"text":"Hard Rules:","color":"#AA8686","bold":true},{"text":"\n -Spider moves at a fast speed.\n -Tunnel is long."}]
execute if score sr_difficulty settings matches 2 run tellraw @a ["",{"text":"Nightmare Rules:","color":"#AD5454","bold":true},{"text":"\n -Spider moves at a crazy speed.\n -Tunnel is very long."}]

tellraw @a [{"text": "[Spider Run]","color": "#FF6600"},{"text": " Generating tunnel. Lag incoming.","color": "gray"}]
schedule function sr:generation/prepare 10t
team join sr_play @a

scoreboard players add @a sr_highscore 0
scoreboard players add #sr_highscore sr_highscore 0

function pp:all_games/start

gamerule spectatorsGenerateChunks true