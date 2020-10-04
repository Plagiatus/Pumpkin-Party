

execute if score @s[tag=ul_wither] buyCostume matches 3 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_wither] buyCostume matches 3 run function lobby:costume/wither
execute if score @s[tag=ul_pufferfish] buyCostume matches 6 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_pufferfish] buyCostume matches 6 run function lobby:costume/pufferfish_middle
execute if score @s[tag=ul_evocation_fang] buyCostume matches 7 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_evocation_fang] buyCostume matches 7 run function lobby:costume/evocation_fang
execute if score @s[tag=ul_enderman] buyCostume matches 8 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_enderman] buyCostume matches 8 run function lobby:costume/enderman
execute if score @s[tag=ul_wolf] buyCostume matches 41 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_wolf] buyCostume matches 41 run function lobby:costume/wolf
execute if score @s[tag=ul_llama_brown] buyCostume matches 66 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_llama_brown] buyCostume matches 66 run function lobby:costume/llama_brown
execute if score @s[tag=ul_villager_plains_farmer] buyCostume matches 70 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_villager_plains_farmer] buyCostume matches 70 run function lobby:costume/villager_plains_farmer
execute if score @s[tag=ul_fox] buyCostume matches 141 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_fox] buyCostume matches 141 run function lobby:costume/fox
execute if score @s[tag=ul_piglin] buyCostume matches 145 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_piglin] buyCostume matches 145 run function lobby:costume/piglin
execute if score @s[tag=ul_trader_llama_beige] buyCostume matches 166 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_trader_llama_beige] buyCostume matches 166 run function lobby:costume/trader_llama_beige
execute if score @s[tag=ul_vindicator] buyCostume matches 167 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_vindicator] buyCostume matches 167 run function lobby:costume/vindicator
execute if score @s[tag=ul_wandering_trader] buyCostume matches 170 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_wandering_trader] buyCostume matches 170 run function lobby:costume/wandering_trader
execute if score @s[tag=ul_snow_fox] buyCostume matches 241 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_snow_fox] buyCostume matches 241 run function lobby:costume/snow_fox
execute if score @s[tag=ul_pillager] buyCostume matches 267 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_pillager] buyCostume matches 267 run function lobby:costume/pillager
execute if score @s[tag=ul_villager_jungle_fletcher] buyCostume matches 270 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_villager_jungle_fletcher] buyCostume matches 270 run function lobby:costume/villager_jungle_fletcher
execute if score @s[tag=ul_llama_white_decorated] buyCostume matches 366 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_llama_white_decorated] buyCostume matches 366 run function lobby:costume/llama_white_decorated
execute if score @s[tag=ul_villager_taiga_armorer] buyCostume matches 370 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_villager_taiga_armorer] buyCostume matches 370 run function lobby:costume/villager_taiga_armorer
execute if score @s[tag=ul_illusioner] buyCostume matches 467 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_illusioner] buyCostume matches 467 run function lobby:costume/illusioner
execute if score @s[tag=ul_villager_desert_librarian] buyCostume matches 470 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_villager_desert_librarian] buyCostume matches 470 run function lobby:costume/villager_desert_librarian
execute if score @s[tag=ul_villager_swamp] buyCostume matches 570 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_villager_swamp] buyCostume matches 570 run function lobby:costume/villager_swamp
execute if score @s[tag=ul_villager_snowy_cartographer] buyCostume matches 670 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_villager_snowy_cartographer] buyCostume matches 670 run function lobby:costume/villager_snowy_cartographer
execute if score @s[tag=ul_villager_savanna_weaponsmith] buyCostume matches 770 run function lobby:costume/info/purchase_twice
execute if score @s[tag=!ul_villager_savanna_weaponsmith] buyCostume matches 770 run function lobby:costume/villager_savanna_weaponsmith

#tellraw @s[tag=!double_purchase] ["",{"text": "You successfully unlocked the: "},{"nbt":"CustomName","entity":"@e[type=minecraft:armor_stand,distance=..0.1,tag=Costume]","interpret":true,"color":"#FF6600"},{"text":" Costume","color":"#FF6600"}]

#Remove coins
scoreboard players operation @s[tag=!double_purchase] candies -= @e[type=armor_stand,limit=1,distance=..0.1,tag=Costume] const
tag @s remove double_purchase
scoreboard players enable @s buyCostume
scoreboard players operation @s[tag=!double_purchase] costume = @e[type=armor_stand,limit=1,distance=..0.1,tag=Costume] costume