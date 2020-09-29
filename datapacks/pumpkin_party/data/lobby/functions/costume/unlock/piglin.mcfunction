#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_piglin] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Piglin Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_piglin] run function lobby:costume/already_unlocked
function lobby:costume/piglin
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/piglin