#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_phantom] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Phantom Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_phantom] run function lobby:costume/already_unlocked
function lobby:costume/phantom
tag @s add valid_password

advancement revoke @s only lobby:lab/unlock/phantom