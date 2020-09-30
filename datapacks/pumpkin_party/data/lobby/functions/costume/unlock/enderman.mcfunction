#First Time 
tellraw @s[tag=!tmp_all_costumes,tag=!ul_enderman] ["",{"text":"You successfully unlocked: ","color":"gold"},{"text":"\"Enderman Costume\""}]

#Every other time
execute as @s[tag=!tmp_all_costumes,tag=ul_enderman] run function lobby:costume/already_unlocked
function lobby:costume/enderman
tag @s add valid_password

advancement revoke @s only lobby:unlocked/enderman