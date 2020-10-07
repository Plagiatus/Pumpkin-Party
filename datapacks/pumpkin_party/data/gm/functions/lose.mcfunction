# Runs if all players get zombified
# @calledBy: gm:game_logic
# @calls: gm:calculate_winner, gm:clean_arena
# @author: dragonmaster95

#Lose message
tellraw @a[tag=gm_play] {"text":"Everyone was zombified!","color":"gray"}
title @a[tag=gm_play] title [{"text":"Game Over","color":"dark_blue"}]

function gm:winner/calculate_winner

#Points
execute as @a[tag=gm_play] run scoreboard players operation @s points += @s gm_points
# execute if entity @e[type=minecraft:armor_stand,tag=GEN,tag=!singleGame] as @a[tag=gm_play] run tellraw @s ["",{"text":"Candies Earned = ","color":"dark_gray"},{"text":"+","color":"dark_green"},{"score":{"name":"@s","objective":"gm_points"},"color":"dark_green"}]

#Stop game after a few seconds
schedule function gm:clean_arena 7s
