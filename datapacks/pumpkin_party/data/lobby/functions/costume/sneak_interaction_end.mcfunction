scoreboard players remove @s costume 1000
execute if score @s costume matches ..99 run function lobby:costume/equip_costume1
execute if score @s costume matches 100..199 run function lobby:costume/equip_costume2
execute if score @s costume matches 200..299 run function lobby:costume/equip_costume3
execute if score @s costume matches 300..399 run function lobby:costume/equip_costume4
execute if score @s costume matches 400..499 run function lobby:costume/equip_costume5
execute if score @s costume matches 500..599 run function lobby:costume/equip_costume6
