tag @s[type=player] add has_costume
		
execute if score @s costume matches 121 run function lobby:costume/gold_ghost

execute if score @s costume matches 141 run function lobby:costume/fox
execute if score @s costume matches 142 run function lobby:costume/headless_horseman
execute if score @s costume matches 143 run function lobby:costume/husk
execute if score @s costume matches 144 run function lobby:costume/stray
execute if score @s costume matches 145 run function lobby:costume/piglin
execute if score @s costume matches 166 run function lobby:costume/trader_llama_beige
execute if score @s costume matches 167 run function lobby:costume/vindicator
execute if score @s costume matches 168 run function lobby:costume/horse_white
execute if score @s costume matches 169 run function lobby:costume/horse_white_back
execute if score @s costume matches 170 run function lobby:costume/wandering_trader

execute store result score @s[type=player] tmp run clear @s orange_dye 0
execute if score @s[type=player] tmp matches 0 run function lobby:costume/basket
tag @s[type=player] add in_costume
tag @s[type=player] add got_costume
playsound minecraft:item.armor.equip_leather master @a 
