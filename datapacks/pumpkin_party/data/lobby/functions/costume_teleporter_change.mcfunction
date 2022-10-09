scoreboard players add @s tmp 1
execute if score @s tmp matches 5 run scoreboard players set @s tmp 0

execute if score @s tmp matches 0 run function lobby:costume/evoker
execute if score @s tmp matches 1 run function lobby:costume/strider
execute if score @s tmp matches 2 run function lobby:costume/cave_spider
execute if score @s tmp matches 3 run function lobby:costume/piglin
execute if score @s tmp matches 4 run function lobby:costume/wolf
data merge entity @s {CustomName:'{"text":"Warp to Costumes"}'}