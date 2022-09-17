tag @s[type=player] add has_costume

execute if score @s costume matches 2010 run function lobby:costume/jack_o_lantern
execute if score @s[tag=ul_wolf] costume matches 2029 run function lobby:costume/wolf
execute if score @s[tag=!ul_wolf] costume matches 2029 run function lobby:costume/info/wolf

execute if score @s[tag=ul_phantom] costume matches 2106 run function lobby:costume/phantom
execute if score @s[tag=!ul_phantom] costume matches 2106 run function lobby:costume/info/phantom
execute if score @s[tag=ul_headless_horseman] costume matches 2110 run function lobby:costume/headless_horseman
execute if score @s[tag=!ul_headless_horseman] costume matches 2110 run function lobby:costume/info/headless_horseman
execute if score @s[tag=ul_fox] costume matches 2129 run function lobby:costume/fox
execute if score @s[tag=!ul_fox] costume matches 2129 run function lobby:costume/info/fox


execute if score @s[tag=ul_white_pumpkin] costume matches 2210 run function lobby:costume/white_pumpkin
execute if score @s[tag=!ul_white_pumpkin] costume matches 2210 run function lobby:costume/info/white_pumpkin
execute if score @s[tag=ul_snow_fox] costume matches 2229 run function lobby:costume/snow_fox
execute if score @s[tag=!ul_snow_fox] costume matches 2229 run function lobby:costume/info/snow_fox


execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

