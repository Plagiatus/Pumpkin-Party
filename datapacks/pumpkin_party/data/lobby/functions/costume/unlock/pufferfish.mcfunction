#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_pufferfish] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Pufferfish Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_pufferfish] run function lobby:costume/already_unlocked
function lobby:costume/pufferfish
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/pufferfish