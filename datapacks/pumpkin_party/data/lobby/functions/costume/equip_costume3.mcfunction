tag @s[type=player] add has_costume

execute if score @s[tag=ul_snow_fox] costume matches 241 run function lobby:costume/snow_fox
execute if score @s[tag=!ul_snow_fox] costume matches 241 run function lobby:costume/info/snow_fox
execute if score @s[tag=ul_white_pumpkin] costume matches 242 run function lobby:costume/white_pumpkin
execute if score @s[tag=!ul_white_pumpkin] costume matches 242 run function lobby:costume/info/white_pumpkin


execute if score @s[tag=ul_drowned] costume matches 243 run function lobby:costume/drowned
execute if score @s[tag=!ul_drowned] costume matches 243 run function lobby:costume/info/drowned
execute if score @s[tag=ul_wither_skeleton] costume matches 244 run function lobby:costume/wither_skeleton
execute if score @s[tag=!ul_wither_skeleton] costume matches 244 run function lobby:costume/info/wither_skeleton
execute if score @s[tag=ul_piglin_brute] costume matches 245 run function lobby:costume/piglin_brute
execute if score @s[tag=!ul_piglin_brute] costume matches 245 run function lobby:costume/info/piglin_brute
execute if score @s[tag=ul_llama_gray_bandito] costume matches 266 run function lobby:costume/llama_gray_bandito
execute if score @s[tag=!ul_llama_gray_bandito] costume matches 266 run function lobby:costume/info/llama_gray_bandito
execute if score @s[tag=ul_pillager] costume matches 267 run function lobby:costume/pillager
execute if score @s[tag=!ul_pillager] costume matches 267 run function lobby:costume/info/pillager
execute if score @s[tag=ul_horse_gray] costume matches 268 run function lobby:costume/horse_gray
execute if score @s[tag=ul_horse_gray] costume matches 269 run function lobby:costume/horse_gray_back
execute if score @s[tag=!ul_horse_gray] costume matches 268..269 run function lobby:costume/info/horse_gray
execute if score @s[tag=ul_villager_jungle_fletcher] costume matches 270 run function lobby:costume/villager_jungle_fletcher
execute if score @s[tag=!ul_villager_jungle_fletcher] costume matches 270 run function lobby:costume/info/villager_jungle_fletcher


execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

