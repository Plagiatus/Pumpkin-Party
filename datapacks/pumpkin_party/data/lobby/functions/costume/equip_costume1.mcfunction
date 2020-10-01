tag @s[type=player] add has_costume
execute if score @s costume matches 0 run function lobby:costume/none
execute if score @s costume matches 1 run function lobby:costume/creeper
execute if score @s costume matches 2 run function lobby:costume/blaze
execute if score @s[tag=ul_wither] costume matches 3 run function lobby:costume/wither
execute if score @s[tag=!ul_wither] costume matches 3 run function lobby:costume/info/wither
execute if score @s[tag=ul_squid] costume matches 4 run function lobby:costume/squid
execute if score @s[tag=!ul_squid] costume matches 4 run function lobby:costume/info/squid
execute if score @s[tag=ul_phantom] costume matches 5 run function lobby:costume/phantom
execute if score @s[tag=!ul_phantom] costume matches 5 run function lobby:costume/info/phantom
  
  
execute if score @s[tag=ul_pufferfish] costume matches 6 run function lobby:costume/pufferfish_middle
execute if score @s[tag=!ul_pufferfish] costume matches 6 run function lobby:costume/info/pufferfish_middle
execute if score @s[tag=ul_evocation_fang] costume matches 7 run function lobby:costume/evocation_fang
execute if score @s[tag=!ul_evocation_fang] costume matches 7 run function lobby:costume/info/evocation_fang
execute if score @s[tag=ul_enderman] costume matches 8 run function lobby:costume/enderman
execute if score @s[tag=!ul_enderman] costume matches 8 run function lobby:costume/info/enderman
execute if score @s costume matches 9 run function lobby:costume/ghast
execute if score @s[tag=ul_strider] costume matches 10 run function lobby:costume/strider
execute if score @s[tag=!ul_strider] costume matches 10 run function lobby:costume/info/strider


execute if score @s costume matches 21 run function lobby:costume/ghost
execute if score @s[tag=ul_spider] costume matches 22 run function lobby:costume/spider
execute if score @s[tag=!ul_spider] costume matches 22 run function lobby:costume/info/spider
execute if score @s[tag=ul_wolf] costume matches 41 run function lobby:costume/wolf
execute if score @s[tag=!ul_wolf] costume matches 41 run function lobby:costume/info/wolf
execute if score @s costume matches 42 run function lobby:costume/jack_o_lantern
execute if score @s costume matches 43 run function lobby:costume/zombie
execute if score @s costume matches 44 run function lobby:costume/skeleton
execute if score @s[tag=ul_zombified_piglin] costume matches 45 run function lobby:costume/zombified_piglin
execute if score @s[tag=!ul_zombified_piglin] costume matches 45 run function lobby:costume/info/zombified_piglin
execute if score @s[tag=ul_llama_brown] costume matches 66 run function lobby:costume/llama_brown
execute if score @s[tag=!ul_llama_brown] costume matches 66 run function lobby:costume/info/llama_brown
execute if score @s[tag=ul_witch] costume matches 67 run function lobby:costume/witch
execute if score @s[tag=!ul_witch] costume matches 67 run function lobby:costume/info/witch
execute if score @s[tag=ul_horse_brown] costume matches 68 run function lobby:costume/horse_brown
execute if score @s[tag=ul_horse_brown] costume matches 69 run function lobby:costume/horse_brown_back
execute if score @s[tag=!ul_horse_brown] costume matches 68..69 run function lobby:costume/info/horse_brown
execute if score @s[tag=ul_villager_plains_farmer] costume matches 70 run function lobby:costume/villager_plains_farmer
execute if score @s[tag=!ul_villager_plains_farmer] costume matches 70 run function lobby:costume/info/villager_plains_farmer

execute store result score @s[type=player,tag=!costume_sneak] tmp run clear @s orange_dye 0
execute if score @s[type=player,tag=!costume_sneak] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume
