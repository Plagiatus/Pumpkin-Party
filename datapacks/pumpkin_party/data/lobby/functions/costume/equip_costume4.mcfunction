tag @s[type=player] add has_costume
execute if score @s costume matches 343 run function lobby:costume/zombie_villager
execute if score @s costume matches 344 run function lobby:costume/sans
execute if score @s costume matches 345 run function lobby:costume/piglin_chan
execute if score @s costume matches 366 run function lobby:costume/llama_white_decorated

execute if score @s costume matches 367 run function lobby:costume/evoker
execute if score @s costume matches 368 run function lobby:costume/horse_black
execute if score @s costume matches 369 run function lobby:costume/horse_black_back
execute if score @s costume matches 370 run function lobby:costume/villager_taiga_armorer

execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume
playsound minecraft:item.armor.equip_leather master @a 
