title @a reset
title @a clear

execute as @e[limit=1,type=armor_stand,name=ze_center,sort=random] at @s run function gm:summon_zombie
execute if score #ze_playerCount tmp matches ..3 as @e[limit=1,type=armor_stand,name=ze_center,sort=random] at @s run function gm:summon_zombie

effect give @a minecraft:instant_health 6 6 true
effect give @a minecraft:saturation 6 6 true
effect give @a minecraft:weakness 1200 100 true

scoreboard players set #ze_timer timer 1200
scoreboard players set #ze_gamestate tmp 3