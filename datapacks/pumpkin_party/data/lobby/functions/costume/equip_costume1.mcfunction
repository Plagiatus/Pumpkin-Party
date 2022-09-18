tag @s[type=player] add has_costume

execute if score @s[tag=ul_spider] costume matches 1004 run function lobby:costume/spider
execute if score @s[tag=!ul_spider] costume matches 1004 run function lobby:costume/info/spider
execute if score @s[tag=ul_slime] costume matches 1009 run function lobby:costume/slime
execute if score @s[tag=!ul_slime] costume matches 1009 run function lobby:costume/info/slime
execute if score @s costume matches 1011 run function lobby:costume/ghost
execute if score @s[tag=ul_pufferfish] costume matches 1022 run function lobby:costume/pufferfish
execute if score @s[tag=!ul_pufferfish] costume matches 1022 run function lobby:costume/info/pufferfish
execute if score @s[tag=ul_squid] costume matches 1024 run function lobby:costume/squid
execute if score @s[tag=!ul_squid] costume matches 1024 run function lobby:costume/info/squid


execute if score @s[tag=ul_cave_spider] costume matches 1104 run function lobby:costume/cave_spider
execute if score @s[tag=!ul_cave_spider] costume matches 1104 run function lobby:costume/info/cave_spider
execute if score @s[tag=ul_magma_cube] costume matches 1109 run function lobby:costume/magma_cube
execute if score @s[tag=!ul_magma_cube] costume matches 1109 run function lobby:costume/info/magma_cube
execute if score @s[tag=ul_gold_ghost] costume matches 1111 run function lobby:costume/gold_ghost
execute if score @s[tag=!ul_gold_ghost] costume matches 1111 run function lobby:costume/info/gold_ghost
execute if score @s[tag=ul_glow_squid] costume matches 1124 run function lobby:costume/glow_squid
execute if score @s[tag=!ul_glow_squid] costume matches 1124 run function lobby:costume/info/glow_squid

execute if score @s costume matches 1204 run function lobby:costume/giant_spider


execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

