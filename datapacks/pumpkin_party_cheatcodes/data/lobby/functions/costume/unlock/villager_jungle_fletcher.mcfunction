#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_villager_jungle_fletcher] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Fletcher Villager Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_villager_jungle_fletcher] run function lobby:costume/already_unlocked
function lobby:costume/villager_jungle_fletcher
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/villager_jungle_fletcher