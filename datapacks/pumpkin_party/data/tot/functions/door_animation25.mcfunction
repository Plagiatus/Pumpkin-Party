# Calculates candy and plays sounds
# @calledBy: tot:door_animation
# @author: dragonmaster95

scoreboard players set $max tmp 4
function pp:util/get_random
scoreboard players add $random tmp 1

scoreboard players operation @s points = $random tmp 

execute if entity @s[tag=!tot_witch] run playsound minecraft:entity.villager.yes master @a ^ ^ ^2 1 1.1
execute if entity @s[tag=!tot_witch] run particle minecraft:happy_villager ^ ^1 ^2 0.5 1 0.5 1 50 force @a
execute if entity @s[tag=!tot_witch] run scoreboard players operation @p[dy=0,tag=tot_tricking] tot_treats = @s points

execute if entity @s[tag=tot_witch] run playsound minecraft:entity.witch.ambient master @a[dy=0] ~ ~ ~ 1 0.9
execute if entity @s[tag=tot_witch] run particle minecraft:angry_villager ~ ~1.0 ~ 0.2 1 0.2 1 50 force @a
execute if entity @s[tag=tot_witch] run scoreboard players operation @s tmp *= #-1 const

scoreboard players operation @p[tag=tot_tricking,dy=0] tot_treats += @s tmp
