tag @s[type=player] add has_costume

execute if score @s costume matches 467 run function lobby:costume/illusioner

execute if score @s costume matches 468 run function lobby:costume/donkey
execute if score @s costume matches 469 run function lobby:costume/donkey_back
execute if score @s costume matches 470 run function lobby:costume/villager_desert_librarian


execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume
playsound minecraft:item.armor.equip_leather master @a 
