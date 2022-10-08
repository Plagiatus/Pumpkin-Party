tag @s[type=player] add has_costume
execute if score @s costume matches 0 run function lobby:costume/none
execute if score @s costume matches 2 run function lobby:costume/creeper
execute if score @s[tag=ul_enderman] costume matches 5 run function lobby:costume/enderman
execute if score @s[tag=!ul_enderman] costume matches 5 run function lobby:costume/info/enderman
execute if score @s[tag=ul_shulker] costume matches 7 run function lobby:costume/shulker
execute if score @s[tag=!ul_shulker] costume matches 7 run function lobby:costume/info/shulker
execute if score @s[tag=ul_strider] costume matches 13 run function lobby:costume/strider
execute if score @s[tag=!ul_strider] costume matches 13 run function lobby:costume/info/strider
execute if score @s[tag=ul_wither] costume matches 14 run function lobby:costume/wither
execute if score @s[tag=!ul_wither] costume matches 14 run function lobby:costume/info/wither
execute if score @s costume matches 15 run function lobby:costume/ghast
execute if score @s costume matches 16 run function lobby:costume/blaze
execute if score @s[tag=ul_warden] costume matches 19 run function lobby:costume/warden
execute if score @s[tag=!ul_warden] costume matches 19 run function lobby:costume/info/warden
execute if score @s[tag=ul_goat] costume matches 25 run function lobby:costume/goat
execute if score @s[tag=!ul_goat] costume matches 25 run function lobby:costume/info/goat
execute if score @s[tag=ul_arch_illager] costume matches 26 run function lobby:costume/arch_illager
execute if score @s[tag=!ul_arch_illager] costume matches 26 run function lobby:costume/info/arch_illager
execute if score @s[tag=ul_bee] costume matches 32 run function lobby:costume/bee
execute if score @s[tag=!ul_bee] costume matches 32 run function lobby:costume/info/bee


execute store result score @s[type=player,tag=!costume_sneak] tmp run clear @s orange_dye 0
execute if score @s[type=player,tag=!costume_sneak] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume
