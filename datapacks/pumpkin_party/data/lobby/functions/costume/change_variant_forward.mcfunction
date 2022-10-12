scoreboard players add @s costume 100
#Horse
execute at @s[tag=horse_costume] run scoreboard players add @e[type=minecraft:armor_stand,distance=0.1..3,tag=horse_costume] costume 100

execute if score @s costume matches 100..999 run scoreboard players remove @s costume 100
execute if score @s costume matches 1200..1999 run scoreboard players remove @s costume 200
execute if score @s costume matches 2300..2999 run scoreboard players remove @s costume 300
execute if score @s costume matches 3400..3999 run scoreboard players remove @s costume 400
execute if score @s costume matches 3301 at @s at @p unless entity @p[distance=..0.1,tag=ul_sans] run scoreboard players remove @s costume 300
execute if score @s costume matches 4500..4999 run scoreboard players remove @s costume 500
execute if score @s costume matches 5600..5999 run scoreboard players remove @s costume 600
#Horse
execute if score @s[tag=horse_costume] costume matches 6730..6731 run scoreboard players remove @e[type=minecraft:armor_stand,distance=0.1..3,tag=horse_costume] costume 700
execute if score @s costume matches 6700..6999 run scoreboard players remove @s costume 700
execute if score @s costume matches 7800..7999 run scoreboard players remove @s costume 800
execute if score @s costume matches 8900..8999 run scoreboard players remove @s costume 900

