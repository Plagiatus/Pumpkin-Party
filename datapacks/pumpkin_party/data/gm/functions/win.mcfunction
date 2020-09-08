title @a title [{"text":"Game Over","color":"dark_green"}]
scoreboard players add @a[gamemode=adventure] ze_points 1
tellraw @a [{"text":"Game Over! Survivors: ","color":"green"},{"selector":"@a[gamemode=adventure]","color":"gold"}]
tellraw @a[gamemode=spectator] {"text":"You were zombiefied!","color":"gray"}
execute as @a[team=ze_play] run scoreboard players operation @s points += @s ze_points
execute if entity @e[type=armor_stand,tag=GEN,tag=!singleGame] as @a[team=ze_play] run tellraw @s ["",{"text":"Candies Earned = ","color":"dark_gray"},{"text":"+","color":"dark_green"},{"score":{"name":"@s","objective":"ze_points"},"color":"dark_green"}]

time set day
advancement grant @a[gamemode=adventure] only pumpkinparty:gm/saved_by_the_sun
execute as @e[tag=ze] run data merge entity @s {Fire:1000000}
gamemode spectator @a

schedule function gm:clean_arena 7s
scoreboard players set #ze_gamestate tmp 4