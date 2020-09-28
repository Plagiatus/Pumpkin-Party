#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_taiga_armorer] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Armorer Villager Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_taiga_armorer] run function lobby:costume/already_unlocked
function lobby:costume/villager_taiga_armorer
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/villager_taiga_armorer