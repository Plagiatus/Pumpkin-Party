#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_witch] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Witch Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_witch] run function lobby:costume/already_unlocked
function lobby:costume/witch
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/witch