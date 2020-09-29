#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_piglin_brute] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Piglin Brute Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_piglin_brute] run function lobby:costume/already_unlocked
function lobby:costume/piglin_brute
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/piglin_brute