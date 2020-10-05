# all players
tp @a -500 64 -500
tellraw @a ["",{"text":"\nSpider Run","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nRun through the tunnels to.\nescape from a giant spider!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Reach the end of the tunnel.","color":"gold"}]
execute if score bc_difficulty settings matches 0 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Normal","color":"#84A887"}]
execute if score bc_difficulty settings matches 1 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Hard","color":"#AA8686"}]
execute if score bc_difficulty settings matches 2 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Nightmare","color":"#AD5454"}]
tellraw @a "\n"
tellraw @a [{"text": "[Spider Run]","color": "#FF6600"},{"text": " Generating tunnel. Lag incoming.","color": "gray"}]
schedule function sr:generation/prepare 10t
team join sr_play @a

function pp:all_games/start

gamerule spectatorsGenerateChunks true