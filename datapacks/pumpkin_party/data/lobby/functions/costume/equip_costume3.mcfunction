tag @s[type=player] add has_costume

execute if score @s costume matches 241 run function lobby:costume/snow_fox
execute if score @s costume matches 242 run function lobby:costume/white_pumpkin

execute if score @s costume matches 243 run function lobby:costume/drowned
execute if score @s costume matches 244 run function lobby:costume/wither_skeleton
execute if score @s costume matches 245 run function lobby:costume/piglin_brute
execute if score @s costume matches 266 run function lobby:costume/llama_gray_bandito
execute if score @s costume matches 267 run function lobby:costume/pillager
execute if score @s costume matches 268 run function lobby:costume/horse_gray
execute if score @s costume matches 269 run function lobby:costume/horse_gray_back
execute if score @s costume matches 270 run function lobby:costume/villager_jungle_fletcher

execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume
playsound minecraft:item.armor.equip_leather master @a 
