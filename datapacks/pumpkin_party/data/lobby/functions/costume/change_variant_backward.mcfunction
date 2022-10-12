scoreboard players remove @s costume 100
#Horse
execute at @s[tag=horse_costume] run scoreboard players remove @e[type=minecraft:armor_stand,distance=0.1..3,tag=horse_costume] costume 100

execute if score @s costume matches ..-1 run scoreboard players add @s costume 100
execute if score @s costume matches 900..999 run scoreboard players add @s costume 200
execute if score @s costume matches 1900..1999 run scoreboard players add @s costume 300
execute if score @s costume matches 2900..2999 run scoreboard players add @s costume 400
execute if score @s costume matches 3301 at @s at @p unless entity @p[distance=..0.1,tag=ul_sans] run scoreboard players remove @s costume 100
execute if score @s costume matches 3900..3999 run scoreboard players add @s costume 500
execute if score @s costume matches 4900..4999 run scoreboard players add @s costume 600
#Horse
execute if score @s[tag=horse_costume] costume matches 5930..5931 run scoreboard players add @e[type=minecraft:armor_stand,distance=..5,tag=horse_costume] costume 700
execute if score @s costume matches 5900..5999 run scoreboard players add @s costume 700
execute if score @s costume matches 6900..6999 run scoreboard players add @s costume 800
execute if score @s costume matches 7900..7999 run scoreboard players add @s costume 900
execute if score @s costume matches 8900..8999 run scoreboard players add @s costume 1000
execute if score @s costume matches 9900..9999 run scoreboard players add @s costume 1100
execute if score @s costume matches -33 run scoreboard players add @s costume 500


