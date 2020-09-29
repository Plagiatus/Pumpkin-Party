#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_piglin_chan] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Piglin Chan Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_piglin_chan] run function lobby:costume/already_unlocked
function lobby:costume/piglin_chan
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/piglin_chan