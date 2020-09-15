tag @s[tag=!leftPcArea] remove enteredPcArea
clear @s[tag=!leftPcArea] music_disc_mellohi
xp set @s[tag=!leftPcArea] 0 levels


execute unless score @s[tag=!leftPcArea] costume matches 1024 run function lobby:costume/basket
execute if score @s[tag=!leftPcArea] costume matches 1024 run function lobby:costume/full_basket
tag @s add leftPcArea