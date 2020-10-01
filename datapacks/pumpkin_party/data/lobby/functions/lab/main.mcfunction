setblock 391 61 490 chipped_anvil[facing=east]
setblock 390 61 490 chipped_anvil[facing=west]
setblock 392 61 490 chipped_anvil[facing=west]

xp set @s 1 levels
clear @s[tag=!enteredPcArea] orange_dye
clear @s[tag=!enteredPcArea] red_dye
give @s[tag=!enteredPcArea] music_disc_mellohi{CustomModelData:1}
tag @s add enteredPcArea
tag @s remove leftPcArea

execute if score @s dropped_floppy matches 1.. run function lobby:lab/give_player_disc

#Input detection
execute if entity @s[tag=entered_password,tag=valid_password] run function lobby:lab/passwords/accept_password
execute if entity @s[tag=entered_password,tag=!valid_password] run function lobby:lab/passwords/deny_password