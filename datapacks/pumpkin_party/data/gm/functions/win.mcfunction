# Runs if the sun rises and there are still players alive
# @calledBy: gm:game_logic
# @calls: gm:calculate_winner, gm:clean_arena
# @author: dragonmaster95

function gm:winner/calculate_winner

#Winners
# title @a title [{"text":"Game Over","color":"dark_green"}]

# #Losers
# tellraw @a [{"text":"Game Over! Survivors: ","color":"green"},{"selector":"@a[gamemode=adventure,tag=gm_play]","color":"gold"}]
# tellraw @a[gamemode=spectator] {"text":"You were zombified!","color":"gray"}

# #Points
execute as @a[tag=gm_play] run scoreboard players operation @s points += @s gm_points
# execute if entity @e[type=minecraft:armor_stand,tag=GEN,tag=!singleGame] as @a[tag=gm_play] run tellraw @s ["",{"text":"Candies Earned = ","color":"dark_gray"},{"text":"+","color":"dark_green"},{"score":{"name":"@s","objective":"gm_points"},"color":"dark_green"}]

#Let zombies burn
time set day
advancement grant @a[gamemode=adventure] only gm:saved_by_the_sun
advancement grant @a[gamemode=adventure,scores={costume=43}] only lobby:unlocked/husk
execute as @e[tag=gm] run data merge entity @s {Fire:1000000,Invulnerable:0b}
gamemode spectator @a

#Stop game after a few seconds
schedule function gm:clean_arena 7s
scoreboard players set #gm_gamestate tmp 4