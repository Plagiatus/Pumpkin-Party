#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_evocation_fang] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Evocation Fang Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_evocation_fang] run function lobby:costume/already_unlocked
function lobby:costume/evocation_fang
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/evocation_fang