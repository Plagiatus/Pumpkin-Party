tag @s[type=player] add has_costume

execute if score @s[tag=ul_villager_plains_farmer] costume matches 7027 run function lobby:costume/villager_plains_farmer
execute if score @s[tag=!ul_villager_plains_farmer] costume matches 7027 run function lobby:costume/info/villager_plains_farmer

execute if score @s[tag=ul_wandering_trader] costume matches 7127 run function lobby:costume/wandering_trader
execute if score @s[tag=!ul_wandering_trader] costume matches 7127 run function lobby:costume/info/wandering_trader

execute if score @s[tag=ul_villager_jungle_fletcher] costume matches 7227 run function lobby:costume/villager_jungle_fletcher
execute if score @s[tag=!ul_villager_jungle_fletcher] costume matches 7227 run function lobby:costume/info/villager_jungle_fletcher

execute if score @s[tag=ul_villager_taiga_armorer] costume matches 7327 run function lobby:costume/villager_taiga_armorer
execute if score @s[tag=!ul_villager_taiga_armorer] costume matches 7327 run function lobby:costume/info/villager_taiga_armorer

execute if score @s[tag=ul_villager_desert_librarian] costume matches 7427 run function lobby:costume/villager_desert_librarian
execute if score @s[tag=!ul_villager_desert_librarian] costume matches 7427 run function lobby:costume/info/villager_desert_librarian

execute if score @s[tag=ul_villager_swamp_nitwit] costume matches 7527 run function lobby:costume/villager_swamp_nitwit
execute if score @s[tag=!ul_villager_swamp_nitwit] costume matches 7527 run function lobby:costume/info/villager_swamp_nitwit

execute if score @s[tag=ul_villager_snowy_cartographer] costume matches 7627 run function lobby:costume/villager_snowy_cartographer
execute if score @s[tag=!ul_villager_snowy_cartographer] costume matches 7627 run function lobby:costume/info/villager_snowy_cartographer

execute if score @s[tag=ul_villager_savanna_weaponsmith] costume matches 7727 run function lobby:costume/villager_savanna_weaponsmith
execute if score @s[tag=!ul_villager_savanna_weaponsmith] costume matches 7727 run function lobby:costume/info/villager_savanna_weaponsmith

execute if score @s costume matches 999 run function lobby:costume/giant_spider

execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

