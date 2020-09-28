tag @s[type=player] add has_costume

execute if score @s[tag=ul_illusioner] costume matches 467 run function lobby:costume/illusioner
execute if score @s[tag=!ul_illusioner] costume matches 467 run function lobby:costume/info/illusioner

execute if score @s[tag=ul_donkey] costume matches 468 run function lobby:costume/donkey
execute if score @s[tag=ul_donkey] costume matches 469 run function lobby:costume/donkey_back
execute if score @s[tag=!ul_donkey] costume matches 468..469 run function lobby:costume/info/donkey
execute if score @s[tag=ul_villager_desert_librarian] costume matches 470 run function lobby:costume/villager_desert_librarian
execute if score @s[tag=!ul_villager_desert_librarian] costume matches 470 run function lobby:costume/info/villager_desert_librarian

execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

