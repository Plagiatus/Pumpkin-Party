scoreboard players remove @s costume 100
execute at @s[tag=horse_costume] run scoreboard players remove @e[type=minecraft:armor_stand,distance=0.1..3,tag=horse_costume] costume 100

execute if score @s costume matches ..-81 run scoreboard players add @s costume 100
execute if score @s costume matches ..-60 run scoreboard players add @s costume 200
execute if score @s costume matches -59..-58 run scoreboard players add @s costume 300
execute if score @s costume matches -57..-34 run scoreboard players add @s costume 400
execute if score @s costume matches 344 if entity @p[tag=!ul_sans] run scoreboard players remove @s costume 100
execute if score @s costume matches -33 run scoreboard players add @s costume 500

#Horse
execute if score @s[tag=horse_costume] costume matches -32..-31 run scoreboard players add @e[type=minecraft:armor_stand,distance=..5,tag=horse_costume] costume 700
execute if score @s costume matches -32..-31 run scoreboard players add @s costume 700

execute if score @s costume matches ..-30 run scoreboard players add @s costume 800