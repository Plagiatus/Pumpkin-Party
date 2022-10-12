tag @s[type=player] add has_costume


execute if score @s costume matches 3001 run function lobby:costume/skeleton
execute if score @s costume matches 3003 run function lobby:costume/zombie
execute if score @s[tag=ul_zombified_piglin] costume matches 3317 run function lobby:costume/zombified_piglin
execute if score @s[tag=!ul_zombified_piglin] costume matches 3317 run function lobby:costume/info/zombified_piglin
execute if score @s[tag=ul_llama_brown] costume matches 3028 run function lobby:costume/llama_brown
execute if score @s[tag=!ul_llama_brown] costume matches 3028 run function lobby:costume/info/llama_brown

execute if score @s[tag=ul_stray] costume matches 3101 run function lobby:costume/stray
execute if score @s[tag=!ul_stray] costume matches 3101 run function lobby:costume/info/stray
execute if score @s[tag=ul_husk] costume matches 3103 run function lobby:costume/husk
execute if score @s[tag=!ul_husk] costume matches 3103 run function lobby:costume/info/husk
execute if score @s[tag=ul_piglin] costume matches 3017 run function lobby:costume/piglin
execute if score @s[tag=!ul_piglin] costume matches 3017 run function lobby:costume/info/piglin
execute if score @s[tag=ul_trader_llama_beige] costume matches 3128 run function lobby:costume/trader_llama_beige
execute if score @s[tag=!ul_trader_llama_beige] costume matches 3128 run function lobby:costume/info/trader_llama_beige

execute if score @s[tag=ul_wither_skeleton] costume matches 3201 run function lobby:costume/wither_skeleton
execute if score @s[tag=!ul_wither_skeleton] costume matches 3201 run function lobby:costume/info/wither_skeleton
execute if score @s[tag=ul_drowned] costume matches 3203 run function lobby:costume/drowned
execute if score @s[tag=!ul_drowned] costume matches 3203 run function lobby:costume/info/drowned
execute if score @s[tag=ul_piglin_brute] costume matches 3117 run function lobby:costume/piglin_brute
execute if score @s[tag=!ul_piglin_brute] costume matches 3117 run function lobby:costume/info/piglin_brute
execute if score @s[tag=ul_llama_gray_bandito] costume matches 3228 run function lobby:costume/llama_gray_bandito
execute if score @s[tag=!ul_llama_gray_bandito] costume matches 3228 run function lobby:costume/info/llama_gray_bandito

execute if score @s[tag=ul_sans] costume matches 3301 run function lobby:costume/sans
execute if score @s[tag=!ul_sans] costume matches 3301 run function lobby:costume/info/sans
execute if score @s[tag=ul_zombie_villager] costume matches 3303 run function lobby:costume/zombie_villager
execute if score @s[tag=!ul_zombie_villager] costume matches 3303 run function lobby:costume/info/zombie_villager
execute if score @s[tag=ul_piglin_chan] costume matches 3217 run function lobby:costume/piglin_chan
execute if score @s[tag=!ul_piglin_chan] costume matches 3217 run function lobby:costume/info/piglin_chan
execute if score @s[tag=ul_llama_white_decorated] costume matches 3328 run function lobby:costume/llama_white_decorated
execute if score @s[tag=!ul_llama_white_decorated] costume matches 3328 run function lobby:costume/info/llama_white_decorated


execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

