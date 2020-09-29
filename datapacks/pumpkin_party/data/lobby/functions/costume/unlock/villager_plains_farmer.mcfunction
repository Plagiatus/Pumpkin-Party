#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_plains_farmer] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Farmer Villager Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_plains_farmer] run function lobby:costume/already_unlocked
function lobby:costume/villager_plains_farmer
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/villager_plains_farmer