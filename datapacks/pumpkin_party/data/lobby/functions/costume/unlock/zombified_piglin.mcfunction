#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_zombified_piglin] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Zombified Piglin Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_zombified_piglin] run function lobby:costume/already_unlocked
function lobby:costume/zombified_piglin
tag @s add valid_password

advancement revoke @s only lobby:unlocked/zombified_piglin