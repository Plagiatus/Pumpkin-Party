# Runs if all players get zombified
# @calledBy: gm:game_logic
# @calls: gm:calculate_winner, gm:clean_arena
# @author: dragonmaster95

function gm:calculate_winner

#Lose message
title @a[team=ze_play] title [{"text":"Game Over","color":"dark_blue"}]
tellraw @a[team=ze_play] {"text":"Everyone was zombiefied!","color":"gray"}

#Points
execute as @a[team=ze_play] run scoreboard players operation @s points += @s ze_points
execute if entity @e[type=armor_stand,tag=GEN,tag=!singleGame] as @a[team=ze_play] run tellraw @s ["",{"text":"Candies Earned = ","color":"dark_gray"},{"text":"+","color":"dark_green"},{"score":{"name":"@s","objective":"ze_points"},"color":"dark_green"}]

#Stop game after a few seconds
schedule function gm:clean_arena 7s
