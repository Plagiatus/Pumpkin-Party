tag @s[type=player] add has_costume

execute if score @s[tag=ul_bat] costume matches 2006 run function lobby:costume/bat
execute if score @s[tag=!ul_bat] costume matches 2006 run function lobby:costume/info/bat
execute if score @s costume matches 2010 run function lobby:costume/jack_o_lantern
execute if score @s[tag=ul_frog_orange] costume matches 2020 run function lobby:costume/frog_orange
execute if score @s[tag=!ul_frog_orange] costume matches 2020 run function lobby:costume/info/frog_orange
execute if score @s[tag=ul_squid] costume matches 2024 run function lobby:costume/squid
execute if score @s[tag=!ul_squid] costume matches 2024 run function lobby:costume/info/squid
execute if score @s[tag=ul_wolf] costume matches 2029 run function lobby:costume/wolf
execute if score @s[tag=!ul_wolf] costume matches 2029 run function lobby:costume/info/wolf

execute if score @s[tag=ul_phantom] costume matches 2106 run function lobby:costume/phantom
execute if score @s[tag=!ul_phantom] costume matches 2106 run function lobby:costume/info/phantom
execute if score @s[tag=ul_headless_horseman] costume matches 2110 run function lobby:costume/headless_horseman
execute if score @s[tag=!ul_headless_horseman] costume matches 2110 run function lobby:costume/info/headless_horseman
execute if score @s[tag=ul_frog_white] costume matches 2120 run function lobby:costume/frog_white
execute if score @s[tag=!ul_frog_white] costume matches 2120 run function lobby:costume/info/frog_white
execute if score @s[tag=ul_glow_squid] costume matches 2124 run function lobby:costume/glow_squid
execute if score @s[tag=!ul_glow_squid] costume matches 2124 run function lobby:costume/info/glow_squid
execute if score @s[tag=ul_fox] costume matches 2129 run function lobby:costume/fox
execute if score @s[tag=!ul_fox] costume matches 2129 run function lobby:costume/info/fox

execute if score @s[tag=ul_ender_dragon] costume matches 2206 run function lobby:costume/ender_dragon
execute if score @s[tag=!ul_ender_dragon] costume matches 2206 run function lobby:costume/info/ender_dragon
execute if score @s[tag=ul_white_pumpkin] costume matches 2210 run function lobby:costume/white_pumpkin
execute if score @s[tag=!ul_white_pumpkin] costume matches 2210 run function lobby:costume/info/white_pumpkin
execute if score @s[tag=ul_frog_green] costume matches 2220 run function lobby:costume/frog_green
execute if score @s[tag=!ul_frog_green] costume matches 2220 run function lobby:costume/info/frog_green
execute if score @s[tag=ul_turtle] costume matches 2224 run function lobby:costume/turtle
execute if score @s[tag=!ul_turtle] costume matches 2224 run function lobby:costume/info/turtle
execute if score @s[tag=ul_snow_fox] costume matches 2229 run function lobby:costume/snow_fox
execute if score @s[tag=!ul_snow_fox] costume matches 2229 run function lobby:costume/info/snow_fox


execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume

