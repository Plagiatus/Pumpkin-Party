#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_swamp_nitwit] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Swamp Villager Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_swamp_nitwit] run function lobby:costume/already_unlocked
function lobby:costume/villager_swamp_nitwit
tag @s add valid_password

advancement revoke @s only lobby:unlocked/villager_swamp_nitwit