tag @s[type=player] add has_costume

execute if score @s costume matches 568 run function lobby:costume/mule
execute if score @s costume matches 569 run function lobby:costume/mule_back
execute if score @s costume matches 570 run function lobby:costume/villager_swamp

execute if score @s costume matches 668 run function lobby:costume/zombie_horse
execute if score @s costume matches 669 run function lobby:costume/zombie_horse_back
execute if score @s costume matches 670 run function lobby:costume/villager_snowy_cartographer

execute if score @s costume matches 770 run function lobby:costume/villager_savanna_weaponsmith

execute if score @s costume matches 999 run function lobby:costume/giant_spider

execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume
playsound minecraft:item.armor.equip_leather master @a 
