scoreboard players add @s costume 100
execute at @s[tag=horse_costume] run scoreboard players add @e[type=minecraft:armor_stand,distance=0.1..3,tag=horse_costume] costume 100

execute if score @s costume matches 100..119 run scoreboard players remove @s costume 100
execute if score @s costume matches 200..240 run scoreboard players remove @s costume 200
execute if score @s costume matches 300..342 run scoreboard players remove @s costume 300
execute if score @s costume matches 344 if entity @p[tag=!ul_sans] run scoreboard players remove @s costume 300
execute if score @s costume matches 400..466 run scoreboard players remove @s costume 400
execute if score @s costume matches 500..567 run scoreboard players remove @s costume 500
execute if score @s costume matches 600..667 run scoreboard players remove @s costume 600

#Horse
execute if score @s[tag=horse_costume] costume matches 700..769 run scoreboard players remove @e[type=minecraft:armor_stand,distance=0.1..3,tag=horse_costume] costume 700
execute if score @s costume matches 700..769 run scoreboard players remove @s costume 700

execute if score @s costume matches 800.. run scoreboard players remove @s costume 800