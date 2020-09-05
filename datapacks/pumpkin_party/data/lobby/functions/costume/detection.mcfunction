scoreboard players operation @s costume = @e[type=armor_stand,distance=..0.75,limit=1,tag=Costume] costume
execute if score @s costume matches 0.. run function lobby:costume/equip_costume