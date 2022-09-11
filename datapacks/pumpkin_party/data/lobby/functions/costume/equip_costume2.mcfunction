tag @s[type=player] add has_costume

execute if score @s[tag=ul_gold_ghost] costume matches 121 run function lobby:costume/gold_ghost
execute if score @s[tag=!ul_gold_ghost] costume matches 121 run function lobby:costume/info/gold_ghost
execute if score @s[tag=ul_cave_spider] costume matches 122 run function lobby:costume/cave_spider
execute if score @s[tag=!ul_cave_spider] costume matches 122 run function lobby:costume/info/cave_spider
execute if score @s[tag=ul_glow_squid] costume matches 123 run function lobby:costume/glow_squid
execute if score @s[tag=!ul_glow_squid] costume matches 123 run function lobby:costume/info/glow_squid
execute if score @s[tag=ul_fox] costume matches 141 run function lobby:costume/fox
execute if score @s[tag=!ul_fox] costume matches 141 run function lobby:costume/info/fox
execute if score @s[tag=ul_headless_horseman] costume matches 142 run function lobby:costume/headless_horseman
execute if score @s[tag=!ul_headless_horseman] costume matches 142 run function lobby:costume/info/headless_horseman
execute if score @s[tag=ul_husk] costume matches 143 run function lobby:costume/husk
execute if score @s[tag=!ul_husk] costume matches 143 run function lobby:costume/info/husk
execute if score @s[tag=ul_stray] costume matches 144 run function lobby:costume/stray
execute if score @s[tag=!ul_stray] costume matches 144 run function lobby:costume/info/stray
execute if score @s[tag=ul_piglin] costume matches 145 run function lobby:costume/piglin
execute if score @s[tag=!ul_piglin] costume matches 145 run function lobby:costume/info/piglin
execute if score @s[tag=ul_trader_llama_beige] costume matches 166 run function lobby:costume/trader_llama_beige
execute if score @s[tag=!ul_trader_llama_beige] costume matches 166 run function lobby:costume/info/trader_llama_beige
execute if score @s[tag=ul_vindicator] costume matches 167 run function lobby:costume/vindicator
execute if score @s[tag=!ul_vindicator] costume matches 167 run function lobby:costume/info/vindicator
execute if score @s[tag=ul_horse_white] costume matches 168 run function lobby:costume/horse_white
execute if score @s[tag=ul_horse_white] costume matches 169 run function lobby:costume/horse_white_back
execute if score @s[tag=!ul_horse_white] costume matches 168..169 run function lobby:costume/info/horse_white
execute if score @s[tag=ul_wandering_trader] costume matches 170 run function lobby:costume/wandering_trader
execute if score @s[tag=!ul_wandering_trader] costume matches 170 run function lobby:costume/info/wandering_trader

execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

